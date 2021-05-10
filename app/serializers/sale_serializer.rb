class SaleSerializer < ActiveModel::Serializer
  attributes :id, :price, :listing, :sale_type
end
