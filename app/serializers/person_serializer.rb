class PersonSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :city, :state, :email

  embed :ids, include: true
  has_one :company
end
