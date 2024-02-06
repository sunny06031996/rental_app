class CreateProperty < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.decimal :rent_per_month
      t.string :city
      t.text :districts
      t.integer :beds_number
      t.string :name
      t.integer :types
      t.integer :user_id
      t.timestamps
    end
  end
end
