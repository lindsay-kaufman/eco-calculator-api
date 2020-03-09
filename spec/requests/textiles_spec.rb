require 'rails_helper'

RSpec.describe "Textiles", type: :request do
  describe "GET /textiles" do
    it "works! (now write some real specs)" do
      get textiles_path
      expect(response).to have_http_status(200)
    end
  end
end
