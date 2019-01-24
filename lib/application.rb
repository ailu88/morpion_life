require 'game'

class Application
  
  def perform
  	# Démarrer la première partie
    puts "BIENVENUE!! Vous allez jouer au morpion \u{1f60e}"
    @game = Game.new
    @game.turn
  end
  
end