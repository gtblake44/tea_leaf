# tic tac toe board prints out to screen
# user selects which square to place their x
# computer selects an empty square
# user wins when all squares are filled and 3 in a row are x's or o's

def initialize_board
  b = { }
  (1..9).each {|position| b[position] = " "}
  b
end

def draw_board(b)
  puts " #{b[1]}  | #{b[2]}  | #{b[3]}  "
  puts "----------+----------+----------"
  puts "  #{b[4]} | #{b[5]}  | #{b[6]}  "
  puts "----------+----------+----------"
  puts " #{b[7]}  | #{b[8]}  | #{b[9]}  "
end

def player_picks_square(b)
  puts "Choose a square to place your x"
  position = gets.chomp.to_i
  b[position] = 'X'
end

board = initialize_board
draw_board





