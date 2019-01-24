require 'game'

class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    puts "BIENVENUE? vous allez jouer au morpion"
    @game = Game.new

    count_turns = 1

	    while @game.status == "on going" && count_turns < 10
	      puts "Tour #{@count_turns}"
	      @game.turn
	      count_turns += 1
	    end
    @game.status = "nul"
	end
end