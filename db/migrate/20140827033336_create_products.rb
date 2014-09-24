class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :email
      t.string :cell
      t.text :subject

      t.timestamps
    end
  end
end
