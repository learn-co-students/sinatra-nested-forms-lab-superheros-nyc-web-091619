class Member
    attr_accessor :power, :name, :bio

    @@all = []

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @bio = args[:bio]
        @@all << self
    end

    def self.all
        @@all
    end
end