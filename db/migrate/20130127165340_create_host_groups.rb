class CreateHostGroups < ActiveRecord::Migration
  def change
    create_table :host_groups do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps
    end

    add_index :host_groups, [:name], unique: true
  end
end
