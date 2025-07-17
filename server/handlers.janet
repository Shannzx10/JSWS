(import spork/path)
(import ./config :as config)
(import ./utils :as utils)

(defn handle-404 []
  (utils/make-response "404 Not Found"
                      {"Content-Type" "text/html; charset=utf-8"}
                      ```
                      <!DOCTYPE html>
                      <html lang="id">
                      <head>
                          <meta charset="UTF-8">
                          <meta name="viewport" content="width=device-width, initial-scale=1.0">
                          <title>404 - Halaman Tidak Ditemukan</title>
                          <script src="https://cdn.tailwindcss.com"></script>
                      </head>
                      <body class="bg-gray-100 min-h-screen flex items-center justify-center">
                          <div class="text-center">
                              <h1 class="text-6xl font-bold text-gray-800 mb-4">404</h1>
                              <p class="text-xl text-gray-600 mb-8">Halaman tidak ditemukan</p>
                              <a href="/" class="bg-blue-500 hover:bg-blue-600 text-white px-6 py-3 rounded-lg transition duration-200">
                                  Kembali ke Beranda
                              </a>
                          </div>
                      </body>
                      </html>
                      ```))

(defn handle-500 []
  (utils/make-response "500 Internal Server Error"
                      {"Content-Type" "text/html; charset=utf-8"}
                      ```
                      <!DOCTYPE html>
                      <html lang="id">
                      <head>
                          <meta charset="UTF-8">
                          <meta name="viewport" content="width=device-width, initial-scale=1.0">
                          <title>500 - Server Error</title>
                          <script src="https://cdn.tailwindcss.com"></script>
                      </head>
                      <body class="bg-red-50 min-h-screen flex items-center justify-center">
                          <div class="text-center">
                              <h1 class="text-6xl font-bold text-red-600 mb-4">500</h1>
                              <p class="text-xl text-red-700 mb-8">Terjadi kesalahan pada server</p>
                              <a href="/" class="bg-red-500 hover:bg-red-600 text-white px-6 py-3 rounded-lg transition duration-200">
                                  Kembali ke Beranda
                              </a>
                          </div>
                      </body>
                      </html>
                      ```))

(defn handle-home []
  (let [filepath (path/join config/PUBLIC_DIR "index.html")]
    (if (utils/file-exists? filepath)
      (let [content (utils/read-file filepath)]
        (if content
          (utils/make-response "200 OK"
                              {"Content-Type" "text/html; charset=utf-8"}
                              content)
          (handle-500)))
      (handle-404))))

(defn handle-static [path]
  (let [filepath (path/join config/PUBLIC_DIR (string/slice path 1))
        clean-path (path/normalize filepath)]
    
    (if (not (string/has-prefix? clean-path config/PUBLIC_DIR))
      (utils/make-response "403 Forbidden"
                          {"Content-Type" "text/plain"}
                          "Forbidden")
      
      (if (utils/file-exists? clean-path)
        (let [content (utils/read-file clean-path)]
          (if content
            (let [mime-type (utils/get-mime-type clean-path)]
              (utils/make-response "200 OK"
                                  {"Content-Type" mime-type}
                                  content))
            (handle-500)))
        (handle-404)))))

(defn handle-request [request]
  (let [parsed (utils/parse-request request)
        method (get parsed :method "GET")
        path (get parsed :path "/")]
    
    (utils/log-request method path)
    
    (cond
      (not= method "GET")
      (utils/make-response "405 Method Not Allowed"
                          {"Content-Type" "text/plain"}
                          "Method not allowed")

      (= path "/")
      (handle-home)

      (handle-static path))))