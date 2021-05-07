class User < ApplicationRecord
    has_many :listings 
    has_many :sales
    has_many :listings, through: :sales
end
