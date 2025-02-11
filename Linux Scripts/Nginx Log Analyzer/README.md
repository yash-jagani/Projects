nginx access log file: https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log

chmod +x nginx-log-analyzer.sh
./nginx-log-analyzer.sh

Download the sample nginx access log file. The log file contains the following fields:

IP address
Date and time
Request method and path
Response status code
Response size
Referrer
User agent

You are required to create a shell script that reads the log file and provides the following information:

Top 5 IP addresses with the most requests
Top 5 most requested paths
Top 5 response status codes
Top 5 user agents