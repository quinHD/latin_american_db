class Target < ActiveRecord::Base
  has_many :target_categories
  has_one :act_target, as: :targetable, dependent: :destroy
end
