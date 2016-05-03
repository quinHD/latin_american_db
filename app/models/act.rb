# == Schema Information
#
# Table name: acts
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string           not null
#  description :text             not null
#  start_date  :date
#  end_date    :date
#  deleted_at  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Act < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: "user_id"
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories
  has_many :act_targets
  has_one :result
  has_one :place

  validates :name, presence: true
end
