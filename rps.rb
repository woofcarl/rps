def play_again?
   puts "Would you like to play? (yes/no)"
    input = gets.chomp.downcase

    if input == "yes"
      play_game
    elsif input == "no"
      puts "See you next time!"
    end 
end

def play_game
    puts "Let's begin!"
    puts "starting game..."
    puts "Press 'r' for rock, 'p' for paper, and 's' for scissors."

    user_input = gets.chomp.downcase
    computer_input = ["r", "p", "s"].sample

    case [user_input, computer_input]
    when["r", "s"], ["s", "p"], ["p", "r"]
        puts "You won! COngrats!"
    when["r", "r"], ["p", "p"], ["s", "s"]
        puts "You tied!"
    else
        puts "You lost, sorry."
    end
     puts "The computer chose #{computer_input}."
     play_again?
end

play_again?
