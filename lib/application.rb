require 'game'

class Application
  
  def perform
  	# Démarrer la première partie
    puts "BIENVENUE! Vous allez jouer au morpion :)"
    @game = Game.new
    @game.turn

 #    count_turns = 1

	#     while @game.status == "on going" && count_turns < 10
	#       puts "Tour #{@count_turns}"
	#       @game.turn
	#       count_turns += 1
	#     end
 #    @game.status = "nul"
  end
end