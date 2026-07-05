# BASH SCRIPT EXPLANATION
# SIMPLE RECONNAISSANCE SCRIPT

# Check if a domain was provided
# If we missed to give the domain name, it shows "Usage: ./bash.sh <domain>"
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1
# Takes the first domain as input
TIMESTAMP=$(date +%Y%m%d_%H%M%S) 
# saves the timestamp(year/month/date_hours/minutes/seconds)
FILENAME="bash_${DOMAIN}_${TIMESTAMP}.txt"
# saves the filename with the domain name and timestamp stored as text file

echo "--- Starting Recon for $DOMAIN ---" | tee -a $FILENAME
# prints the statement in both terminal and appends in the file

# nslookup
echo "[+] Running nslookup..." | tee -a $FILENAME
# prints the statement in both terminal and appends in the file
nslookup $DOMAIN >> $FILENAME
# appends the nslookup details in the file

# Whois Lookup
echo "[+] Running whois..." | tee -a $FILENAME
# prints the statement in both terminal and appends in the file
whois $DOMAIN >> $FILENAME
# appends the whois details in the file

echo "--- Recon Complete. Results saved to $FILENAME ---"


# RUN COMMAND

chmod +x <filename>.sh
./<filename>.sh <domain_name>


# OUTPUT
Filename : bash_google.com_20260423_205856.txt

# nslookup contains
Domain Name: google.com
IPv4: 142.251.43.238
IPv6: 2404:6800:4007:82e::200e

# whois contains
Registrar
Name Servers
Domain Status
Creation Data
Expiration Data
Registrar Abuse Contact Email
Registrar Abuse Contact Phone
Domain Status
Name Server
