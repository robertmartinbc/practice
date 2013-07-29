class Comment < ActiveRecord::Base
  belongs_to :assignments
  attr_accessible :body
end
