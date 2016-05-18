# == Schema Information
#
# Table name: act_organizations
#
#  id               :integer          not null, primary key
#  act_id           :integer
#  deleted_at       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class ActOrganization < ActiveRecord::Base
  belongs_to :organizable, polymorphic: true, touch: true
  belongs_to :act

  scope :organizations, -> { where(organizable_type: "Organization") }
  scope :groups, -> { where(organizable_type: "OrganizationGroup") }
  scope :subgroups, -> { where(organizable_type: "OrganizationSubgroup") }

  def organization
    organizable.organization
  end
end
