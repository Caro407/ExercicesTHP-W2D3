# ---- PART 1 : Sign-Up

def signup
    puts 'Bonjour Utilisateur. Quel mot de passe souhaitez-vous définir ?'
    print '> '
    user_password = gets.chomp
    return user_password
end

# ---- PART 2 : Login

def login(user_password)
    puts 'Veuillez saisir à nouveau votre mot de passe.'
    print '> '
    user_verification = gets.chomp
    while user_verification != user_password
        puts 'Vous avez fait une faute : veuillez réessayer.'
        user_verification = gets.chomp
        print '> '
    end
end

# ---- PART 3 : Welcome Screen

def welcome_screen
    puts 'Voici tes plus sombres secrets MWAHAHAHA'
end

# ---- PART 4 : Perform
def perform
    user_password = signup
    login(user_password)
    welcome_screen
end

perform
