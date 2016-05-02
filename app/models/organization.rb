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

class Organization < ActiveRecord::Base
  has_many :organization_gropus
  has_one :act_organization, as: :organizable, dependent: :destroy
end

