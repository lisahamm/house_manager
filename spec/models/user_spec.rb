require 'rails_helper'

describe User do
  describe ".new" do
    it "creates a new user with an encrypted password" do
      user = User.new(email: "tobias@funke.com", password: "password")

      expect(user.valid?).to be true
      expect(user.save).to be true

      expect(user.email).to eq("tobias@funke.com")
      expect(user.password_digest).to be_present
    end

    it "does not save a user that has not given a password" do
      user = User.new(email: "tobias@funke.com")

      expect(user.valid?).to be false
      expect(user.save).to be false
    end
  end

  describe "#authenticate" do
    before do
      @user = User.create!(email: "dude@life.com", password: "password_yo")
    end

    it "is false when the password is incorrect" do
      expect(@user.authenticate("nottherightpassword")).to be false
    end

    it "is not false when the password is correct" do
      expect(@user.authenticate("password_yo")).not_to be false
    end
  end
end
