require 'spec_helper'
require 'factory_girl'

describe OfferingsController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      offering = FactoryGirl.create(:offering)
      get :show, id: offering
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "GET #edit" do
    it "responds successfully with an HTTP 200 status code" do
      offering = FactoryGirl.create(:offering)
      get :edit, id: offering
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
  describe "GET #destroy" do
    it "responds successfully with an HTTP 302 status code" do
      offering = FactoryGirl.create(:offering)
      delete :destroy, id: offering
      response.should be_redirect
      expect(response.status).to eq(302)
    end
  end

end
