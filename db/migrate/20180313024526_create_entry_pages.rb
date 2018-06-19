class CreateEntryPages < ActiveRecord::Migration[5.0]
  def change
    create_table :entry_pages do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
