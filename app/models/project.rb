#A project has many tasks
#A project has many tasks, through  programmers

class Project < ActiveRecord::Base
    has_many :tasks
    has_many :programmers, through: :tasks
end