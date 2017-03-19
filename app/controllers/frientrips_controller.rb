class FrientripsController < ApplicationController

  def index
    @plans = Plan.all
  end

  def new
  end

  def show
    @plans = Plan.find(params[:id])
    @comments = @tweet.comments.includes(:user)
  end

  def create
    Plan.create(plan_params)
    binding.pry
  end

  private
  def plan_params
    params.permit(:name, :image, :text)
  end



end