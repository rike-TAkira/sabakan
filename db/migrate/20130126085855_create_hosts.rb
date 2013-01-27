class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name, null: false
      t.string :ip_address
      t.string :description
      t.boolean :active, default: true

      t.timestamps
    end

    add_index :hosts, [:name], unique: true
  end
end
