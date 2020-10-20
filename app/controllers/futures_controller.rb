class FuturesController < ApplicationController

  def index
    @futures = Future.all
    render json: @futures
  end

  def show
    @future = Future.find(params[:id])
    render json: @future
  end

  def create
    @future = Future.create(future_params)
    render json: @future
  end

  def update
    @future = Future.find(params[:id])
    @future.update(future_params)
    render json: @future
  end

  def destroy
    @future = Future.find(params[:id])
    @future.destroy
    render json: @future
  end

  private

  def future_params
    params.permit(:user_id, :movie_id)
  end

end