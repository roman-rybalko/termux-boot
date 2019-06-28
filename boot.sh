[ -n "$1" ] || exec "$0" logged >"$0".log 2>&1 </dev/null

set -x

for s in "$HOME/.termux/boot"/*; do
    echo "$s"
done | sort | while read s; do
    sh -x "$s"
done
