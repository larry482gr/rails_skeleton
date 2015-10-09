require "rails_helper"

RSpec.describe UserProfilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_profiles").to route_to("user_profiles#index")
    end

    it "routes to #show" do
      expect(:get => "/user_profiles/1").to route_to("user_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_profiles/1/edit").to route_to("user_profiles#edit", :id => "1")
    end
    
    it "routes to #update via PUT" do
      expect(:put => "/user_profiles/1").to route_to("user_profiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_profiles/1").to route_to("user_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_profiles/1").to route_to("user_profiles#destroy", :id => "1")
    end

  end
end
