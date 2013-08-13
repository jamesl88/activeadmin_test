class LogsController < ApplicationController
  
  def index
    @logs = Log.all
  end
  
  def create
    @log = Log.create!(log_params)
    if @log.save
      redirect_to user_path(current_user.id)
      flash[:notice] = "Submitted"
    else
      flash[:notice] = "Error, competency not submitted"
      redirect_to user_path(current_user.id)
    end
  end

  def new
    @log = Log.new
  end

  def destroy
  end

  def show
  end

end

private

  def log_params
    params.require(:log).permit(:date, :procedure, :complications, :teaching, :user_id)
  end

