songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(array)
  array.each_with_index do |item, i|
    puts "#{i+1}. #{item}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  
  if !array[user_response.to_i]
    puts "Invalid input, please try again"
  elsif user_response.to_i.to_s == user_response
      puts "playing #{array[user_response.to_i - 1]}"
  elsif array.include?(user_response)
    puts  "Playing #{user_response}"
  elsif !array.include?(user_response)
    puts  "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_response_run = ""
  while user_response_run == ""
    puts "Please enter a command:"
    user_response_run = gets.chomp
    if user_response_run == "list"
      list(songs)
    elsif user_response_run == "play"
      play(songs)
    elsif user_response_run == "help"
      help
    elsif user_response_run == "exit"
      exit_jukebox
    else
      help
    end
  end
end
