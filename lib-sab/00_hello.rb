# Methode pour dire bonjour
def say_hello(first_name)
  puts "Bonjour #{first_name} !"
end

# Méthode qui demande un prénom
def ask_first_name
  # Interroge l'utilisateur
  puts "Quel est ton prénom ?"
  print ">"
  first_name = gets.chomp
  # Renvoie le prénom
  return(first_name)
end

# Méthode principale qui appelle les méthodes say_hello et ask_first_name
def perform
  first_name = ask_first_name()
  say_hello(first_name)
end

# Lancement du programme
perform
