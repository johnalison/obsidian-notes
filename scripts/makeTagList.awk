BEGIN{
    tag = "\#[A-Za-z]+"
}

$0 ~ tag {
    #print $0
    for(i=1; i<=NF; i++){
	if($i ~ tag){
	    gsub(/[\(,\)]/, "" ,$i)
	    tags[$i]++
	}
    }
}


END{
    for(t in tags){
	print t | "sort"
    }
}
