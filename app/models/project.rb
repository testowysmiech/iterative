class Project < ActiveRecord::Base
  attr_accessible :name, :status, :url
end
