class KittySerializer < ActiveModel::Serializer
  attributes :id, :name, :birthday, :social
end
