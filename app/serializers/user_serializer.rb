class UserSerializer < ActiveModel::Serializer
  has_many :sales
  attributes :id, :username, :email, :location, :avatar

  # def saleslist
  #   self.object.sales
  # end

end
