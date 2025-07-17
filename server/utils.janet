(import spork/path)
(import ./config :as config)

(defn get-mime-type [filepath]
  (let [ext (path/ext filepath)]
    (get config/mime-types ext "text/plain")))

(defn read-file [filepath]
  (try
    (slurp filepath)
    ([err]
      (print "Error reading file:" filepath err)
      nil)))

(defn file-exists? [filepath]
  (try
    (do (os/stat filepath) true)
    ([err] false)))

(defn make-response [status headers body]
  (def body-str (if body (string body) ""))
  (def content-length (length body-str))
  (def header-lines @[])
  (array/push header-lines (string "HTTP/1.1 " status))
  (array/push header-lines (string "Content-Length: " content-length))
  (array/push header-lines "Connection: close")
  
  (each [k v] (pairs headers)
    (array/push header-lines (string k ": " v)))
  
  (string (string/join header-lines "\r\n") "\r\n\r\n" body-str))

(defn parse-request [request]
  (if (and request (> (length request) 0))
    (let [lines (string/split "\r\n" request)
          request-line (first lines)]
      (if request-line
        (let [parts (string/split " " request-line)]
          {:method (get parts 0 "GET")
           :path (get parts 1 "/")
           :version (get parts 2 "HTTP/1.1")})
        {:method "GET" :path "/" :version "HTTP/1.1"}))
    {:method "GET" :path "/" :version "HTTP/1.1"}))

(defn log-request [method path]
  (print (string/format "[%s] %s %s" 
                       (os/strftime "%Y-%m-%d %H:%M:%S" (os/time))
                       method path)))