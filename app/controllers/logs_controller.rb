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

    def edit
    @log = Log.find(params[:id])
    end

    def update
    @log = Log.find(params[:id])
    if @log.update_attributes(log_params)
      redirect_to log_path(@log)
    else
      redirect_to edit_log_path(@log)
    end
  end

end

private

  def log_params
    params.require(:log).permit(:date, :procedure, :complications, :teaching, :user_id, :reflection)
  end

