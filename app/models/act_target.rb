# == Schema Information
#
# Table name: act_targets
#
#  id              :integer          not null, primary key
#  act_id          :integer
#  targetable_id   :integer          not null
#  targetable_type :string           not null
#  deleted_at      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ActTarget < ActiveRecord::Base
  belongs_to :targetable, polymorphic: true, touch: true
  belongs_to :act
end
