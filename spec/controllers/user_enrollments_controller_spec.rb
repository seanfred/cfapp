# require 'spec_helper'
# require 'factory_girl'


#   describe UserEnrollmentsController do
#     describe "GET #index" do
#       it "responds successfully with an HTTP 200 status code" do
#         get :index
#         expect(response).to be_success
#         expect(response.status).to eq(200)
#       end
#     end

<<<<<<< HEAD
    describe "GET #new" do
      it "responds successfully with an HTTP 200 status code" do
        get :new
        sign_in @user
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
    end
=======
#     describe "GET #new" do
#       it "responds successfully with an HTTP 200 status code" do
#         get :new
#         expect(response).to be_success
#         expect(response.status).to eq(200)
#       end
#     end
>>>>>>> 627aaf7ce8d485d31ae5f7f134757b45c91bd3b5

#     describe "GET #show" do
#       it "responds successfully with an HTTP 200 status code" do
#         user_enrollment = FactoryGirl.create(:user_enrollment)
#         get :show, id: user_enrollment
#         expect(response).to be_success
#         expect(response.status).to eq(200)
#       end
#     end

#     describe "GET #edit" do
#       it "responds successfully with an HTTP 200 status code" do
#         user_enrollment = FactoryGirl.create(:user_enrollment)
#         get :edit, id: user_enrollment
#         expect(response).to be_success
#         expect(response.status).to eq(200)
#       end
#     end
#     describe "GET #destroy" do
#       it "responds successfully with an HTTP 200 status code" do
#         user_enrollment = FactoryGirl.create(:user_enrollment)
#         delete :destroy, id: user_enrollment
#         expect(response).should be_redirect
#         expect(response.status).to eq(302)
#       end
#     end
# end
