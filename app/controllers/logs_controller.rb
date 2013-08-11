class LogsController < ApplicationController
  
  def index
    @logs = Log.all
  end
  
  def create
    @log = Log.create!(log_params)
    if @log.save
      redirect_to logs_path
    else
      render :new
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
    params.require(:log).permit(:date, :procedure, :complications, :teaching)
  end

