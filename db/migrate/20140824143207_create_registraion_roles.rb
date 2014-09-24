class CreateRegistraionRoles < ActiveRecord::Migration
  def change
    create_table :registraion_roles do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
