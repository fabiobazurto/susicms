class AddHomePageToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :homepage, :text
  end
end
