class Team
    attr_accessor :motto, :name

    @@all = []

    def initialize(args)
        @name = args[:name]
        @motto = args[:motto]
        @@all << self
    end

    def self.all
        @@all
    end
end