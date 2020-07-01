
class UserdupsController < ApplicationController 
	# before_action :set_userdup, only: [:show,:edit,:update]
	def verify
		@userdup = Userdup.new(userdup_params)
		if @userdup.save 
				session[:userdup_id] = @userdup.id
				flash[:notice] = "Check for otp"

				render "new_otp"
		else
			render "new"
		end
	end



	def resend
	end



	def show 
	end

	def edit 
	end

	def new 
		@userdup = Userdup.new
	end

	def update

	end

	private 

	def set_userdup
		@userdup = Userdup.find(params[:id])
	end

	def userdup_params
		params.require(:userdup).permit(:name,:email,:phone_number,:country_code)
	end

	

end