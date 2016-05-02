# == Schema Information
#
# Table name: organization_subgroups
#
#  id                    :integer          not null, primary key
#  organization_group_id :integer
#  name                  :string
#  deleted_at            :datetime
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class OrganizationSubgroup < ActiveRecord::Base
  belongs_to :organization_group
  has_one :act_organization, as: :organizable, dependent: :destroy
end