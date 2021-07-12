# frozen_string_literal: true

require "stringer/version"
module Stringer
    def self.spacify *strings
        string = ""
        strings.each do |s|
            string += " " + s
        end
        string.lstrip! 
    end

    def self.minify str,max_len
    	str.slice!(0...max_len) + "..."
    end
    def self.replacify str, word, repl 
    	str.gsub(word, repl)
    end
    def self.tokenize str
    	str.split(" ")
    end
    def self.removify str, word
    	str2 = word+ " "
    	str.slice!(str2)
    	str
    end

end