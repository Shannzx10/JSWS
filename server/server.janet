(import ./config :as config)
(import ./handlers :as handlers)

(defn handle-client [stream]
  (print "Client connected")
  (try
    (let [request (net/read stream 4096)]
      (print "Request received, length:" (if request (length request) "nil"))
      (when (and request (> (length request) 0))
        (let [request-str (if (bytes? request) (string request) request)
              response (handlers/handle-request request-str)]
          (print "Sending response...")
          (net/write stream response)
          (print "Response sent"))))
    ([err]
      (print "Error handling client:" err)))
  (print "Closing connection")
  (:close stream))

(defn start-server []
  (print "🚀 Starting Janet Web Server...")
  (print (string/format "📁 Serving files from: %s" config/PUBLIC_DIR))
  (print (string/format "🌐 Server running at http://%s:%s" config/HOST config/PORT))
  (print "Press Ctrl+C to stop")

  (print "Starting TCP server...")
  (def server (net/listen config/HOST config/PORT))
  (print "Server started successfully, waiting for connections...")

  (forever
    (try
      (do
        (def connection (net/accept server))
        (when connection
          (print "New connection accepted")
          (handle-client connection)))
      ([err]
        (print "Error accepting connection:" err)))))