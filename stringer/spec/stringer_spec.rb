require "spec_helper"
RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "removes characters and adds ... in place " do 
    expect(Stringer.minify ""Hello, I'm learning how to create a gem", 10).to eq("Hello I'm...")
    expect(Stringer.minify "Hello", 10).to eq("Hello")
  end

  it "replaces word in string" do 
    expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  end

  it "moves words in string to array" do 
    expect(Stringer.tokenize ""I love to code"").to eq(["I", "love", "to", "code"])
  end

  it "removes word from string" do 
    expect(Stringer.removify "I'm not a developer", "not", "not").to eq("I'm a developer")
  end

end