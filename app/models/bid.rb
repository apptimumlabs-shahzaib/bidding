class Bid < ApplicationRecord
    belongs_to :user
    belongs_to :product

    after_update_commit {
        broadcast_update
    }
end
