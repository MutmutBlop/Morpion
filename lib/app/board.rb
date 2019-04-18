
class Board

  attr_accessor :array_cases, :choose_case, :game_state_variable, :game_nil_variable

  def initialize
    # Initialize all 9 BoardCase
    @A1 = BoardCase.new("a1", " ")
    @A2 = BoardCase.new("a2", " ")
    @A3 = BoardCase.new("a3", " ")
    @B1 = BoardCase.new("b1", " ")
    @B2 = BoardCase.new("b2", " ")
    @B3 = BoardCase.new("b3", " ")
    @C1 = BoardCase.new("c1", " ")
    @C2 = BoardCase.new("c2", " ")
    @C3 = BoardCase.new("c3", " ")

    @game_state_variable = false

    @game_nil_variable = false

    @array_cases = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]

  end

  # Function that write user symbol in the case choose by current user
  def write_on_case (case_choose, player_symbol)
    @array_cases.map { |item| item.position == case_choose ? item.content = player_symbol  : item }
  end

  # This function verify each win possibilities and get the game_state_variable at true if find any
  def game_state

    if @A1.content == "o" && @A2.content == "o" && @A3.content == "o" || @A1.content == "x" && @A2.content == "x" && @A3.content == "x"
     @game_state_variable = true
    end

    # On test la 2ème ligne
    if @B1.content == "o" && @B2.content == "o" && @B3.content == "o" || @B1.content == "x" && @B2.content == "x" && @B3.content == "x"
     @game_state_variable = true
    end

    # On test la 3eme ligne
    if @C1.content == "o" && @C2.content == "o" && @C3.content == "o" || @C1.content == "x" && @C2.content == "x" && @C3.content == "x"
    @game_state_variable = true
    end

    # On test la première colone
    if @A1.content == "o" && @B1.content == "o" && @C1.content == "o" || @A1.content == "x" && @B1.content == "x" && @C1.content == "x"
     @game_state_variable = true
    end

    # On test le deuxième colone
    if @A2.content == "o" && @B2.content == "o" && @C2.content == "o" || @A2.content == "x" && @B2.content == "x" && @C2.content == "x"
     @game_state_variable = true
    end

    # On test la 3eme colone
    if @A3.content == "o" && @B3.content == "o" && @C3.content == "o" || @A3.content == "x" && @B3.content == "x" && @C3.content == "x"
     @game_state_variable = true
    end

    # On test la dagonale gauche
    if @A1.content == "o" && @B2.content == "o" && @C3.content == "o" || @A1.content == "x" && @B2.content == "x" && @C3.content == "x"
     @game_state_variable = true
    end

    # On test la diagonle droite
    if @A3.content == "o" && @B2.content == "o" && @C1.content == "o" || @A3.content == "x" && @B2.content == "x" && @C1.content == "x"
     @game_state_variable = true
    end

  end

  # Methode that verify if the board is full of "x" and "o" to stop the game as null game
  # !!! This methode is not finish
  def game_nil
    @array_cases.each { |item| item.content == /[:SPACE:]/ ? @game_nil_variable = true : @game_nil_variable = false }
  end

  # This is a view game. Normaly should be in a view class
  def show_board
    # Show empty board at initialization and get variable at each player turn
    puts "   1   2  3"
    puts " a #{@A1.content} | #{@A2.content} | #{@A3.content}"
    puts "   ---------"
    puts " b #{@B1.content} | #{@B2.content} | #{@B3.content}"
    puts "   ---------"
    puts " c #{@C1.content} | #{@C2.content} | #{@C3.content}"

  end
end
