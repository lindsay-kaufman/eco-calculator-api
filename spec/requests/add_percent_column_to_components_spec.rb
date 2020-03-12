require 'rails_helper'

RSpec.describe "AddPercentColumnToComponents", type: :request do
  describe "GET /add_percent_column_to_components" do
    it "works! (now write some real specs)" do
      get add_percent_column_to_components_path
      expect(response).to have_http_status(200)
    end
  end
end
