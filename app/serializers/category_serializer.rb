class CategorySerializer < ActiveModel::Serializers
  has_many :items
  attributes :id, :title, :description
end