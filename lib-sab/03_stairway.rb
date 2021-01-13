# Jeu Stairway

# Méthode lance le dé
def throw_dice
  # Valeur affichée sur le dé (1 à 6)
  value_dice = 0
=begin
  puts "Appuie sur la touche 'ENTER' pour lancer le dé"
  key = gets.chomp
=end
  # Lance le dé
  value_dice = 1 + rand(6)
  print "Le dé affiche la valeur #{value_dice} => "
  return(value_dice)
end # throw_dice

# Méthode réalisant les mouvements en fonction de la veleur du dé
def move_stair(value_dice, num_stair)

  # Contrôle la valeur du dé, effectue les mouvements correspondants et l'indique au joueur
  case value_dice
  when 5, 6
    num_stair = num_stair + 1
    puts "Tu avances d'une marche: tu te trouves donc à la marche #{num_stair}"
  when 1
    if num_stair >= 1
      num_stair = num_stair - 1
      puts "Tu recules d'une marche: tu te trouves donc à la marche #{num_stair}"
    end
  when 2, 3, 4
    puts "Tu restes sur la marche actuelle #{num_stair}"
  end # case

  # Retourne le numéro de marche courante
  return(num_stair)
end

# Méthode réalisant une partie de Stairway et retourner le nombre de tours pour finir la partie
def game
  # Nombre total de marches
  nb_stairs = 10
  # Numéro de la marche en cours, initialisé à 0
  num_stair = 0
  # Valeur du dé
  num_dice = 0
  # Nombre de tours
  counter = 0

  # Continue la partie tant que la 10ème marche n'est pas atteinte
  while (num_stair < nb_stairs)
      # Compte le nombre de tours
    counter = counter + 1
    # Lance le dé
    num_dice = throw_dice()

    # Fait les mouvements en fonction de la valeur du dé
    num_stair = move_stair(num_dice, num_stair)

  end # while

  puts "\n  > Bravo! Tu es arrivé(e) à la 10ème marche en #{counter} tours!"
  return(counter)
end # game

# Méthode lançant au moins 100 parties
def average_finish_time
  nb_games = 100
  nb_turns = 0
  average = 0.0

  nb_games.times do
    nb_turns = nb_turns + game()
    # Saute une ligne entre chaque partie
    puts ""
  end

  average = nb_turns / nb_games
  puts ">> Le nombre de tours moyen pour atteindre la 10ème marche est: #{average}"
end

# Méthode principale
def perform
  average_finish_time
end

# Lance le programme
perform