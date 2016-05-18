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
  has_many :organization_groups
  has_one :act_organization, as: :organizable, dependent: :destroy
  accepts_nested_attributes_for :act_organization, allow_destroy: true
  validates :name, uniqueness: true, allow_blank: false
  validates_length_of :name, minimum: 2, allow_nil: true, allow_blank: false

  def parent_tree
    "Organization: #{name}"
  end

  def organization
    self
  end
end

