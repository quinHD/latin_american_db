# == Schema Information
#
# Table name: target_subcategories
#
#  id                 :integer          not null, primary key
#  target_category_id :integer          not null
#  name               :string           not null
#  description        :text
#  deleted_at         :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class TargetSubcategory < ActiveRecord::Base
  belongs_to :target_category
  has_one :act_target, as: :targetable, dependent: :destroy
end
