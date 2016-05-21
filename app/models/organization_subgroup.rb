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
  accepts_nested_attributes_for :act_organization, allow_destroy: true
  validates :name, uniqueness: true, allow_blank: false
  validates_length_of :name, minimum: 2, allow_nil: true, allow_blank: false

  def group_by_type
    organization_group.group_by_type.merge( { organization_subgroup: name } )
  end

  def act_organization_hierarchy
    organization.act_organization_hierarchy << act_organization
  end
end
