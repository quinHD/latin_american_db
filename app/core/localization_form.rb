class LocalizationForm
  include ActiveModel::Model
  include Virtus.model

  attribute :country
  attribute :province
  attribute :city
  attribute :name
  attribute :type_of_area
  attribute :description
end