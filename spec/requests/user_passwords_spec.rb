require 'rails_helper'

RSpec.describe "UserPasswords", type: :request do
  describe "GET /user_passwords" do
    it "works! (now write some real specs)" do
      get user_passwords_path
      expect(response).to have_http_status(200)
    end
  end
end
