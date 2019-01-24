require 'boardcase'
require 'game'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  attr_accessor :array_of_rows, :count_turn, :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  
  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    @a1 = BoardCases.new("A1")
    @a2 = BoardCases.new("A2")   
    @a3 = BoardCases.new("A3")
    @b1 = BoardCases.new("B1")
    @b2 = BoardCases.new("B2")
    @b3 = BoardCases.new("B3")
    @c1 = BoardCases.new("C1")
    @c2 = BoardCases.new("C2")
    @c3 = BoardCases.new("C3")
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @array_of_rows = [
      [@a1, @a2, @a3],
      [@b1, @b2, @b3],
      [@c1, @c2, @c3]
    ]
  end

  def play_turn(current_player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    puts "#{current_player.name} Que veux-tu jouer ?"
    player_case = gets.chomp.upcase
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    case player_case
    when "A1"
      @a1.state = current_player.sign
    when "A2"
      @a2.state = current_player.sign
    when "A3"
      @a3.state = current_player.sign
    when "B1"
      @b1.state = current_player.sign
    when "B2"
      @b2.state = current_player.sign
    when "B3"
      @b3.state = current_player.sign
    when "C1"
      @c1.state = current_player.sign
    when "C2"
      @c2.state = current_player.sign
    when "C3"
      @c3.state = current_player.sign
    end

  end

    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    # if (a1.value == a2.value) && (a2.value == a3.value) && (a3.value != 0)
    #   puts "victoire #{current_player}"
    #   game.status = "victoire"
    # elsif (b1.value == b2.value) && (b2.value == b3.value) && (b3.value != 0)
    #   puts "victoire #{current_player}"
    #   game.status = "victoire"
    # elsif (c1.value == c2.value) && (c2.value == c3.value) && (c3.value != 0)
    #   puts "victoire #{current_player}"
    #   game.status = "victoire"
    # elsif (a1.value == b1.value && b1.value == c1.value && c1.value != 0
    #   puts "victoire #{current_player}"
    #   game.status = "victoire"
    # elsif a2.value == b2.value && b2.value == c2.value && c2.value != 0
    #   puts "victoire #{current_player}"
    #   game.status = "victoire"
    # elsif a3.value == b1.value && b1.value == c1.value && c1.value != 0
    #   puts "victoire #{current_player}" 
    #   game.status = "victoire"
    # elsif a1.value == b2.value && b1.value == c3.value && c3.value != 0
    #   puts "victoire #{current_player}" 
    #   game.status = "victoire"
    # elsif A3 == B2 && B2 == C1 && C1 != 0
    #   puts "victoire #{current_player}"
    #   game.status = "victoire"
    # elsif count_turn == 9
    #   puts "match nul, try again."
    #   game.status = "nul"
    # else
    #   puts "tour au joueur suivant"
    #   count_turn += 1
    # end
  end
end
