# Check if a domain was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
FILENAME="bash_${DOMAIN}_${TIMESTAMP}.txt"

echo "--- Starting Recon for $DOMAIN ---" | tee -a $FILENAME

# DNS Lookup
echo "[+] Running nslookup..." | tee -a $FILENAME
nslookup $DOMAIN >> $FILENAME

# Whois Lookup
echo "[+] Running whois..." | tee -a $FILENAME
whois $DOMAIN >> $FILENAME

echo "--- Recon Complete. Results saved to $FILENAME ---"
