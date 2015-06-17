class AddApproverBooleanToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :is_approver, :boolean
  end
end
