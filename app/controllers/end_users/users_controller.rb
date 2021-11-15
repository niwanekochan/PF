class EndUsers::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.save(user_params)
      redirect_to end_user_uesr_path(user.id)
    else
      @user = User.find(params[:id])
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:last_name, :last_name_kana, :first_name, :first_name_kana, :email, :password)
  end

end
