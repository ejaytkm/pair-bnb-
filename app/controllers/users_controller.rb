class UsersController < ApplicationController
	def new 
	end 

	def create
	ActionController::Parameters.permit_all_parameters = true
	permit = ActionController::Parameters.new(params[:user])	
	@user = User.new(params[:user])
	# @user.save!
	end
end
