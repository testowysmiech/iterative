class UserStory < ActiveRecord::Base
  attr_accessible :criterias, :description, :estimation, :number, :priority, :title
  validates_presence_of :title, :description, :criterias
end
