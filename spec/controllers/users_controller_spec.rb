require 'spec_helper'

describe UsersController do

    describe "GET 'new'" do
    it "renders the user new page" do
      user = FactoryGirl.create(:user)
      get 'new', :id => user.id
      response.should render_template 'new'
      response.should be_success
    end
  end

    describe "POST 'destroy'" do
      it "destroy sessions" do
        post 'destroy'
        session[:user_id].should == nil
        response.should redirect_to root_url
      end
    end
    
end
