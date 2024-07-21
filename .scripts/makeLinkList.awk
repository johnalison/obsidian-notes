BEGIN{
    tag = "\#[A-Za-z]+"
    #tag = '/\[\[/' 
}

/\[\[/ {
    #print $0
    for(i=1; i<=NF; i++){
	if($i ~ /\[\[/){
	    gsub(/\[\[/, "", $i)
	    gsub(/\]\]/, "", $i)
	    #gsub(/[\(,\)]/, "" ,$i)
	    tags[$i]++
	}
    }
}


END{
    for(t in tags){
	print t | "sort"
    }
}
