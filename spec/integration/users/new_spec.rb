require 'rails_helper'

describe "GET /users/new", type: :request do

  it "allows a user to sign up" do
    get "/users/new"
    expect(response).to be_success
    expect(response.body).to include("Sign up")
  end

end
