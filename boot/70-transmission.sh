set -x

export ALL_PROXY=http://torrent:password@proxy.romanr.info:63128

RPC_ALLOWED_IPS="192.168.1.*"
CONFIG_DIR="$HOME/storage/shared/transmission"

transmission-daemon --allowed "$RPC_ALLOWED_IPS" --config-dir "$CONFIG_DIR"
