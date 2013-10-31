require 'spec_helper'
require 'factory_girl'

<<<<<<< HEAD
describe AnswersController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
=======

# describe AnswersController do
#   describe "GET #index" do
#     it "responds successfully with an HTTP 200 status code" do
#       get :index
#       expect(response).to be_success
#       expect(response.status).to eq(200)
#     end
#   end
>>>>>>> 326329f35c79b010be3ab9ba108aa603869f75dc

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      answer = FactoryGirl.create(:answer)
      get :show, id: answer, id: question
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe "GET #edit" do
    it "responds successfully with an HTTP 200 status code" do
      answer = FactoryGirl.create(:answer)
      get :edit, id: answer, id: question
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
  describe "GET #destroy" do
    it "responds successfully with an HTTP 200 status code" do
      answer = FactoryGirl.create(:answer)
      get :destroy, id: answer, id: question
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

<<<<<<< HEAD
end
=======
# end

>>>>>>> 326329f35c79b010be3ab9ba108aa603869f75dc
