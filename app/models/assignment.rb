class Assignment < ActiveRecord::Base
	belongs_to :user
  	attr_accessible :body, :title, :state
end
