allow_interface=("enp42s0" "wg0-mullvad")

ip addr > /tmp/.waybar_ipaddr

echo $allow_interface

while read -r line; do
    parsed=$line | awk '{print $2}'
    echo $parsed
    echo -e "aaa\n"
done < /tmp/.waybar_ipaddr