# Test runner untuk Janet Web Server
(import ../server/utils :as utils)
(import ../server/config :as config)

# Simple test framework
(var test-count 0)
(var failed-count 0)

(defn test [name test-fn]
  (set test-count (+ test-count 1))
  (print (string/format "🧪 Running test: %s" name))
  (try
    (test-fn)
    (print (string/format "✅ PASSED: %s" name))
    ([err]
      (set failed-count (+ failed-count 1))
      (print (string/format "❌ FAILED: %s - %s" name err)))))

(defn assert [condition message]
  (if (not condition)
    (error message)))

# Test utilities
(test "parse-request with valid input"
  (fn []
    (def result (utils/parse-request "GET /index.html HTTP/1.1\r\n\r\n"))
    (assert (= (get result :method) "GET") "Method should be GET")
    (assert (= (get result :path) "/index.html") "Path should be /index.html")
    (assert (= (get result :version) "HTTP/1.1") "Version should be HTTP/1.1")))

(test "parse-request with empty input"
  (fn []
    (def result (utils/parse-request ""))
    (assert (= (get result :method) "GET") "Default method should be GET")
    (assert (= (get result :path) "/") "Default path should be /")))

(test "get-mime-type function"
  (fn []
    (assert (= (utils/get-mime-type "test.html") "text/html") "HTML mime type")
    (assert (= (utils/get-mime-type "test.css") "text/css") "CSS mime type")
    (assert (= (utils/get-mime-type "test.js") "application/javascript") "JS mime type")
    (assert (= (utils/get-mime-type "test.unknown") "text/plain") "Unknown mime type should default to text/plain")))

(test "make-response function"
  (fn []
    (def response (utils/make-response "200 OK" {"Content-Type" "text/html"} "Hello World"))
    (assert (string/find "HTTP/1.1 200 OK" response) "Should contain status line")
    (assert (string/find "Content-Type: text/html" response) "Should contain content type")
    (assert (string/find "Hello World" response) "Should contain body")))

(test "config constants"
  (fn []
    (assert (= config/PORT "4000") "Default port should be 4000")
    (assert (= config/HOST "127.0.0.1") "Default host should be 127.0.0.1")
    (assert (= config/PUBLIC_DIR "public") "Default public dir should be public")))

# Run all tests
(print "\n🚀 Starting Janet Web Server Tests...")
(print "=" (string/repeat "=" 50))

# Add more tests here...

# Test summary
(print "=" (string/repeat "=" 50))
(print (string/format "📊 Test Summary: %d total, %d passed, %d failed" 
                     test-count (- test-count failed-count) failed-count))

(if (> failed-count 0)
  (do
    (print "❌ Some tests failed!")
    (os/exit 1))
  (do
    (print "✅ All tests passed!")
    (os/exit 0)))