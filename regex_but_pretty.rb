# LOOK AT THIS

%r{
    \b     # word boundary
    (      # BEGIN CAPTURE

    [0-9]+ # integers only, no decimal point
    ,?     # possibly followed by a comma...
    \s?    # possibly followed by whitespace...

    )      # END CAPTURE
    {2,}   # at least two consecutive integers -- if there's just one, no need to sort it
    \b     # word boundary
  }x



  FIELD_TEMPLATE = %r{
    \[              # start with a literal '['
    ([A-Za-z_]+)    # capture one or more word characters
    (?:\|[^\|\]]*)? # don't capture a literal '|' followed by anything except another '|' or ']'
    \]              # finish with a literal ']'
  }x

