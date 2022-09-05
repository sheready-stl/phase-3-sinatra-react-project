#A task belongs to a project

class Task < ActiveRecord::Base
    belongs_to :project
    belongs_to :programmer
end