require 'pry'
class Backer

    attr_accessor :name

    def initialize(name) #john
        @name = name
    end

    def back_project(project) #Backer.back_project("blah blah blah")
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select {|pb| pb.backer == self}.map {|backer| backer.project} 
    end
end

# backed_projects is a CLASS METHOD that returns an array []. 
# everytime an instance of a backer gets initialized,
# it'll return an array of the backer's projects
# result = []
# john.back_project(project_one)
# result << project_one

# @all = [project_one]


