class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.string :description
      t.integer :host_group_id, null: false

      t.timestamps
    end

    add_index :services, [:name], unique: true 
  end
end
