require "rails_helper"

RSpec.describe AddPercentColumnToComponentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/add_percent_column_to_components").to route_to("add_percent_column_to_components#index")
    end


    it "routes to #show" do
      expect(:get => "/add_percent_column_to_components/1").to route_to("add_percent_column_to_components#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/add_percent_column_to_components").to route_to("add_percent_column_to_components#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/add_percent_column_to_components/1").to route_to("add_percent_column_to_components#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/add_percent_column_to_components/1").to route_to("add_percent_column_to_components#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/add_percent_column_to_components/1").to route_to("add_percent_column_to_components#destroy", :id => "1")
    end

  end
end
