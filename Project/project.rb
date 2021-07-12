class Project
	attr_accessor :name, :desc, :owner, :tasks
	def initialize name, desc, owner
		@name = name
		@desc = desc
		@owner = owner
		@tasks = []
		
	end
	def elevator_pitch
		"#{@name}, #{@desc}, #{@owner}"
	end
	def add_tasks task
		@tasks << task
	end
	def tasks
		return @tasks
	end
	def print_tasks
		puts @tasks
	end
end