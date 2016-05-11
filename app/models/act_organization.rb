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

  def organization
    organizable.organization
  end
end
