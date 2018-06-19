class EntryPage < ApplicationRecord
  belongs_to :section

    scope :published, ->{ where("published = ?", true) }
end
