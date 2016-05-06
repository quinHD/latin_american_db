# == Schema Information
#
# Table name: act_organizations
#
#  id               :integer          not null, primary key
#  act_id           :integer
#  authorshipable_id   :integer          not null
#  authorshipable_type :string           not null
#  deleted_at       :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Authorship < ActiveRecord::Base
  belongs_to :authorshipable, polymorphic: true, touch: true
  belongs_to :act

  def parent_tree
    authorshipable.parent_tree
  end
end
