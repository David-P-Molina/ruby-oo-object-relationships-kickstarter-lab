require "pry"
class Backer
    attr_accessor :name
    def initialize(name)
      self.name = name
    
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
      project_instances = ProjectBacker.all.select do |backed|
        backed.backer == self
            #associate project instances with project via project_backer
      end
    #returns all the projects associated with this backer instance
    project_instances.collect do |backed|
      backed.project
      end
    end
end
