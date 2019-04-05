class Restaurant < ApplicationRecord
        has_many :comments
        has_many :foods
        validates :name, presence: true, length: {minimum: 1} 
        validates :image, presence: true, length: {minimum: 1}
end
