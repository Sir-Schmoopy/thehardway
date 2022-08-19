# You walk to a bar to meet friends for a drink.
# ENCOUNTER -- something that knocks you down. Do you get back up again?
# Make it to bar. Multiple drink options.

require_relative "drinks"
require_relative "scenes"

def start
  puts "You are heading to a bar to meet some friends for a drink."
  puts "However, your phone has died and you don't remember where the bar is."
  puts "You see a bar down the road, a stranger with a phone in front of you, and a dog across the street."
  puts "What do you do?"
  print "> "
  choice = $stdin.gets.downcase.chomp

  if choice.include?("home")
    puts "You head home, abandoning your friends and they never invite you to outings again."

    # elsif choice.include?("dog") && (choice.include?("safe") || choice.include?("safely") || choice.include?("crosswalk") || choice.include?("look"))
  elsif choice =~ /dog/i && choice =~ /(safe(ly)?|crosswalk|look)/
    safedog()
  elsif choice.include?("dog")
    dog()
  elsif choice.include?("bar")
    puts "You walk to the bar down the street and recognize it as the bar you're supposed to meet your friends at."
    bar()
  elsif choice.include?("stranger") || (choice.include?("phone") && choice.include?("stranger"))
    stranger()
  else
    "I don't know how that's supposed to help you here."
  end
end

start()
