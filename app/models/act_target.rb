# == Schema Information
#
# Table name: act_targets
#
#  id              :integer          not null, primary key
#  act_id          :integer
#  targetable_id   :integer          not null
#  targetable_type :string           not null
#  deleted_at      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ActTarget < ActiveRecord::Base
  belongs_to :targetable, polymorphic: true, touch: true
  belongs_to :act

  scope :targets, -> { where(targetable_type: "Target") }
  scope :target_categories, -> { where(targetable_type: "TargetCategory") }
  scope :target_subcategories, -> { where(targetable_type: "TargetSubcategory") }

  def name
    targetable.name
  end

  def group_by_type
    targetable.group_by_type
  end

  def act_target_hierarchy
    targetable.act_target_hierarchy
  end

  def children
    targetable.children
  end
end
