def start_up
 puts "Wanna play? (yes/no)"
 input = gets.chomp.downcase
 if input == "yes"
     puts "Cool! Let's start!"
 elsif input == "no"
     puts "See ya soon!"
 else
    puts "What?"
 end
end

start_up
