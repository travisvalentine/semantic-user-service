class UserSerializer < ActiveModel::Serializer
  self.root = false

  attributes :id, :name, :username, :location,
             :website, :about, :admin, :email
end
