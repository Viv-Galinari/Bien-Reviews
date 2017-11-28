class AccountsController < ApplicationController

before_action :check_login

  def edit

  end

  def update
    if @current_user.update(form_params)
      flash[:success] = "Your account has been updated"
    end
    render "edit"
  end

  def form_params
      params.require(:user).permit(:username, :email, :avatar)
  end

  def show
      redirect_to edit_account_path
  end

end
