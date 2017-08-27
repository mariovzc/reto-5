class Player
  attr_reader :name, :errors  
  def initialize(name)
    @name = name
    @errors = 0
  end
  def errors
    @errors
  end
  def wrong
    @errors += 1
  end
  def level
    case @errors.to_i    
      when 0 then 'Pro'        
      when 2 then 'Semi Pro'
      else 'Noob'
    end
  end
end