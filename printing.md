# How to set up a printer through the command line

1. Assuming the cups service is installed and active, navigate to http://localhost:631/
2. The help section is here: http://localhost:631/help/network.html
3. Find the printer uri

```bash
lpinfo --include-schemes dnssd -v
network dnssd://Acme%20Laser%20Pro._ipp._tcp.local./?uuid=545253fb-1cb7-4d8d-98ed-ab6cd607cea7
network dnssd://Bar99._printer.tcp.local./?uuid=f9efff58-9086-4c95-accb-81dee876a475
network dnssd://Example%20EX-42._ipps._tcp.local./?uuid=4a0c67ad-2824-4ddf-9115-7d4226c5fe65
network dnssd://Foo%20Fighter-1969._pdl-datastream._tcp.local./?uuid=4e216bea-c3de-4f65-a710-c99e11c80d2b
```

4. The lpadmin command is used to create, modify, or delete a printer. The -p option specifies a printer to create or modify. The printername is any arbitrary name you choose to assign to this printer.

```bash
lpadmin -p lexmark -E -v ipp://192.168.1.23/ipp/print -m everywhere
lpadmin -p lexmark dnssd://Lexmark%20CS317dn._ipp._tcp.local/?uuid=a004fc5c-3590-4972-a2bd-a9d09736b0c5

lpadmin -p lexmark -E
```

5.  My lexmark printer does not need drivers. But if it did, go to the admin help page to find out how to list and install drivers. http://localhost:631/help/admin.html#PRINTERS
6.  This is another line

```bash
ls
```

# How to print

Find the printer you want to print to with:

```
lpstat -t
```

Print the file with the lpr command

```
lpr -P PRINTER_NAME FILENAME
lpr -P Lexmark_CS317dn lasagna.md
lpr -P PRINTER_NAME FILENAME
```
