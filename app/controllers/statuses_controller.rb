class StatusesController < ApplicationController

  def index
    @status =  Status.find(params[:user_id])
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to new_group_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private
  def status_params
    params.require(:status).permit(:weight, :gole, :rule).merge(user_id: current_user.id)
  end

end
