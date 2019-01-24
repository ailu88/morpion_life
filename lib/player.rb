class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
attr_reader :name, :sign
  
  def initialize (nom)
  	puts " Quel est ton nom ?"
  	print "> "
  	@name = gets.chomp
  	puts "Choisis ton signe !"
  	print "> "
  	@sign = gets.chomp[0]
  end
end