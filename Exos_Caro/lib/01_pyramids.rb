def etages
    puts "Hé salut ! Donne-moi un nombre entre 1 et 25 pour définir le nombre d'étages de la pyramide :)"
    print "> "
    number = gets.chomp.to_i
    return number
end

def half_pyramid(number)
    print "Voici la pyramide :"

    number = number + 1

    number.times do |i|
    spaces = number - i
    spaces.times do |j|
        print " "
    end
    i.times do |j|
        print "#"
        end
        puts ""
    end
end

def full_pyramid(number)
    number.times do |i| 
        i = i + 1
        colonnes = (2 * number) - 1
        dieses = 2 * i - 1
        espaces = (colonnes - dieses)/2
  
        print ' ' * (espaces)
        print '#' * (dieses)
        print ' ' * (espaces)
        puts ''
    end
end

def perform
    number = etages
    full_pyramid(number)
end

#perform

# ------------- WTF PYRAMID

def nombre_pair(number)
    if number % 2 == 0
        puts "Ne mettez que des nombres impairs svp !"
        etages
    else
        number_floors = number
        return number_floors
    end
end


def wtf_pyramid_dessus (number_floors)
    dessus = (number_floors - 1)/2

    dessus.times do |index_etages|
        index_etages = index_etages + 1
        colonnes = number_floors
        dieses = 2 * index_etages - 1
        espaces = (colonnes - dieses)/2

        print ' ' * (espaces)
        print '#' * (dieses)
        print ' ' * (espaces)
        puts ''
    end
end

def wtf_pyramid_milieu (number_floors)
    print '#' * (number_floors)
    puts ''
end

def wtf_pyramid_dessous(number_floors)
    dessous = (number_floors - 1)/2
    
    dessous.times do |index_etages|
        index_etages = index_etages + 1
        colonnes = number_floors
        espaces = index_etages
        dieses = (colonnes - 2 * index_etages)
        espaces = (colonnes - dieses)/2

        print ' ' * (espaces)
        print '#' * (dieses)
        print ' ' * (espaces)
        puts ''
    end
end

def wtf_pyramid
    number = etages
    number_floors = nombre_pair(number)
    wtf_pyramid_dessus(number_floors)
    wtf_pyramid_milieu(number_floors)
    wtf_pyramid_dessous(number_floors)
end

wtf_pyramid