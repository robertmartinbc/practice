class Transaction < ActiveRecord::Base
	attr_accessible :completed_at, :owner, :writer


	has_one :assignment
	has_one :owner, class_name: :user
	has_one :writer, class_name: :writer
  # belongs_to :owner
  # belongs_to :writer
  # attr_accessible :title, :body
end
