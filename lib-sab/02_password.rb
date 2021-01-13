
# Méthode demandant le mot de passe initial à l'utilisateur
def signup
  puts "Définis ton mot de passe"
  print "> "
  mdp = gets.chomp
  return (mdp)
end

# Méthode demandant à l'utilisateur de s'authentifier et vérifiant que le mot de passe est correct
def login(signup_mdp)
  puts "Entre ton mot de passe"
  print "> "
  mdp = gets.chomp
  # Tant que le mot de passe entré n'est pas le même que le mode de passe initial
  while(mdp != signup_mdp)
    puts "Ton mot de passe est erroné, ré-essaie."
    print "Nouvel essai : "
    mdp = gets.chomp
  end
end

# Méthode d'affichage des messages de bienvenue
def welcome_screen
  puts "Bravo! Tu es conecté."
  puts "Bienvenue dans ta zone secrète."
end

# Méthode principale : appelle chaque méthode
def perform
  mdp = signup
  login(mdp)
  welcome_screen
end

# Lance le programme
perform