class WatchesController < ApplicationController

  def index
    @watches = Watch.all
    render json: @watches
  end

  def show
    @watch = Watch.find(params[:id])
    render json: @watch
  end

  def create
    @watch = Watch.create(watch_params)
    render json: @watch
  end

  def update
    @watch = Watch.find(params[:id])
    @watch.update(watch_params)
    render json: @watch
  end

  def destroy
    @watch = Watch.find(params[:id])
    @watch.destroy
    render json: @watch
  end

  private

  def watch_params
    params.permit(:user_id, :watch_id)
  end

end