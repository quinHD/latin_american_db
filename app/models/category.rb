# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :string
#  deleted_at  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ActiveRecord::Base
  has_and_belongs_to_many :acts
end
