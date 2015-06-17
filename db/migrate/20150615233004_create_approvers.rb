class CreateApprovers < ActiveRecord::Migration
  def change
    create_table :approvers do |t|
      t.integer :user_id
      t.integer :approval_amount
      t.integer :their_supervisor

      t.timestamps null: false
    end
  end
end
