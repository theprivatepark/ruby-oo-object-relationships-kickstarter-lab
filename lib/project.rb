require "pry"
class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select {|pb| pb.project == self}.map{|project| project.backer}
    end
        
end

# add_backer is an instance method within the PROJECT class
# has one argument (backer). creates ProjectBacker(self, backer)