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
end