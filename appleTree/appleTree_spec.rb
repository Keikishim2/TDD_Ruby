require_relative 'appleTree'

RSpec.describe AppleTree do
    before(:each) do
        @appleTree1 = AppleTree.new
    end
    it "has an age attribute with getter and setter methods" do
        @appleTree1.age = 15
        expect(@appleTree1.age).to eq(15)
    end
    it "cannot set height attribute" do
        expect{@appleTree1.height = 100}.to raise_error(NoMethodError)
    end
    it "cannot set count attribute" do
        expect{@appleTree1.count = 100}.to raise_error(NoMethodError)
    end
    it "has a year_gone_by method" do
        expect{@appleTree1.year_gone_by}.to raise_error(NoMethodError)
    end
    it "should not grow apples for the first 3 years of life" do
        @appleTree1.age = 1
        expect(@appleTree1.year_gone_by).to eq("2, 3, 4")
    end
    it "has a method pick_apples method to take all apples" do
        expect(@appleTree1.pick_apples).to eq(0)
    end
    it "should not grow apples for after 10 years" do
        @appleTree1.age = 11
        expect(@appleTree1.year_gone_by).to eq("12, 11, 10")
    end
end