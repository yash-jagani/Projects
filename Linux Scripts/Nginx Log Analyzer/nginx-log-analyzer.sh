#! /bin/bash
 
echo -e "Top 5 IP addresses with the most requests:"
awk '{count[$1]++} END {for (ip in count) print ip, "-", count[ip], "requests"}' /home/osboxes/Documents/nginx-access.log | sort -k3,3nr | head -5
echo ""
echo -e "Top 5 most requested paths:"
awk '{count[$7]++} END {for (path in count) print path, "-", count[path], "requests"}' /home/osboxes/Documents/nginx-access.log | sort -k3,3nr | head -5
echo ""
echo -e "Top 5 response status codes:"
awk '{count[$9]++} END {for (code in count) print code, "-", count[code], "responses"}' /home/osboxes/Documents/nginx-access.log | sort -k3,3nr | head -5