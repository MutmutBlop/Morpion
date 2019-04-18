class Game

  attr_accessor :players, :board

  def initialize
    @players = []
    @board = Board.new
  end

  # Function that ask the 2 players name
  def ask_name
    puts "Nom du player 1 ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "o")

    puts "Nom du player 2 ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "x")
  end

  # Function that make play players one by one
  def select_player
    while @board.game_state_variable == false
      @players.each { |item| choose_case(item) }
    end
  end

  # As the case the user wants to play and return symbol into the case in the selected case
  def choose_case (player)
    # If a player win
    if @board.game_state_variable == true
      puts "Bravo #{player.name}!! Tu as gagné !!"
    # If the game is null
    elsif @board.game_nil_variable == true
      puts "la partie est finie, partie nul!!"
    # When the game is runing
    else
      puts "#{player.name} avec le symbole '#{player.symbol}' à toi de jouer entre la case que tu souhaites. Exemple : a1, b2, c3..."
      print "> "
      @board.write_on_case(gets.chomp.to_s, player.symbol)
      @board.show_board
      @board.game_state
    end
  end

  # Ask if the user want to play an other game
  # !!! This is not working properly because variable keep value from the last game
  def ask_new_game
    puts "Tape rejouer si tu veux 'rejouer' au morpion ! Ou n'import quel charactère pour sortir "
    print "> "
    new_game = gets.chomp.to_s

    if new_game == "rejouer"
      # Put back the array all blank
      @board.array_cases.map! { |item| item.content = " " }
      # call the self perform to play again
      self.perform
    end
  end

  def perform
    ask_name
    puts "Le nom du joueur 1 est #{@players[0].name} et son symbole est #{@players[0].symbol}"
    puts "Le nom du joueur 2 est #{@players[1].name} et son symbole est #{@players[1].symbol}"
    # Show empty board before playing
    @board.show_board
    select_player
    ask_new_game
  end
end
