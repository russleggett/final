class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :order_id
      t.float :cost
      t.integer :quantity
      t.string :name
      t.text :vendor_url

      t.timestamps null: false
    end
  end
end
