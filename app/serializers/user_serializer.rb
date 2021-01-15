class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :created_at
  has_many :items
  has_many :categories
end
