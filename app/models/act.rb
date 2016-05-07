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
  acts_as_paranoid
  after_update :update_modification

  belongs_to :creator, class_name: :User, foreign_key: "user_id"
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :act_organizations
  has_many :act_targets
  has_many :modifications
  has_one :result
  has_one :place, dependent: :destroy
  accepts_nested_attributes_for :place

  validates :name, presence: true

  private

  def update_modification
    val = changes.reject {|k,v| k == "updated_at"}
    val.each do |k,v|
      modifications.create(
        creator: User.first, 
        column: k,
        from_value: v.first,
        to_value: v.last
      )
    end
  end
end
