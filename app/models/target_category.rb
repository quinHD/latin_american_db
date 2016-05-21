# == Schema Information
#
# Table name: target_categories
#
#  id          :integer          not null, primary key
#  target_id   :integer          not null
#  name        :string           not null
#  description :text
#  deleted_at  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TargetCategory < ActiveRecord::Base
  belongs_to :target
  has_many :target_subcategories
  has_one :act_target, as: :targetable, dependent: :destroy
  accepts_nested_attributes_for :act_target, allow_destroy: true

  def group_by_type
    target.group_by_type.merge( { target_category: name } )
  end
end
