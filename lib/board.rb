require 'boardcase'
require 'game'

class Board
  attr_accessor :array_of_rows, :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
  
  def initialize
    #Initialisation des instances de cases
    @a1 = BoardCases.new("A1")
    @a2 = BoardCases.new("A2")   
    @a3 = BoardCases.new("A3")
    @b1 = BoardCases.new("B1")
    @b2 = BoardCases.new("B2")
    @b3 = BoardCases.new("B3")
    @c1 = BoardCases.new("C1")
    @c2 = BoardCases.new("C2")
    @c3 = BoardCases.new("C3")
    #Initialisation du board 
    @array_of_rows = [
      [@a1, @a2, @a3],
      [@b1, @b2, @b3],
      [@c1, @c2, @c3]
    ]
    # Initialisation de l'array indiquant les choix disponibles qui permettent de savoir si une case a déjà été remplie ou non
    @free_array = [
      "A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"
    ]
  end


  def play_turn(current_player)
  # Demander le choix auprès du joueur
    puts "#{current_player.name}, que veux-tu jouer ?"
    player_case = gets.chomp.upcase
  
  # Vérifier que le choix 1/ existe et 2/ est disponible grâce au free_array
    while !@free_array.include?(player_case)
      puts "Il faut rentrer une case disponible."
      player_case = gets.chomp.upcase
    end 

  # Le underscore de la case est remplacé par le signe choisi par le joueur pour la case sélectionnée
  # La case choisie est retirée du free array
    case player_case
      when "A1"
        @a1.state = current_player.sign
        @free_array.delete("A1")
      when "A2"
        @a2.state = current_player.sign
        @free_array.delete("A2")
      when "A3"
        @a3.state = current_player.sign
        @free_array.delete("A3")
      when "B1"
        @b1.state = current_player.sign
        @free_array.delete("B1")
      when "B2"
        @b2.state = current_player.sign
        @free_array.delete("B2")
      when "B3"
        @b3.state = current_player.sign
        @free_array.delete("B3")
      when "C1"
        @c1.state = current_player.sign
        @free_array.delete("C1")
      when "C2"
        @c2.state = current_player.sign
        @free_array.delete("C2")
      when "C3"
        @c3.state = current_player.sign
        @free_array.delete("C3")
    end

  end


  def victory?(current_player, status)
    winner = "#{current_player.name} a gagné"
  # On détermine la victoire selon l'équivalence de 3 cases clés (cf. règles) + l'égalité dans la nullité ("_") ne compte pas bien évidemment
    if (@a1.state == @a2.state) && (@a2.state == @a3.state) && (@a1.state != "_" )
      puts winner
      return true
    elsif (@b1.state == @b2.state) && (@b2.state == @b3.state) && (@b1.state != "_" )
      puts winner 
      return true
    elsif (@c1.state == @c2.state) && (@c2.state == @c3.state) && (@c1.state != "_" )
      puts winner 
      return true
    elsif (@a1.state == @b1.state) && (@b1.state == @c1.state) && (@a1.state != "_" )
      puts winner 
      return true
    elsif (@a2.state == @b2.state) && (@b2.state == @c2.state) && (@a2.state != "_" )
      puts winner 
      return true
    elsif (@a3.state == @b3.state) && (@b3.state == @c3.state) && (@a3.state != "_" )
      puts winner 
      return true
    elsif (@a1.state == @b2.state) && (@b2.state == @c3.state) && (@a1.state != "_" )
      puts winner
      return true
    elsif (@a3.state == @b2.state) && (@b2.state == @c1.state) && (@a3.state != "_" )
      puts winner
      return true
    else
    end

  end

end