class Quotation < ApplicationRecord
    has_many :cqconnects
    has_many :customers, through: :cqconnects
    
    def self.sort_by_time
        Quotation.order("created_at")
    end

    def create_time
      self.created_at.strftime("%Y-%m-%d")
    end

    
end
