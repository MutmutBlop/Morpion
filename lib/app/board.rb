
class Board

  attr_accessor :array_cases, :choose_case, :game_state_variable

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
    @C3 = BoardCase.new("c3", " ")

    @game_state_variable = false

    @array_cases = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]

  end

  def write_on_case (case_choose, player_symbol)
    # Fonction qui ecrit le symbole de l'utilisateur en fonction de la case choisie
    @array_cases.map { |item| item.position == case_choose ? item.content = player_symbol  : item }
    # Et retourne show
  end

  def game_state
    #  vérifie en fonction de la combinaison des BoardCases si la partie est finie (= un joueur a gagné ou bien les 9 cases sont remplies sans vainqueur).

    #@array_cases.each{ |i| puts i.content.include?(" ") ? @game_state = true : bool = false  }
      # On test la première ligne
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

  def game_nil
    @array_cases.each { |item| item.content.include?(" ") }
  end

  # Cette fonction devra être dans la classe Show
  def show_board
    # affiche le plateau vide à l'init et récupère les variables de board pour les afficher
    puts "   1   2  3"
    puts " a #{@A1.content} | #{@A2.content} | #{@A3.content}"
    puts "   ---------"
    puts " b #{@B1.content} | #{@B2.content} | #{@B3.content}"
    puts "   ---------"
    puts " c #{@C1.content} | #{@C2.content} | #{@C3.content}"

  end


end
