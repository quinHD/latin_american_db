class Organization < ActiveRecord::Base
  has_many :organization_gropus
  has_one :act_organization, as: :organizable, dependent: :destroy
end

