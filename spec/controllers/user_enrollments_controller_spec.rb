require 'spec_helper'
require 'factory_girl'


  describe UserEnrollmentsController do
    describe "GET #index" do
      it "responds successfully with an HTTP 200 status code" do
        get :index
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
    end

    describe "GET #new" do
      it "responds successfully with an HTTP 302 status code" do
        get :new
        response.should redirect_to(new_user_session_path)
        expect(response.status).to eq(302)
      end
    end

    describe "GET #show" do
      it "responds successfully with an HTTP 302 status code" do
        user_enrollment = FactoryGirl.create(:user_enrollment)
        get :show, id: user_enrollment
        response.should redirect_to(new_user_session_path)
        expect(response.status).to eq(302)
      end
    end

    describe "GET #edit" do
      it "responds successfully with an HTTP 302 status code" do
        user_enrollment = FactoryGirl.create(:user_enrollment)
        get :edit, id: user_enrollment
        response.should redirect_to(new_user_session_path)
        expect(response.status).to eq(302)
      end
    end
    describe "GET #destroy" do
      it "responds successfully with an HTTP 302 status code" do
        user_enrollment = FactoryGirl.create(:user_enrollment)
        delete :destroy, id: user_enrollment
        response.should be_redirect
        expect(response.status).to eq(302)
      end
    end
end
