class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.string :name,        :null => false, :limit => 30
      t.string :description, :null => false, :limit => 250
      t.timestamps
    end
    add_index :designations, :name, :unique => true
  end
end
