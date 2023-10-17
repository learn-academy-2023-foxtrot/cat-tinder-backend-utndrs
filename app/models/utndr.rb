class Utndr < ApplicationRecord
    validates :name, :age, :content, :image, presence: true
    validates :content, length: { minimum: 10 }



end
