class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :requests, foreign_key: :created_by
	has_many :first_approvers, class_name: Request, foreign_key: :first_approver_id

	accepts_nested_attributes_for :requests


	def full_name
		"#{first_name} #{last_name}"
	end
end
