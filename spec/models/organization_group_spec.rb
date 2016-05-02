# == Schema Information
#
# Table name: organization_groups
#
#  id              :integer          not null, primary key
#  organization_id :integer
#  name            :string
#  deleted_at      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe OrganizationGroup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
