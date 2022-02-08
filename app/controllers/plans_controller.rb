class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
    @plan.sessions.build
  end

  def create
    plan = Plan.create(plan_params)
    redirect_to plans_new_url
  end

  private 

  def plan_params
    params.require(:plan).permit(:text, sessions_attributes: [:id, :text])
  end
end
