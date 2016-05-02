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

require 'rails_helper'

RSpec.describe Result, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
