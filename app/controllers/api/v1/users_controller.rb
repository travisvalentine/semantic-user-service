class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_create_params)
    if user.save
      success(user, 200)
    else
      error(user.errors, status: :unprocessable_entity)
    end
  end

  def index
    user = UserSearch.new(params).result
    if user
      success(user, 200)
    else
      error({user: "Record not found"}, 404)
    end
  end

  def update
    if current_user.update_attributes(user_update_params)
      redirect_to user_path(current_user.username)
    else
      render :edit
    end
  end

  private

    def user_create_params
      params.require(:user).permit(:email, :password, :password_confirmation, :username, :name)
    end

    def user_update_params
      params.require(:user).permit(:name, :website, :location, :about)
    end
end
