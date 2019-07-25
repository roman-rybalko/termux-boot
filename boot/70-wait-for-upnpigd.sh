set -x
set -e

# wait for UPnP IGD route up through a tunnel
while ! ip route get 239.255.255.250 | grep tun; do
    sleep 1
done

exit 0
