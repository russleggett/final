class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.integer :order_id
      t.integer :approver_id
      t.boolean :approved
      t.text :comments
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
