CLOUDFLARE_FILE_PATH=${1:-./cloudflare.conf}

echo "# https://www.cloudflare.com/ips" > $CLOUDFLARE_FILE_PATH;
echo "" >> $CLOUDFLARE_FILE_PATH;

echo "# IPv4" >> $CLOUDFLARE_FILE_PATH;
for i in `curl -s -L https://www.cloudflare.com/ips-v4`; do
echo "allow $i;" >> $CLOUDFLARE_FILE_PATH;
done

echo "" >> $CLOUDFLARE_FILE_PATH;
echo "# IPv6" >> $CLOUDFLARE_FILE_PATH;
for i in `curl -s -L https://www.cloudflare.com/ips-v6`; do
echo "allow $i;" >> $CLOUDFLARE_FILE_PATH;
done