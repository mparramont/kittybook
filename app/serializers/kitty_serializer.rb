class KittySerializer < ActiveModel::Serializer
  attribute :name, key: :nickname

  attributes :id, :birthday, :social
end
