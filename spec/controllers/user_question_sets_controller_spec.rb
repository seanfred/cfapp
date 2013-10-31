require 'spec_helper'
require 'factory_girl'

describe UserQuestionSetsController do
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
      user_question_set = FactoryGirl.create(:user_question_set)
      get :show, id: user_question_set
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "GET #edit" do
    it "responds successfully with an HTTP 200 status code" do
      user_question_set = FactoryGirl.create(:user_question_set)
      get :edit, id: user_question_set
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
  describe "GET #destroy" do
    it "responds successfully with an HTTP 200 status code" do
      user_question_set = FactoryGirl.create(:user_question_set)
      delete :destroy, id: user_question_set
      expect(response).should be_redirect
      expect(response.status).to eq(302)
    end
  end

end
