# == Schema Information
#
# Table name: act_organizations
#
#  id               :integer          not null, primary key
#  act_id           :integer
#  authorshipable_id   :integer          not null
#  authorshipable_type :string           not null
#  deleted_at       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe Authorship, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
