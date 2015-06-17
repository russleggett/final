class Approver < ActiveRecord::Base
	has_one :user, class_name: 'User', foreign_key: :user_id
	has_one :supervisor, class_name: 'User', foreign_key: :their_supervisor
	has_many :approvals
end
