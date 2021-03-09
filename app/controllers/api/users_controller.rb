class Api::UsersController < ApplicationController
  def index
    if current_user
      @user = User.all
      response = request.headers.first(50).to_h.keys
      render "index.json.jb"
    else
      render json: []
    end
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
