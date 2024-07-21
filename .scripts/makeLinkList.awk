
{
while (match($0, /\[\[.*?\]\]/)) {
    thisSub = substr($0, RSTART, RLENGTH)
    gsub(/\[\[/, "", thisSub)
    gsub(/\]\]/, "", thisSub)    
    tags[thisSub]++
    print "Matched part:", thisSub
    $0 = substr($0, RSTART + RLENGTH)  # Move to the next part of the line
    }
}

#BEGIN{
#    tag = "\#[A-Za-z]+"
#    #tag = '/\[\[/' 
#}
#
#/\[\[/ {
#    #print $0
#    for(i=1; i<=NF; i++){
#	if($i ~ /\[\[/){
#	    gsub(/\[\[/, "", $i)
#	    gsub(/\]\]/, "", $i)
#	    #gsub(/[\(,\)]/, "" ,$i)
#	    tags[$i]++
#	}
#    }
#}
#

END{
    for(t in tags){
	print t | "sort"
    }
}
