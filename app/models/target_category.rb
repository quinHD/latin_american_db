class TargetCategory < ActiveRecord::Base
  belongs_to :target
  has_many :target_subcategories
  has_one :act_target, as: :targetable, dependent: :destroy
end
