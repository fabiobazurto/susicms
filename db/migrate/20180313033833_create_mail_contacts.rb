class CreateMailContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :mail_contacts do |t|
      t.string :name
      t.string :email
      t.string :question
      t.boolean :already_read
      t.boolean :already_answered

      t.timestamps
    end
  end
end
