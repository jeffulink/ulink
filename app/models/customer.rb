class Customer < ApplicationRecord
    has_many :cqconnects
    has_many :quotations, through: :cqconnects
end