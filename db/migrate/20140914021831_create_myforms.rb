class CreateMyforms < ActiveRecord::Migration
  def change
    create_table :myforms do |t|
      t.string :name
      t.string :gender
      t.string :category
      t.string :email
      t.string :cell
      t.text :address

      t.timestamps
    end
  end
end
