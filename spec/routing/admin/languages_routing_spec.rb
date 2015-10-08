require "rails_helper"

RSpec.describe Admin::LanguagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/languages").to route_to("admin/languages#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/languages/new").to route_to("admin/languages#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/languages/1").to route_to("admin/languages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/languages/1/edit").to route_to("admin/languages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/languages").to route_to("admin/languages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/languages/1").to route_to("admin/languages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/languages/1").to route_to("admin/languages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/languages/1").to route_to("admin/languages#destroy", :id => "1")
    end

  end
end
