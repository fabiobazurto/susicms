class Section < ApplicationRecord
  belongs_to :company
  has_many :entry_pages,-> { where('published = ?', true) }
end
