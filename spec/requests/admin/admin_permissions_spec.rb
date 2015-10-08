require 'rails_helper'

RSpec.describe "Admin::Permissions", type: :request do
  describe "GET /admin_permissions" do
    it "works! (now write some real specs)" do
      get admin_permissions_path
      expect(response).to have_http_status(200)
    end
  end
end
