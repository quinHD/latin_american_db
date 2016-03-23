class ActOrganization < ActiveRecord::Base
  belongs_to :organizable, polymorphic: true, touch: true
  belongs_to :act
end
