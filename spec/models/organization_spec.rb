# == Schema Information
#
# Table name: organizations
#
#  id                  :integer          not null, primary key
#  name                :string
#  supranational       :string
#  number_participants :string
#  country             :string
#  city                :string
#  province            :string
#  deleted_at          :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe Organization, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
