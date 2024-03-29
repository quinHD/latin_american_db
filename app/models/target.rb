# == Schema Information
#
# Table name: targets
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text
#  deleted_at  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Target < ActiveRecord::Base
  has_many :target_categories
  has_one :act_target, as: :targetable, dependent: :destroy
  accepts_nested_attributes_for :act_target, allow_destroy: true
  accepts_nested_attributes_for :target_categories, allow_destroy: true

  def group_by_type
    { target: name }
  end

  def act_target_hierarchy
    [act_target]
  end

  def children
    target_categories.map{ |tc| [tc.act_target.id, tc.name] }
  end
end
