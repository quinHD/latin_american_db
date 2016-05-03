class Admin::ActsController < Admin::BaseController
  def index
    @acts = Act.all
  end

  def show
    @act = Act.find(params[:id])
  end
end
