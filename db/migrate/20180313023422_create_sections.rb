class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name,   limit:100
      t.boolean :active,default:true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
