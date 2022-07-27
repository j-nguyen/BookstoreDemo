class Store < ApplicationRecord
    has_many :books, dependent: :delete_all

    validates :name, presence: true
end
