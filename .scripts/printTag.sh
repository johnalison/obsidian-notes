#echo $1
awk -f scripts/parseCards.awk matchTag=$1 BookNotes/*.md 
