require 'studio_game/auditable'

module StudioGame
  class Die
    include Auditable
  
    attr_reader :number
  
    def roll
      @number = rand(1..6)
      audit
      @number
    end
  end
end

if  __FILE__ == $0
  die = Die.new
  puts die.roll
  puts die.roll
  puts die.roll
end