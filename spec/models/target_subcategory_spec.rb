# == Schema Information
#
# Table name: target_subcategories
#
#  id                 :integer          not null, primary key
#  target_category_id :integer          not null
#  name               :string           not null
#  description        :text
#  deleted_at         :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe TargetSubcategory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
