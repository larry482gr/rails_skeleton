require "rails_helper"

RSpec.describe UserPasswordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_passwords").to route_to("user_passwords#index")
    end

    it "routes to #new" do
      expect(:get => "/user_passwords/new").to route_to("user_passwords#new")
    end

    it "routes to #show" do
      expect(:get => "/user_passwords/1").to route_to("user_passwords#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_passwords/1/edit").to route_to("user_passwords#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_passwords").to route_to("user_passwords#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_passwords/1").to route_to("user_passwords#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_passwords/1").to route_to("user_passwords#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_passwords/1").to route_to("user_passwords#destroy", :id => "1")
    end

  end
end
