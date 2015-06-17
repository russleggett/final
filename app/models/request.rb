class Request < ActiveRecord::Base
	belongs_to :creator, class_name: 'User', foreign_key: :created_by
	belongs_to :first_approved_by, class_name: 'User', foreign_key: :first_approver_id
	has_many :items
end
