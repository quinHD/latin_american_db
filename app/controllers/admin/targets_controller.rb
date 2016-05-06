class Admin::TargetsController < Admin::BaseController
  def index
    @targets = Target.all
    @target_categories = TargetCategory.all
    @target_subcategories = TargetSubcategory.all
  end
end