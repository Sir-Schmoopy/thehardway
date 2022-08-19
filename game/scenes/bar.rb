def bar
    puts "It looks like you've made it to the bar before any of your friends."
    puts "you decide to order a drink while you wait. On the menu you see: "
    puts "> A whiskey drink."
    puts "> A vodka drink."
    puts "> A lager drink."
    puts "> A cider drink."
    print "> "
    drink = $stdin.gets.chomp.downcase
  
    # case drink.downcase
    # when /whiske?y/   ; whiskey_drink()
    # when /vodka/      ; vodka_drink()
    # when /lager/      ; lager_drink()
    # when /cider/      ; cider_drink()
    # when /none/       ; no_drink()
    # when /(all|each)/ ; alcoholism()
    # end
  
    # Finding words?
    # drink =~ $stdin.gets.downcase.chomp
    # if drink.match(/whiskey/)
    # whiskey_drink()"
    # end

    case
    when (md = drink.match(/(whiske?y|vodka|lager|cider)/i))
      drink_the(md.captures.first) # send "#{$1}_drink"
    # when drink.include?("whiskey") || drink.include?("whisky")
    #   whiskey_drink()
    # when drink.include?("vodka")
    #   vodka_drink()
    # when drink.include?("lager")
    #   lager_drink()
    # when drink.include?("cider")
    #   cider_drink()
    when drink.include?("none")
      no_drink()
    when drink.include?("all") || drink.include?("each")
      alcoholism()
    end
  end
