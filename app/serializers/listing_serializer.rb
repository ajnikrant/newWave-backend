class ListingSerializer < ActiveModel::Serializer
  attributes :id, :price, :title, :description, :user_id, :category, :barter, :for_sale, :barter_description, :image, :location
end
