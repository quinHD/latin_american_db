class Admin::TargetsController < Admin::BaseController
  def index
    @targets = Target.all.includes(:target_categories, target_categories: :target_subcategories)
  end
end