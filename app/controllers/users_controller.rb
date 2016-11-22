class UsersController < ApplicationController
	before_action :require_login 

	def index 
		current_user.users
	end

	def new 
	end 

	def create
	ActionController::Parameters.permit_all_parameters = true
	permit = ActionController::Parameters.new(params[:user])	
	@user = User.new(params[:user])
	@user.save!
	byebug
	end
end
