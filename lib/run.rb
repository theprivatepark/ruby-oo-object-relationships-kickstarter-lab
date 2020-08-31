require_relative '../lib/project'
require_relative '../lib/backer'
require_relative '../lib/project_backer'
require 'pry'

john = Backer.new("john")
sam = Backer.new("sam")

project_one = Project.new("Project 1")
project_two = Project.new("Project 2")
project_three = Project.new("Project 3")
project_four = Project.new("Project 4")

john_p1 = ProjectBacker.new(project_one, john)
john_p2 = ProjectBacker.new(project_two, john)


puts john.back_project(project_one)

binding.pry