class Link < ActiveRecord::Base
  belongs_to :user
  acts_as_votable
  has_many :comments
  belongs_to :theme
end
