class TaskSerializer < ActiveModel::Serializer
  attributes :id, :subject, :taskable_type

  embed :ids, include: true
  has_one :taskable
end
