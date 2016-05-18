class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :type
      t.string :address
      t.references :sensor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end