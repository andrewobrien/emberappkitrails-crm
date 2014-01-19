class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name

  embed :ids, include: true
  has_many :people
  has_many :tasks
end
