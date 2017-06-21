class Api::V1::UsersController < ApplicationController

  # GET /users
  def index
    render json: UserOperations::Index.new(params).call
  end

  # GET /users/1
  def show
    render json: UserOperations::Show.new(params).call
  end

  # POST /users
  def create
    user = UserOperations::Create.new(params).call
    render json: user, status: :created
  end

  # PATCH/PUT /users/1
  def update
    render json: UserOperations::Update.new(params).call
  end

  # DELETE /users/1
  def destroy
    render json: UserOperations::Destroy.new(params).call
  end

end
