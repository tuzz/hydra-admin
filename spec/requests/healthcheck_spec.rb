RSpec.describe "/healthcheck" do
  include RequestHelper

  it "responds with a healthcheck" do
    get "/healthcheck"

    expect(body).to eq("status" => "ok")
    expect(json_content_type?).to eq(true)
  end
end
