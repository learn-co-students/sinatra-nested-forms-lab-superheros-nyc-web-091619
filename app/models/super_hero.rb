class SuperHero
    attr_accessor :name, :power, :biography
 
    @@all = []

    def self.all
      @@all
    end
    
     def initialize(params={})
       @name = params[:name]
       @power = params[:power]
       @biography = params[:biography]
       self.save
       
       @@all << self
     end

     def save
      self.class.all << self
     end

    

     
end