class Api::V1::UsersController < ApplicationController
  # before_action :current_user, only: :find_user

  def index 
    users = User.all
    render json: users
  end

  def create 
    user = User.create(user_params)
    if user.valid?
      token = JWT.encode({user_id: user.id}, "realhouse")
      render json: {user: UserSerializer.new(user), token: token}, status: :created
    else 
      render json: {message: user.errors.full_messages}, status: :not_acceptable
    end
  end

  def find_user
    user = current_user ? current_user : {message: "Please log in"}
    render json: user
  end

  def update
    if current_user 
      current_user.update_attribute(:name, user_params[:name])
      current_user.update_attribute(:email, user_params[:email])
      current_user.update_attribute(:phone_number, user_params[:phone_number])

      render json: current_user
    else
       render json: {message: "You can not hack out system!!"}
    end
  end

  private 

  def user_params
    params.permit(:email, :password, :password_confirmation, :name, :phone_number)
  end

end

