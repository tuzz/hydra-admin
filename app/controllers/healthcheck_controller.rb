class HealthcheckController < ApplicationController
  def get
    json(status: "ok")
  end
end
