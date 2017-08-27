class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id

  def editable
    scope == object.user
  end
end
