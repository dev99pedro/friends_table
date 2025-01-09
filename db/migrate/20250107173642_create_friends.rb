class CreateFriends < ActiveRecord::Migration[8.0]
  def change
    create_table :friends do |t|
      t.string :firstname
      t.string :secondname
      t.string :email
      t.string :phone
      t.string :twitter
      t.timestamps
    end
  end
end
