class ActForm < Reform::Form
  property :name
  property :description
  property :start_date
  property :end_date

  collection :act_organizations do |variable|
    
  end
end
