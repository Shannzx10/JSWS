(import ./server/config :as config)
(import ./server/server :as server)

(defn main [& args]
  (try
    (server/start-server)
    ([err]
      (print "Server error:" err)
      (os/exit 1))))

(if (= (dyn :current-file) (dyn :source))
  (main))