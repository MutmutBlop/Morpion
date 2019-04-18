class Game

  attr_accessor :players, :player1, :player2

  def initialize
    @player1
    @player2
  end

  def ask_name
    puts "Nom du player 1 ?"
    print "> "
    @player1 = Player.new(gets.chomp.to_s, "x")

    puts "Nom du player 2 ?"
    print "> "
    @player2 = Player.new(gets.chomp.to_s, "o")
  end

  def perform
    ask_name
    puts "Le nom du joueur 1 est #{@player1.name} et son symbole est #{@player1.symbol}"
    puts "Le nom du joueur 2 est #{@player2.name} et son symbole est #{@player2.symbol}"
  end

end
