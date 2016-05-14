class ActsController < ApplicationController
  wrap_parameters Act

  def index
    @q = Act.ransack(params[:q])
    @acts = @q.result(distinct: true).includes(:categories, :act_organizations).order(id: :asc)
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
    @act = ActCreator.new(act_parameters)
    if @act.save
      redirect_to acts_path
    else
      @act = Act.new
      render :new
    end
  end

  def edit
    @act = ActForm.new(Act.find(params[:id]))
    binding.pry
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
      identification: [:name, :description, :start_date, :end_date, :city, :province, category_ids:[]],
      localization: [:id, :country, :province, :city, :name, :type_of_area, :description],
      typology: [category_ids: []],
      authorship: [:organization, :group, :subgroup]
    )
  end
end
