class TaskableSerializer < ActiveModel::Serializer
  attributes :id

  embed :ids, include: true
  has_many :tasks
end
