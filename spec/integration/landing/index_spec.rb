require 'rails_helper'

describe "GET /", type: :request do
  it "should show the landing page" do
    get "/"
    expect(response.status).to eq(200)
    expect(response.body).to include("House Manager")
  end
end
