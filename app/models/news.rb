class News < ApplicationRecord
	belongs_to :agency
	belongs_to :category
end
