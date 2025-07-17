(declare-project
  :name "janet-web-server"
  :description "A lightweight web server built with Janet for serving static files"
  :version "1.0.0"
  :author "Your Name <your.email@example.com>"
  :license "MIT"
  :url "https://github.com/username/janet-web-server"
  :repo "git+https://github.com/username/janet-web-server.git"
  
  :dependencies [
    "spork"
  ]
  
  :dev-dependencies [
    "judge"  # untuk testing
  ]
  
  :scripts {
    :start "janet main.janet"
    :dev "janet -l main.janet"
    :test "janet test/run-tests.janet"
    :build "jpm build"
    :clean "jpm clean"
    :install "jpm install"
  })

(declare-executable
  :name "janet-web-server"
  :entry "main.janet"
  :install true)

(declare-source
  :source ["server" "public"])