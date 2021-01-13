# 1 ---- On lance le dé.

def lancer
    number_de = 1 + rand(6)
    puts "Le dé affiche un #{number_de}."
    return number_de
end

# 2 ---- On compare le résultat du lancer par rapport aux conditions d'avancée du jeu.

def conditions(number_de)
    expected_climb = 0

    case number_de
    when (5..6)
        expected_climb = expected_climb + 1
        puts "Bien joué ! Tu avances d'une marche."
    when 1
        expected_climb = expected_climb - 1
        puts "Pas de chance ! Tu dois reculer d'une marche."
    when (2..4)
        puts 'Rien ne se passe !'
    end
    return expected_climb
end

# 3 ---- On définit le mouvement à effectuer.

def mouvement(expected_climb, position)
    #Comment j'initialise position ? Si je mets position = 0, ça va merder non ?
    if expected_climb < 0 && position < 1
        puts "Tu es déjà sur la marche #{position}, tu ne peux pas descendre plus bas !"
    elsif expected_climb == 0
        puts "Tu n'as pas bougé pour ce tour : tu es toujours sur la marche #{position}."
    else
        position = position + expected_climb
        puts "Tu es désormais sur la marche n°#{position}."
    end
    return position
end

# 4 ---- On voit si le joueur a atteint la 10ème marche. Si ce n'est pas le cas, il rejoue.

def ascension_globale(position)
    if position >= 10
        puts 'Tu es arrivé en haut, félicitations !!'
    else
        puts "Ce n'est pas encore fini ! On rejoue !"
    end
end

# 5 ---- On définit une méthode qui enchaîne les 4 étapes ci-dessus.

def partie
    position = 0
    compteur_lancers = 0
    while position < 10
        valeur_de = lancer
        avancee = conditions(valeur_de)
        position = mouvement(avancee, position)
        ascension_globale(position)
        compteur_lancers += 1
        puts "On finit le tour n° #{compteur_lancers} !\n\n"
    end
    return compteur_lancers
end

#partie

# 6 ---- On veut savoir le nombre moyen de lancers pour arriver en haut (sur 100 parties).

def average_finish_time
    
    nombre_lancers_total = 0
    nombre_parties = 100

    nombre_parties.times do |index_parties|
        nombre_lancers_total += partie
    end

    nombre_moyen_lancers = nombre_lancers_total / nombre_parties
    puts "Il faut en moyenne #{nombre_moyen_lancers} lancers de dés pour arriver en haut !"
end

average_finish_time