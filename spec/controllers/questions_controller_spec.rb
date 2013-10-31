require 'spec_helper'
require 'factory_girl'

describe QuestionsController do

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
      question = FactoryGirl.create(:question)
      get :show, id: question
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "GET #edit" do
    it "responds successfully with an HTTP 200 status code" do
      question = FactoryGirl.create(:question)
      get :edit, id: question
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
  describe "GET #destroy" do
    it "responds successfully with an HTTP 200 status code" do
      question = FactoryGirl.create(:question)
      get :destroy, id: question
      expect(response).should be_redirect
      expect(response.status).to eq(302)
    end
  end

end
