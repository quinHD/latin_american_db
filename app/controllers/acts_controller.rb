class ActsController < ApplicationController
  def index
    @acts = Act.all
  end

  def show
    @act = Act.find(params[:id])
  end

  def new
    @act = Act.new
  end

  def create
    @act = Act.new(act_parameters)
    if @act.save
      redirect_to acts_path
    else
      render :new
    end
  end

  def edit
    @act = Act.find(params[:id])
  end

  def update
    @act = Act.find(params[:id])
    if @act.update(act_parameters)
      redirect_to @act
    else
      render :new
    end
  end

  def destroy
    @act = Act.find(params[:id])
    @act.destroy

    redirect_to acts_path
  end

  private

  def act_parameters
    params.require(:act).permit(:name, :description, :start_date, :end_date)
  end
end
