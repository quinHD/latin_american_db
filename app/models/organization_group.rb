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

class OrganizationGroup < ActiveRecord::Base
  belongs_to :organization
  has_many :organization_subgroups
  has_one :act_organization, as: :organizable, dependent: :destroy
end
