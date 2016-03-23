class OrganizationSubgroup < ActiveRecord::Base
  belongs_to :organization_group
  has_one :act_organization, as: :organizable, dependent: :destroy
end
