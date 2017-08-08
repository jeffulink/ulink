class Quotation < ApplicationRecord
    has_many :cqconnects
    has_many :customers, through: :cqconnects
end
