class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new(params[:text])
  end

  def create
    @session = Session.new(session_params)
    
    if @session.save
      redirect_to sessions_new_url
    else
      render "new"
    end   
  end

  private

  def session_params
    params.require(:session).permit(:text)
  end
end
