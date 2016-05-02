# == Schema Information
#
# Table name: results
#
#  id               :integer          not null, primary key
#  act_id           :integer
#  arrested         :integer
#  deaths           :integer
#  economic_cost    :integer
#  injured          :integer
#  missing          :integer
#  personal_attacks :integer
#  property_attacks :integer
#  deleted_at       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Result < ActiveRecord::Base
  belongs_to :act
end
