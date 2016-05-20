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
  accepts_nested_attributes_for :act_organization, allow_destroy: true
  validates :name, uniqueness: true, allow_blank: false
  validates_length_of :name, minimum: 2, allow_nil: true, allow_blank: false

  def group_by_type
    organization.group_by_type.merge({ organization_group: name })
  end
end

