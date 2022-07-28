class Product < ApplicationRecord
has_many :bids
belongs_to :user
validates :title, presence: true
end
