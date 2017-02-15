require 'rails_helper'

RSpec.describe ChangelogsController, type: :controller do
	describe "GET #index with offset and limit" do
	    it "responds successfully with an HTTP 200 status code" do
	      get :index, offset: 0, limit: 10
	      expect(response).to be_success
	      expect(response).to have_http_status(200)
	    end

	    it "renders the index template" do
	    	get :index, offset: 0, limit: 10
	    	expect(response).to render_template("index")
	    end

	    it "should return data based on offset and limit" do
	    	user = User.new(email: "fake@fake.com", password: "password", password_confirmation: "password")
	    	user.save
	    	Changelog.create(obj_type: "Checkin", obj_id: 1, action: 1, time: Time.now, user_id: user.id, display: true)
	    	Changelog.create(obj_type: "Checkin", obj_id: 2, action: 1, time: Time.now, user_id: user.id, display: true)
	    	Changelog.create(obj_type: "Checkin", obj_id: 3, action: 1, time: Time.now, user_id: user.id, display: true)
	    	get :index, offset: 0, limit: 2
	    	assigns(:logs).size.should eq(2)
	    	get :index, offset: 0, limit: 10
	    	assigns(:logs).size.should eq(3)
	    end

	    it "should return records which display = true" do
	    	user = User.new(email: "fake@fake.com", password: "password", password_confirmation: "password")
	    	user.save
	    	Changelog.create(obj_type: "Checkin", obj_id: 1, action: 1, time: Time.now, user_id: user.id, display: true)
	    	Changelog.create(obj_type: "Checkin", obj_id: 2, action: 1, time: Time.now, user_id: user.id, display: false)
	    	Changelog.create(obj_type: "Checkin", obj_id: 3, action: 1, time: Time.now, user_id: user.id, display: false)
	    	get :index, offset: 0, limit: 2
	    	assigns(:logs).size.should eq(1)
	    	get :index, offset: 0, limit: 10
	    	assigns(:logs).size.should eq(1)
	    end
	end
end
