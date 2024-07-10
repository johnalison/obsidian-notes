awk 'BEGIN{RS="-";}; /#Paradox/ {print "\n"; print FILENAME ":" $0} ' BookNotes/*md



