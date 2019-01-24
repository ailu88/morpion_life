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
            puts ""
            Show.new.show_board(@board) 
            @status = @current_player
      else
    
    #Si personne n'a gagné, on change de joueur et...
        if @current_player == @player1
          @current_player = @player2
        else
          @current_player = @player1
        end
      end
    
    #On ajoute un tour au compteur >>>> si le compteur atteint 9 alors la match est déclaré nul
    @count_turns += 1
      if @count_turns == 9 && @status == "on going" #si pas de on going, cela signifie que quelqu'un a gagné et qu'il n'y a pas de match nuls.
        @status = "nul"
        puts "Match nul \u{1f43c}"
        puts ""
        Show.new.show_board(@board) 
        puts ""
      end
    end
    new_round #dès que la partie est terminée, on re-propose le lancement d'une autre partie.
  end

  def new_round #A la fin d'une partie terminée, on propose de rejouer une partie
    puts "Veux-tu rejouer? Y ou N"
    answer = gets.chomp.upcase
      if answer == "Y"
      @board = Board.new
      @status = "on going"
      @count_turns = 0
      turn
      else
      game_end
    end
  end   

  def game_end
    puts "On est morts, on a trop galéré, salut! \u{1f91F}"
  end

end