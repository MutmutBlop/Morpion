class Game

  attr_accessor :players, :board

  def initialize
    @players = []
    @board = Board.new
  end

  def ask_name
    puts "Nom du player 1 ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "x")

    puts "Nom du player 2 ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "o")
  end

  def select_player
    # Faire alterner les joueurs entre eux
    # Faire apparaitre avec un puts le joueur courant

    while @board.game_state_variable == false
      @players.each { |item| choose_case(item) }

      if @board.game_state_variable == true
        puts "Bravo !! Tu as gagné !!"
      elsif @board.game_nil == false
        puts "la partie est finie, partie nul!!"
      end
    end

    #end

    # if @board.game_nil == true
    #
    # else
    #   puts "la partie est finie, partie nul!!"
    # end
  end

  def choose_case (player)
    # Classe qui demande à l'utilisateur d'entrer la case qu'il souhaite jouer
      # Retourne le symbole suivant l'utilisateur en cours
    puts "#{player.name} avec le symbole #{player.symbol} à toi de jouer entre la case que tu souhaites"
    print "> "
    @board.write_on_case(gets.chomp.to_s, player.symbol)
    @board.show_board
    @board.game_state
  end

  def ask_new_game
    # n = 0
    #  s'occupe de finir la partie si un joueur a gagné et propose aux joueurs de faire une nouvelle partie ensuite.
    #  ????? Faire un apel de game_state depuis board pour afficher l'état du jeux
    #while n <= 10
      ask_name
      puts "Le nom du joueur 1 est #{@players[0].name} et son symbole est #{@players[0].symbol}"
      puts "Le nom du joueur 2 est #{@players[1].name} et son symbole est #{@players[1].symbol}"
      @board.show_board
      select_player

    #    n += 1
    # end
  end

  def perform
    ask_new_game
  end

end
