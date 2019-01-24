require 'board'
require 'show'
require 'player'

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :array_players

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  @player1 = Player.new("Joueur 1")
  @player2 = Player.new("Joueur 2")
  @status = "on going"
  @board = Board.new
  @array_players = [@player1, @player2]
  @current_player = @player1

  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
    #Elle affiche le plateau
    Show.new.show_board(@board)
    #demande au joueur ce qu'il joue, 
    @board.play_turn(@current_player)
    #@show_board(board)
    #vérifie si un joueur a gagné, 

    #passe au joueur suivant si la partie n'est pas finie.
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end