require "rails_helper"

RSpec.describe PasswordQuestionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/password_questions").to route_to("password_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/password_questions/new").to route_to("password_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/password_questions/1").to route_to("password_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/password_questions/1/edit").to route_to("password_questions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/password_questions").to route_to("password_questions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/password_questions/1").to route_to("password_questions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/password_questions/1").to route_to("password_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/password_questions/1").to route_to("password_questions#destroy", :id => "1")
    end

  end
end
