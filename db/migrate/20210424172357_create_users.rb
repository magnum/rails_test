class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.timestamps
    end
    User.create  firstname: "John", lastname: "Doe"
    add_column :documents, :user_id, :integer
    Document.update_all user_id: 1
  end
end
