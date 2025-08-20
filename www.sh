Title="NULL"
Artist="NULL"

titCtl="$(playerctl metadata | sed -n '9p')"
artCtl="$(playerctl metadata | sed -n '6p')"

while (!titCtl -eq "\n"); do
    print
done

$(playerctl metadata | sed -n '9p' | awk '{print $3}') - $(playerctl metadata | sed -n '6p' | awk '{print $3}')