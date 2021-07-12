require_relative 'project' 

RSpec.describe Project do
	before(:each) do
		#create 
		@project1 = Project.new('Project 1', 'description 1', 'Kei Kish') 
		@project2 = Project.new('Project 2', 'description 2', 'Co Leen')
	end
	it 'has a method elevator_pitch to explain name, descripton, and owner' do 
		expect(@project1.elevator_pitch).to eq("Project 1, description 1, Kei Kish")
		expect(@project2.elevator_pitch).to eq("Project 2, description 2, Co Leen")
	end
	it 'has a getter and setter for owner attribute' do 
		@project1.owner = "Kei K"
		expect(@project1.owner).to eq("Kei K")
	end
	it 'has task methods' do 
		@project1.add_tasks('Add')
		expect(@project1.tasks).to eq(['Add'])

		@project1.add_tasks('Empty')
		expect(@project1.tasks).to eq(['Add', 'Empty'])
		
		@project1.print_tasks
		expect(@project1.tasks).to eq(['Add', 'Empty'])
	end
end