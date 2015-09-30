require 'rails_helper'

RSpec.describe "PasswordQuestions", type: :request do
  describe "GET /password_questions" do
    it "works! (now write some real specs)" do
      get password_questions_path
      expect(response).to have_http_status(200)
    end
  end
end
