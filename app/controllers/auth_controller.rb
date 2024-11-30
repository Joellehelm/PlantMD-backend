class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    email = user_login_params[:email].downcase
    @user = User.find_by(email: email)
    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    
    else
      render json: { message: 'Invalid email or password' }, status: :unauthorized
    end
  end

  def auto_login
    puts "IN AUTOLOGIN=============================="
    if current_user
      puts current_user.inspect
      token = auth_header.split(' ')[1]
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: {errors: "No user logged in"}
    end
  end


  private

  def user_login_params
    params.require(:user).permit(:email, :password, :token)
  end
end