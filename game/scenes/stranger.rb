def stranger()
    puts "The stranger bumps into you knocking you down. Do you get back up?"
    puts "1) Get back up."
    puts "2) Stay down."
    print "> "
  
    loop do
      chumba = $stdin.gets.downcase.chomp
      if chumba.include?("up") || chumba.include?("1") || chumba.include?("yes")
        puts "You get back up. They ain't ever gonna keep ya down."
        break
      else
        puts "You stay on the ground for 5 minutes. Do you want to get up yet?"
        print "> "
      end
    end
    #pick_me_up()
  end