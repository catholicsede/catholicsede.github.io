#!/bin/ksh

if [[ $(whoami) != 'root' ]]; then echo 'Must be root.'; exit; fi

rcctl set apmd flags -L -z 15
rcctl {enable, start} apmd
rcctl {enable, start} obsdfreqd
rcctl {enable, start} httpd

ed /var/unbound/etc/unbound.conf <<EOF
	H
	/remote-control:/
	i
	include: "/mnt/disk/adblock/blacklist"
    include: "/mnt/disk/adblock/mylist"
	.
	wq	
EOF

ed /etc/X11/xenodm/Xsetup_0 <<EOF
	H$a
	xsetroot -solid black
	.
	/xconsole/
	s/^/#/
	wq	
EOF

cp /etc/examples/doas.conf /etc/
cp /etc/examples/man.conf /etc/
cp /etc/examples/mixerctl.conf /etc/
cp /etc/examples/wsconsctl.conf /etc/

ed /etc/mixerctl.conf <<EOF
	H
	/outputs\.master/
	s/#//	
	wq
EOF

ed /etc/wsconsctl.conf <<EOF
	H
	/keyboard\.bell\.volume/
	s/#//
	$a
	display.brightness=0
	.
	wq
EOF

ed /etc/man.conf <<EOF
	H
	/^# Options for terminal/
	?manpath
	a
	manpath /home/jonathan/.local/share/man
	.
	wq
EOF

echo -n 'PACKAGES in working directory? y (n):'
read resp
if [[ $resp != 'y' ]]; then echo 'Exit.'; exit; fi
pkg_add -l PACKAGES


 
