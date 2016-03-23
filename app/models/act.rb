class Act < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: "user_id"
  has_many :act_targets
  has_and_belongs_to_many :act_categories
  has_one :result
  has_one :place
end
