require "bundler/setup"

Bundler.require

module Hydra
  class Admin < Sinatra::Base
    get "/" do
      "Hello, world!"
    end
  end
end
