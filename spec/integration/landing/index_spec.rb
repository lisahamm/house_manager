require 'rails_helper'

describe "GET /", type: :request do
  it "should show the landing page" do
    get "/"
    expect(response).to be_success
    expect(response.body).to include("House Manager")
  end
end
