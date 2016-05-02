# == Schema Information
#
# Table name: places
#
#  id           :integer          not null, primary key
#  act_id       :integer
#  name         :string
#  type_of_area :string
#  latitude     :string
#  longitude    :string
#  country      :string
#  city         :string
#  province     :string
#  deleted_at   :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Place < ActiveRecord::Base
  belongs_to :act
end
