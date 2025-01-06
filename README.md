# mtk-tools

Scripts to backup routeros and perform other activities such as changing the password for a capsman SSID and generating its QR.


# change SSID password and generate QR image.

First place the information necessary in the **qr-env** file, then mount the folder that contains said file as a volume in /app.
```bash
docker run -it --rm --name qr --pull always --env-file ./qr-env --volume ./:/app sinfallas/mtk-tools:latest capsmanqr
```

# change ACL for wifi.

First place the information necessary in the **acl-env** and **maclist.txt** files, then mount the folder that contains said file as a volume in /app.
```bash
docker run -it --rm --name acl --pull always --env-file ./acl-env --volume ./:/app sinfallas/mtk-tools:latest capsmanacl
```

# backup RouterOS

First place the information necessary in the **mtkback-env** file, then mount the folder that contains said file as a volume in /app.
```bash
docker run -it --rm --name backup --pull always --env-file ./mtkback-env --volume ./:/app sinfallas/mtk-tools:latest mtkback
```

# Run Sara: RouterOS Security Inspector (https://github.com/casterbyte/Sara)

First place the your **.rsc** file, then mount the folder that contains said file as a volume in /app.
```bash
docker run -it --rm --name mtk-tools --pull always --volume ./:/app sinfallas/mtk-tools:latest sara --config-file example.rsc
```
