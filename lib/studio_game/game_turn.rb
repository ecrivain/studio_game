require 'studio_game/player'
require 'studio_game/die'

module StudioGame
  module GameTurn
    def self.take_turn(player)
      @player = player
      die = Die.new
      case die.roll
      when 1..2
        player.blam
      when 3..4
        puts "#{player.name} was skipped."
      else
        player.w00t
      end
      treasure = TreasureTrove.random
      @player.found_treasure(treasure)
    end
  end
end