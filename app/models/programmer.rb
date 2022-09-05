#A programmer has many tasks
#A programmer has many projects, through tasks

class Programmer < ActiveRecord::Base
    has_many :tasks
    has_many :projects, through: :tasks
end