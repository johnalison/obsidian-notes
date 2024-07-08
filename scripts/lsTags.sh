#paste -d "|" - - - - - - - < tags | column -t -s "|"
cat tags | pr -7 -t  -w 200
