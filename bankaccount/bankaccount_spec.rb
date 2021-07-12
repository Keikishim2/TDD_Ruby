require_relative 'bankaccount'
RSpec.describe BankAccount do 
	before(:each) do
		@bank1 = BankAccount.new
		@bank2 = BankAccount.new
	end
	it 'has a getter method to retrieve checking account balance' do
        expect(@bank1.checking).to eq(0)
        expect(@bank2.checking).to eq(0)
    end
    it "cannot retrieve total number of bank accounts" do
        expect{@bank1.num_of_acc}.to raise_error(NoMethodError)
        expect{@bank2.num_of_acc}.to raise_error(NoMethodError)
    end

    it "cannot set interest rate" do
        expect{@bank1.interest_rate = 0.02}.to raise_error(NoMethodError)
        expect{@bank1.interest_rate = 0.02}.to raise_error(NoMethodError)        
    end
end
