class UserSerializerSerializer < ActiveModel::Serializer
  # has_many :sales
  attributes :saleslist 

  def saleslist
    self.object.sales
  end

end
