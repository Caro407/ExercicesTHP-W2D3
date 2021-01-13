# Construction de pyramides

# Méthode qui demande et renvoie le nombre d'étages de la pyramide
def nb_floors
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (entre 1 et 25) ?"

  # nb est le nombre d'étages ou encore nombre de lignes
  nb = 0
  #Attend qu'une valeur comprise entre 1 et 25 soit rentrée pour sortir de la boucle et exécuter la suite
  while (nb < 1 || nb > 25)
    print "> "
    nb = gets.chomp.to_i
    if nb < 1 || nb > 25
      puts "Le nombre d'étages doit être compris entre 1 et 25."
    end
  end
  # Renvoie le nombre d'étages
  return(nb)
end

# Méthode de construction d'1 1/2 pyramide
def half_pyramid
  
  # Récupère le nombre d'étages
  nb = nb_floors

  #Affiche le réultat
  puts "Voici la pyramide montante:"
  # Parcourt toutes les lignes
  nb.times do |i|
    i = i + 1
    # Parcourt toutes les colonnes (il y a autant de lignes que de colonnes)
    nb.times do |j|
      j = j + 1;
      # Pour les cases à partir de la diagonale (départ haut à droite) du tableau, affiche un #
      if j >= (nb + 1 - i)
        print "#"
      else
        # Pour les cases avant la diagonale (départ haut à droite) du tableau, afiche un espace
        print " "
      end
    end # nb.times do j (colonnes)
    # Passe à la ligne suivante
    puts ""
  end # nb.times do i (lignes)
end # half_pyramid

# Méthode de construction d'1 pyramide entière
def full_pyramid
  
  # Récupère le nombre d'étages
  nb = nb_floors

  # nb est le nombre d'étages ou encore nombre de lignes
  # nb_col est le nombre de colonnes
  nb_col = 2 * nb - 1

  #Affiche le réultat
  puts "Voici la pyramide Expert:"
  nb.times do |i|
    # i est le numero de la ligne en cours
    i = i + 1
    # nb_dieses est le nombre de cases remplies
    nb_dieses = 2 * i - 1
    # nb_spaces est le nombre d'espaces de chaque côté
    nb_spaces = (nb_col - nb_dieses) / 2

    # Affiche le nombre d'espaces en cours à gauche de la pyramide pour la ligne en cours
    print ' ' * (nb_spaces)
    # Affiche le nombre de dièses pour la ligne en cours
    print '#' * (nb_dieses)
    # Affiche le nombre d'espaces à droite de la pyramide pour la ligne en cours
    print ' ' * (nb_spaces)
    # Passe à la ligne suivante
    puts ""
  end # boucle "nb.times do"
end # full_pyramid

# Méthode de construction d'un losange
def wtf_pyramid
  
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  # nb est le nombre d'étages ou encore nombre de lignes
  nb = 0
  pair = 0
  #Attend qu'un nombre pair soit entré
  while (pair == 0)
    print "> "
    nb = gets.chomp.to_i
    pair = nb % 2
    if pair == 0
      puts "Entre un nombre impair s'il te plaît."
    end
  end

  # nb est le nombre d'étages ou encore nombre de lignes
  # nb_col est le nombre de colonnes
  nb_col = 2 * nb - 1

  # Affiche le réultat
  puts "Voici la pyramide <<losange>>:"
  nb.times do |i|
    # i est le numero de la ligne en cours
    i = i + 1

    # Partie supérieure de la pyramide
    if i <= (nb + 1) / 2
      j = i
    # Partie inférieure de la pyramide
    else
      j = nb - i + 1
    end # if
    
    # nb_dieses est le nombre de cases remplies
    nb_dieses = 2 * j - 1
    # nb_spaces est le nombre d'espaces de chaque côté
    nb_spaces = (nb - nb_dieses) / 2

    # Affiche le nombre d'espaces en cours à gauche de la pyramide pour la ligne en cours
    print ' ' * (nb_spaces)
    # Affiche le nombre de dièses pour la ligne en cours
    print '#' * (nb_dieses)
    # Affiche le nombre d'espaces à droite de la pyramide pour la ligne en cours
    print ' ' * (nb_spaces)
    # Passe à la ligne suivante
    puts ""
  end # boucle "nb.times do"
  
end # wtf_pyramid

# Méthode principale
def perform
  
  puts "Bonjour et bienvenue dans le labo de construction de pyramides plus ou moins insolites : "
  puts "1. Construction d'une demi-pyramide"
  puts "2. Construction d'une pyramide entière"
  puts "3. Construction d'une pseudo-pyramide qui est en fait un losange"
  print "Entre le numéro du type de pyramide que tu veux construire : "
  num = gets.chomp

  case num
  when "1"
    # Appelle half_pyramid
    half_pyramid
  when "2"
    # Appelle full_pyramid
    full_pyramid
  when "3"
    # Appelle wtf_pyramid
    wtf_pyramid
  else
    puts "\nTon choix ne correspond à aucun item."
    puts "Au revoir."
  end # case
end

# Lance le programme
perform
