tabby_cat = "\tI'm tabbed in."
persion_cat = "\I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = '''
I\'ll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
'''
puts tabby_cat
puts persion_cat
puts backslash_cat
puts fat_cat

fluffy_cat = """
\aidk what this does
 that should enter? \rdid it? 
 what is \fformfeed?
"""

puts fluffy_cat

# Escape	What it does.
# \\	    Backslash ()
# \'	    Single-quote (')
# \"	    Double-quote (")
# \a	    ASCII bell (BEL)
# \b	    ASCII backspace (BS)
# \f	    ASCII formfeed (FF)
# \n	    ASCII linefeed (LF)
# \r	    ASCII Carriage Return (CR)
# \t	    ASCII Horizontal Tab (TAB)
# \uxxxx    Character with 16-bit hex value xxxx (Unicode only)
# \v	    ASCII vertical tab (VT)
# \ooo	    Character with octal value ooo
# \xhh	    Character with hex value hh

filler_formatter = "#{this will just live here right now}"