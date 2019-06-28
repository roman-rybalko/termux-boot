set -x

export ALL_PROXY=http://torrent:password@proxy.romanr.info:63128

RPC_ALLOWED_IPS="192.168.1.*"
CONFIG_DIR="$HOME/storage/shared/transmission"
DOWNLOAD_DIR="$HOME/storage/external-1/Download"

wait_for()
{
    while [ ! -e "$1" ]; do
        sleep 1
    done
}

wait_for "$CONFIG_DIR"
wait_for "$DOWNLOAD_DIR"

transmission-daemon --allowed "$RPC_ALLOWED_IPS" --config-dir "$CONFIG_DIR" --download-dir "$DOWNLOAD_DIR"
