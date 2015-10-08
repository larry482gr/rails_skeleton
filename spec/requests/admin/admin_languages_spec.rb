require 'rails_helper'

RSpec.describe "Admin::Languages", type: :request do
  describe "GET /admin_languages" do
    it "works! (now write some real specs)" do
      get admin_languages_path
      expect(response).to have_http_status(200)
    end
  end
end
