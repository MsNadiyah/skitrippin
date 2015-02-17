require 'rails_helper'

# RSpec.describe ResortsController, :type => :controller do
RSpec.describe "Resorts API", :type => :request do

  # Create an alias to simplify how things are referenced

  # Tests delivery of a JSON list of events
  it "returns a list of resorts" do 
    FactoryGirl.create_list(:resort, 10)

    get "/api/resorts"

    expect(response).to have_http_status 200
    resorts = JSON.parse(response.body)
    expect(resorts.count).to eq(10)
  end

  # Tests JSON delivery of a single event
  it "returns a specific resort" do 
    resort = FactoryGirl.create(:resort)

    get "/api/resorts/#{resort.id}"

    expect(response).to have_http_status 200
    expect(response.body).to eq (resort.to_json)
  end

  # Test creation of a new resort
  # it "creates a new resort" do
  #   resort_attributes = { "resort" => FactoryGirl.attributes_for(:resort) }.to_json

  #   post "/api/resorts", resort_attributes, request_headers
  # end  

end
