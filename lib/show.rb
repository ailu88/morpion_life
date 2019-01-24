class Show

 def show_board(board)
#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  0.upto(2) do |i|
   0.upto(2) do |j|
    print "|" + board.array_of_rows[i][j].state.to_s
   end
   print "|"
   puts ""
  end
  # puts " 1 2 3\nA|#{board.array_of_rows[0].each.state.join('|')}|\nB|#{board.array_of_rows[1].join('|')}|\nC|#{board[2].array_of_rows.join('|')}|"
  # puts board.array_of_rows[0][0].state
 end
end