# mtk-tools

Scripts to backup routeros and perform other activities such as changing the key for a capsman SSID and generating its QR.


# change SSID password and generate QR image.

First place the information necessary to access the databases in the **qr-env** file, then mount the folder that contains said file as a volume in /app.
```bash
docker run -it --rm --name qr --env-file ./qr-env --volume ./:/app sinfallas/mtk-tools:latest capsmanqr
```

# backup RouterOS

First place the information necessary to access the databases in the **mtkback-env** file, then mount the folder that contains said file as a volume in /app.
```bash
docker run -it --rm --name backup --env-file ./mtkback-env --volume ./:/app sinfallas/mtk-tools:latest mtkback
```
