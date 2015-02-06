require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET about_us" do
    it "returns http success" do
      get :about_us
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET how_it_works" do
    it "returns http success" do
      get :how_it_works
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET resorts" do
    it "returns http success" do
      get :resorts
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET contact_us" do
    it "returns http success" do
      get :contact_us
      expect(response).to have_http_status(:success)
    end
  end

end
