require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"
require "./vietnamnom"

set :run, false
set :raise_errors, true

run Sinatra::Application
