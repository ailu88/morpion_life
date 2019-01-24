class BoardCases
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :state, :id
  
  def initialize(board_case)
  	@id = board_case
  	@state = "_"
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
  end
  
end