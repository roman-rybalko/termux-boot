set -x
set -e

basename "$0" .sh | grep -E '^.+-wait-for-storage-'
name=`basename "$0" .sh | sed -r 's/.+-wait-for-storage-//'`
[ -n "$name" ]

while [ ! -e "$HOME/storage/$name" ]; do
    sleep 1
done

exit 0
