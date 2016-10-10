def start_up
 puts "Wanna play? (yes/no)"
 input = gets.chomp.downcase
 if input == "yes"
     puts "Cool! Let's start!"
     new_game
 elsif input == "no"
     puts "See ya soon!"
 else
    puts "What?"
 end
end

def new_game
    secret_code = generate_secret_code
    puts "Loading..."
    puts "The goal of the game is for your input to match the computer's selection. Keep trying until you get it."
    puts "Enter four letters out of r (red), g (green), b (blue), and y (yellow). You may put multiple of the same Letter."
    
    user_input = gets.chomp.downcase.chars
    
    if user_input == secret_code
        puts "ACHIEVEMENT UNLOCKED: Boss Status! You got it right!"
    else
        num_colors_matching = numbers_matching(user_input, secret_code)
        num_colors_right_position = numbers_matching_position(user_input, secret_code)
        puts "You have #{num_colors_matching} colors matching, #{num_colors_right_position} in the right position. "
    end
end

def generate_secret_code
    colors = ["r", "g", "b", "y"]
    code = []
    4.times do 
     code.push(colors.sample)   
    end
   code
end

def numbers_matching(guess, code)
    guess.uniq!
    count = 0
    guess.each do |color|
        if code.include?(color)
            count += 1 
        end 
    end
    count
end

def numbers_matching_position(guess, code)
     count = 0
     guess.each.with_index do |element, index|
        if guess[index] == code[index]
            count += 1
        end
     end
     count
end


start_up
