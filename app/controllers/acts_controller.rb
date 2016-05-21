class ActsController < ApplicationController
  wrap_parameters Act

  def index
    @q = Act.ransack(params[:q])
    @acts = @q.result(distinct: true).includes(:act_types, act_organizations: :organizable).order(id: :asc)
  end

  def show
    @act = Act.find(params[:id])
  end

  def new
    @act = Act.new
    @act.build_place
    @act.build_result
  end

  def create
    binding.pry
    @act = Act.new(act_parameters)
    if @act.save
      redirect_to acts_path
    else
      @act = Act.new
      @act.build_place
      @act.build_result
      render :new
    end
  end

  def edit
    @act = Act.find(params[:id])
  end

  def update
    binding.pry
    @act = Act.find(params[:id])
    if @act.update(act_parameters)
      redirect_to @act
    else
      @act = Act.new
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
    params.require(:act).permit(
      :name, :description, :start_date, :end_date,
      place_attributes: [:id, :country, :province, :city, :name, :type_of_area, :description],
      act_organization_ids: [], 
      act_type_ids: [],
      act_target_ids: [],
      result_attributes: [:id, :arrested, :deaths, :economic_cost, :injured, :missing, :personal_attacks, :property_attacks]
    )
  end
end
