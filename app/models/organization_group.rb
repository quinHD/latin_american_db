class OrganizationGroup < ActiveRecord::Base
  belongs_to :organization
  has_many :organization_subgroups
  has_one :act_organization, as: :organizable, dependent: :destroy
end

