class ActTarget < ActiveRecord::Base
  belongs_to :targetable, polymorphic: true, touch: true
  belongs_to :act
end
