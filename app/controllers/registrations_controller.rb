class Users::SessionsController < Devise::SessionsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation, :current_password)
  end
end