class Question < ActiveRecord::Base
  belongs_to :user
  has_many :questionreplys
end
