#True
true && true 
#False
false && true 
#False
1 == 1 && 2 == 1 
#True
"test" == "test" 
#True
1 == 1 || 2 != 1 
#True
true && 1 == 1 
#False
false && 0 != 0 
#True
true || 1 == 1 
#False
"test" == "testing" 
#False
1 != 0 && 2 == 1 
#True
"test" != "testing" 
#True
!("test" == 1) 
#True
!(true && false) 
#False
!(1 == 1 && 0 != 1) 
#False
!(10 == 1 || 1000 == 1000) 
#False
!(1 != 10 || 3 == 4) 
#True
!("testing" == "testing" && "Zed" == "Cool Guy") 
#True
1 == 1 && (!("testing" == 1 || 1 == 0)) 
#False
"chunky" == "bacon" && (!(3 == 4 || 3 == 3)) 
#True
3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun")) 