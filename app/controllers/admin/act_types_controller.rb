class Admin::ActTypesController < Admin::BaseController
  def index
    @act_types = ActType.all
  end
end
