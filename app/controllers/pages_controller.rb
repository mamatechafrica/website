class PagesController < ApplicationController
  def home
    @user = User.new
  end

  def create_user
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'User successfully created'
    else
      render :home # Re-render the home page if saving fails
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end