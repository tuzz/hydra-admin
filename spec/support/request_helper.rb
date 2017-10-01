module RequestHelper
  include Rack::Test::Methods

  def app
    Rack::Builder.parse_file("config.ru").first
  end

  def body
    body = last_response.body
    json_content_type? ? JSON.parse(body) : body
  end

  def json_content_type?
    last_response.headers["Content-Type"] == "application/json"
  end
end
