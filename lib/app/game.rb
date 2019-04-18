class Game

  attr_accessor :players, :board, :chomp_player1, :chomp_player2

  def initialize
    @players = []
    @board = Board.new
    @chomp_player1
    @chomp_player2
  end

  def ask_name
    puts "Nom du player 1 ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "x")

    puts "Nom du player 2 ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "o")
  end

  def change_player
    # Faire alterner les joueurs entre eux
    # Faire apparaitre avec un puts le joueur courant
    while @board.game_state == false
      puts "#{@players[0].name} avec le symbole #{@players[0].symbol} à toi de jouer entre la case que tu souhaites"
      print "> "
      @chomp_player1 = gets.chomp.to_s

      puts "#{@players[1].name} avec le symbole #{@players[1].symbol} à toi de jouer entre la case que tu souhaites"
      print "> "
      @chomp_player2 = gets.chomp.to_s
    end

  end

  # def choose_case
  #   # Classe qui demande à l'utilisateur d'entrer la case qu'il souhaite jouer
  #     # Retourne le symbole suivant l'utilisateur en cours
  #
  #
  # end

  def ask_new_game
    #  s'occupe de finir la partie si un joueur a gagné et propose aux joueurs de faire une nouvelle partie ensuite.
    #  ????? Faire un apel de game_state depuis board pour afficher l'état du jeux

  end

  def perform
    ask_name
    puts "Le nom du joueur 1 est #{@players[0].name} et son symbole est #{@players[0].symbol}"
    puts "Le nom du joueur 2 est #{@players[1].name} et son symbole est #{@players[1].symbol}"
    change_player
  end

end
