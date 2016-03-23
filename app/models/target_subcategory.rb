class TargetSubcategory < ActiveRecord::Base
  belongs_to :target_category
  has_one :act_target, as: :targetable, dependent: :destroy
end
