class DemoController < ApplicationController
  

	before_action :check_sign_in

  layout false
  def index
  end

  private

  def check_sign_in
  	if !user_signed_in?
  		redirect_to(login_path)
  	end
  end
end
