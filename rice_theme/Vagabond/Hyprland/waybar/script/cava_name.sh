while 

echo "$(playerctl metadata | sed -n '9p' | awk '{print $3}') - $(playerctl metadata | sed -n '6p' | awk '{print $3}')"