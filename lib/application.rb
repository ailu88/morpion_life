require 'game'

class Application
  
  def perform
  	# Démarrer la première partie
    puts "BIENVENUE! Vous allez jouer au morpion :)"
    @game = Game.new
    @game.turn
  end
  
end