#!/usr/bin/env bash
# Made by Sinfallas <sinfallas@yahoo.com>
# Licence: GPL-2

if [[ "$EUID" != "0" ]]; then
        echo "ERROR: Debes ser root."
        exit 1
fi

docker image prune -af
cd /home/user/backup
rm -f *.rsc
rm -f *.backup
rm -f *.tar.gz
rm -f *.txt
docker run -it --rm --name backup --pull always --env-file ./mtkback-env --volume ./:/app sinfallas/mtk-tools:latest mtkback
chmod -R 777 /home/user/backup/
echo "finalizado."
exit 0
