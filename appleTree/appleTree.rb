class AppleTree
    attr_accessor :age
    attr_reader :height, :count
    def initialize
        @age = 0
        @height = 10
        @count = 0
    end
    def year_gone_by
        @age += 1
        @height *= 0.1
        @count += 2 if @age.between?(3,11)
        return "#{age}, #{height}, #{count}"
    end
    def pick_apples
        @count = 0
        return @count;
    end
end