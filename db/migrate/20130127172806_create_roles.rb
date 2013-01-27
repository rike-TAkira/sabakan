class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps
    end

    add_index :roles, [:name], unique: true 
  end
end
