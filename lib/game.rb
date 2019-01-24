require 'board'
require 'show'
require 'player'

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :array_players, :count_turn

  def initialize
  #Création des joueurs via la Classe player // sélection du premier joueur
    @player1 = Player.new("Joueur 1")
    @player2 = Player.new("Joueur 2")
    @array_players = [@player1, @player2]
    @current_player = @player1
  
  #Ouverture du premier plateau, du statut du jeu et du comptage de tour
    @status = "on going"
    @board = Board.new
    @count_turns = 0
  end

  def turn
    while @status == "on going"
    #Création du plateau grâce à show_board
       Show.new.show_board(@board) 
    #Lancement de la round
       @board.play_turn(@current_player)

    #Lancement de la vérification de la victoire
      if @board.victory?(@current_player, @status) == true
            @status = @current_player
          end
    
    #Si personne n'a gagné, on change de joueur et...
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    
    #On ajoute un tour au compteur >>>> si le compteur atteint 9 alors la match est déclaré nul
    @count_turns += 1
      if @count_turns == 9
        @status = "nul"
        puts "Match nul"
        puts ""
      end
    end
  end

  def new_round
    @board = Board.new
    @status = "on going"
  end   

end