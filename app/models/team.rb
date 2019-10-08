class Team
    attr_accessor :name, :moto
 
    @@all = []
    
     def initialize(params={})
       @name = params[:name]
       @moto = params[:moto] 
     end
    
     

end