# == Schema Information
#
# Table name: acts
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string           not null
#  description :text             not null
#  start_date  :date
#  end_date    :date
#  deleted_at  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ActTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
