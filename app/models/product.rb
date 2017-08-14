class Product < ApplicationRecord
    belongs_to :category
    has_many :prices
    has_many :comments
    # belongs_to :user
    # has_many :vote, as: :voteable

    has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

# def up_votes
    
# end

end