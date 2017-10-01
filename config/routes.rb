module Hydra
  class Admin < Sinatra::Base
    get("/healthcheck") { HealthcheckController.get(params, self) }
  end
end
