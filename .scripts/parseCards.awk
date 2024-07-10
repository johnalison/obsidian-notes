BEGIN{
    debug = 0
    tag = "\#[A-Za-z]+"
} 

# Start of a new card
/^- / {
    # debuging 
    nCards++ 
    if(debug) print "Heve New card number" nCards

    # Print old card
    printCard()

    clearOldCard()
}

# Collect lines for this card
{
    cardFilelName = FILENAME
    card[lineNum++] = $0

    # Collect tagss
    for(i = 1; i <= NF; i++){
	if($i ~ tag){
	    if(debug) print "Match Tag:", $i
	    gsub("#","",$i)
	    tags[$i]++
	}
    }
}


END{
    printCard()
}

# Collect lines for this card
function printCard(){
    if(debug) print "in printCard", matchTag
    # Print old card
    if(matchTag) {
	if(debug) print "Have matchTag"
	if( !(matchTag in tags) )
	    return
    }
    
    if(debug){
	print "\t Card number ",nCards
	print " --------------------- "
    }

    print(cardFilelName,"\n")
    
    for(line in card)
	print card[line]

    print("------------------------------------","\n")

}



# Collect lines for this card
function clearOldCard(){
    delete card
    delete tags
}
