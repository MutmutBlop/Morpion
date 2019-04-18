
class Board

  attr_accessor :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3, :array_cases, :choose_case

  def initialize
    # Instancier les 9 board_case
    @A1 = BoardCase.new("a1", " ")
    @A2 = BoardCase.new("a2", " ")
    @A3 = BoardCase.new("a3", " ")
    @B1 = BoardCase.new("b1", " ")
    @B2 = BoardCase.new("b2", " ")
    @B3 = BoardCase.new("b3", " ")
    @C1 = BoardCase.new("c1", " ")
    @C2 = BoardCase.new("c2", " ")
    @C3 = BoardCase.new("c2", " ")

    @array_cases = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]

  end

  def write_on_case (player)
    # Fonction qui ecrit le symbole de l'utilisateur en fonction de la case choisie
    @board.array_cases.map { |i| i.position.include?(@choose_case) ? true : false }

    player = gets.chomp.to_s
    # Et retourne show

  end

  def game_state
    i = 0
    #  vérifie en fonction de la combinaison des BoardCases si la partie est finie (= un joueur a gagné ou bien les 9 cases sont remplies sans vainqueur).

    # @array_cases.each{ |i| puts i.content.include?(" ") ? @game_state = true : bool = false  }
    while i <= 9
      # On test la première ligne
      if @A1.content == "o" && @A2.content == "o" && @A3.content == "o" || @A1.content == "x" && @A2.content == "x" && @A3.content == "x"
       return true
      end

      # On test la 2ème ligne
      if @B1.content == "o" && @B2.content == "o" && @B3.content == "o" || @B1.content == "x" && @B2.content == "x" && @B3.content == "x"
       return true
      end

      # On test la 3eme ligne
      if @C1.content == "o" && @C2.content == "o" && @C3.content == "o" || @C1.content == "x" && @C2.content == "x" && @C3.content == "x"
       return true
      end

      # On test la première colone
      if @A1.content == "o" && @B1.content == "o" && @C1.content == "o" || @A1.content == "x" && @B1.content == "x" && @C1.content == "x"
       return true
      end

      # On test le deuxième colone
      if @A2.content == "o" && @B2.content == "o" && @C2.content == "o" || @A2.content == "x" && @B2.content == "x" && @C2.content == "x"
       return true
      end

      # On test la 3eme colone
      if @A3.content == "o" && @B3.content == "o" && @C3.content == "o" || @A3.content == "x" && @B3.content == "x" && @C3.content == "x"
       return true
      end

      # On test la dagonale gauche
      if @A1.content == "o" && @B2.content == "o" && @C3.content == "o" || @A1.content == "x" && @B2.content == "x" && @C3.content == "x"
       return true
      end

      # On test la diagonle droite
      if @A3.content == "o" && @B2.content == "o" && @C1.content == "o" || @A3.content == "x" && @B2.content == "x" && @C1.content == "x"
       return true
      end

      i += 1
    end

  end

  # Cette fonction devra être dans la classe Show
  def show_board
    # affiche le plateau vide à l'init et récupère les variables de board pour les afficher
    print @array_cases
  end


end
