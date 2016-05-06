class ActsController < ApplicationController
  def index
    @q = Act.ransack(params[:q])
    @acts = @q.result(distinct: true).includes(:categories)
  end

  def show
    @act = Act.find(params[:id])
  end

  def new
    @act = Act.new
    @act.build_place
  end

  def create
    binding.pry
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

  def filter
    @q = Act.ransack(params[:q])
    @acts = @q.result(distinct: true)
  end

  private

  def act_parameters
    params.require(:act).permit(:name, :description, :start_date, :end_date, :city, :province, category_ids:[],
                                place_attributes: [:id,
                                                   :country,
                                                   :province,
                                                   :city,
                                                   :name,
                                                   :type_of_area,
                                                   :description
                                                   ])
  end
end
