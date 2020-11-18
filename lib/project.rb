require "pry"
class Project
    attr_accessor :title
    def initialize(title)
      #binding.pry
      self.title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
      backer_instances = ProjectBacker.all.select do |backed|
        backed.project == self
            #associate project instances with project via project_backer
      end
    #returns all the projects associated with this backer instance
    backer_instances.collect do |backed|
      backed.backer
      end
    end
end