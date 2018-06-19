class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name,   :limit=>100
      t.string :logo,   :limit=>100
      t.text :headline
      t.string :address,  limit: 200
      t.string :phone1,   limit: 15
      t.string :phone2,   limit: 15
      t.decimal :lat,     precision:10, scale: 6
      t.decimal :lng,     precision:10, scale: 6
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
