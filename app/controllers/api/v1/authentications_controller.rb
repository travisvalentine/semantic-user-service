class Api::V1::AuthenticationsController < ApplicationController
  def create
    if user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
      success(user, 200)
    else
      error({user: "Not able to login"}, 401)
    end
  end
end