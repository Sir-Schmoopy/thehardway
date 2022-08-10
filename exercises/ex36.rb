# You walk to a bar to meet friends for a drink.
# ENCOUNTER -- something that knocks you down. Do you get back up again?
# Make it to bar. Multiple drink options. 

def whiskey_drink
    puts "You drink the whiskey drink."
end
def vodka_drink
    puts "You drink the vodka drink."
end
def lager_drink
    puts "You drink the lager drink."
end
def cider_drink
    puts "You drink the cider drink."
end
def no_drink
    puts "You don't have any drinks."
end
def alcoholism
    puts "Well that's a decision."  
end

def bar
    puts "It looks like you've made it to the bar before any of your friends."
    puts "you decide to order a drink while you wait. On the menu you see: "
    puts "> A whiskey drink."
    puts "> A vodka drink."
    puts "> A lager drink."
    puts "> A cider drink."
    drink = $stdin.gets.chomp.downcase

    case drink.downcase
    when /whiske?y/   ; whiskey_drink()
    when /vodka/      ; vodka_drink()
    when /lager/      ; lager_drink()
    when /cider/      ; cider_drink()
    when /none/       ; no_drink()
    when /(all|each)/ ; alcoholism()
    end



    case 
    when drink.include?("whiskey") || drink.include?("whisky")
        whiskey_drink()
    when drink.include?("vodka")
        vodka_drink()
    when drink.include?("lager")
        lager_drink()
    when drink.include?("cider")
        cider_drink()
    when drink.include?("none")
        no_drink()
    when drink.include?("all") || drink.include?("each")
        alcoholism()
    end
end

def start
    puts "You are heading to a bar to meet some friends for a drink."
    puts "However, your phone has died and you don't remember where the bar is."
    puts "You see a bar down the road, a stranger with a phone in front of you, and a dog across the street."
    puts "What do you do?"
    choice = $stdin.gets.chomp

    if choice.include?("home")
        puts "You head home, abandoning your friends and they never invite you to outings again."
    
        # elsif choice.include?("dog") && (choice.include?("safe") || choice.include?("safely") || choice.include?("crosswalk") || choice.include?("look"))
    elsif choice =~ /dog/i && choice =~ /(safe(ly)?|crosswalk|look)/
        puts "You cross the street SAFELY and pet the dog. The dog is a very good boy. You win."

    elsif choice.include?("dog")
        puts "You cross the street to pet the dog, but don't look both ways and are hit by a truck."

    elsif choice.include?("bar")
        puts "You walk to the bar down the street and recognize it as the bar you're supposed to meet your friends at."
        bar()

    elsif choice.include?("stranger") || (choice.include?("phone") && choice.include?("stranger"))
        puts "The stranger bumps into you knocking you down. What do you do?"
        puts "> Get back up again."
        puts "> Stay down."
        
    else
        "I don't know how that's supposed to help you here."
    end
end

start()