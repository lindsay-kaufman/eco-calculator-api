require "rails_helper"

RSpec.describe TextilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/textiles").to route_to("textiles#index")
    end


    it "routes to #show" do
      expect(:get => "/textiles/1").to route_to("textiles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/textiles").to route_to("textiles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/textiles/1").to route_to("textiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/textiles/1").to route_to("textiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/textiles/1").to route_to("textiles#destroy", :id => "1")
    end

  end
end
