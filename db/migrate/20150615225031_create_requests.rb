class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :created_by
      t.date :required_by
      t.text :justification
      t.integer :first_approver_id
      t.boolean :submitted
      t.boolean :final_approval

      t.timestamps null: false
    end
  end
end
