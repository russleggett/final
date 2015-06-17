class Approval < ActiveRecord::Base
	belongs_to :request, class_name: 'Request', foreign_key: :order_id
	belongs_to :approver, class_name: 'User', foreign_key: :approver_id
end
