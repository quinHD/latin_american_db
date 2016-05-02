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
end
