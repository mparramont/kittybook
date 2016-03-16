class KittySerializer < ActiveModel::Serializer
  attribute :name, key: :nickname

  attributes :id, :birthday, :social, :name_with_prefix

  belongs_to :owner

  def name_with_prefix
    "kitty_#{object.name}"
  end

  def social
    false
  end
end
