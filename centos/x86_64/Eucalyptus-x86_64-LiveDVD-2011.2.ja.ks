lang ja_JP.UTF-8
keyboard jp106
network --device eth0 --bootproto static --ip 192.168.100.10 --netmask 255.255.0.0 --gateway 192.168.1.1 --hostname eucalyquitous
timezone Asia/Tokyo
auth --useshadow --enablemd5
selinux --disabled
firewall --disabled
#repo --name=a-base     --baseurl=http://192.168.136.23/centos/5/os/$basearch
#repo --name=a-updates  --baseurl=http://192.168.136.23/centos/5/updates/$basearch
#repo --name=a-extras   --baseurl=http://192.168.136.23/centos/5/extras/$basearch
#repo --name=a-live     --baseurl=http://192.168.136.23/centos-live/$basearch/live
#repo --name=euca2ools  --baseurl=http://192.168.136.23/euca2ools/nightly/main/centos/5/$basearch
#repo --name=eucalyptus --baseurl=http://192.168.136.23/eucalyptus/nightly/main/centos/5/$basearch
#repo --name=euca2ools  --baseurl=http://192.168.136.23/euca2ools/stable/centos/5/$basearch
#repo --name=eucalyptus --baseurl=http://192.168.136.23/eucalyptus/2.0.3/yum/centos/$basearch
#repo --name=a-euca     --baseurl=http://192.168.136.23/eucalyptus/nightly/main/yum/centos/$basearch
repo --name=a-base     --baseurl=http://192.168.10.10/centos/5/os/$basearch
repo --name=a-updates  --baseurl=http://192.168.10.10/centos/5/updates/$basearch
repo --name=a-extras   --baseurl=http://192.168.10.10/centos/5/extras/$basearch
repo --name=a-live     --baseurl=http://192.168.10.10/centos-live/$basearch/live
repo --name=euca2ools  --baseurl=http://192.168.10.10/euca2ools/stable/centos/5/$basearch
repo --name=eucalyptus --baseurl=http://192.168.10.10/eucalyptus/2.0.3/yum/centos/$basearch
#repo --name=euca2ools  --baseurl=http://192.168.10.10/euca2ools/nightly/main/centos/5/$basearch
#repo --name=eucalyptus --baseurl=http://192.168.10.10/eucalyptus/nightly/main/centos/5/$basearch
#repo --name=a-euca     --baseurl=http://192.168.10.10/eucalyptus/nightly/main/yum/centos/$basearch
xconfig --startxonboot
part / --size 4096
services --enabled=haldaemon,NetworkManager,portmap,sshd,dhcpd,eucalyptus-cloud,eucalyptus-cc,eucalyptus-nc --disabled=anacron,auditd,bluetooth,cpuspeed,cups,gpm,hidd,iptables,ip6tables,isdn,mcstrans,mdmonitor,microcode_ctl,netfs,network,nfslock,pcscd,readahead_early,readahead_later,restorecond,rpcgssd,rpcidmapd,libvirtd


%packages --resolvedeps
syslinux
kernel-xen

@admin-tools
#packages removed from @admin-tools
-sabayon
-system-config-kdump
#@admin-tools <end of package list>


@base
#package added to @base
squashfs-tools
#packages removed from @base
-amtu
-bind-utils
-ccid
-conman
-coolkey
-crash
-dump
-ibmasm
-iptstate
-jwhois
-kexec-tools
-ksh
-lftp
-libaio
-logwatch
-mailcap
-nc
-nss_db
-nss_ldap
-oddjob
-pax
-pkinit-nss
-psacct
-quota
-redhat-lsb
-sendmail
-specspo
-stunnel
-talk
-tcpdump
-tree
-yum-updatesd
-vixie-cron
-openoffice.org-langpack-ja_JP
#@base <end of package list>


@base-x
#packages removed from @base-x
-bitstream-vera-fonts
-linuxwacom
-rhgb
-vnc-server
-xorg-x11-server-Xnest
-xorg-x11-twm
-xterm
#@base-x <end of package list>


@core
#packages removed from @core
-ed
-gnu-efi
-libhugetlbfs
#@core <end of package list>


@dialup
#packages added to @dialup
-statserial
#@dialup <end of package list>


@gnome-desktop
#packages added to @gnome-desktop
-gnome-bluetooth
-gnome-pilot-conduits
-gnome-themes
#packages removed from @gnome-desktop
-esc
-eog
-gimp-print-utils
-gtkhtml3
-gnome-backgrounds
-gnome-user-share
-gok
-nautilus-sendto
-orca
-sabayon-apply
-vino
#@gnome-desktop <end of package list>


@graphical-internet
#packages removed from @graphical-internet
-evolution
-evolution-connector
-evolution-webcal
-ekiga
#packages added to @graphical-internet
-gftp
-pidgin
-thunderbird
#@graphical-internet <end of package list>


@office
#packages removed from @office
-openoffice.org-draw
-openoffice.org-graphicfilter
-openoffice.org-math
-openoffice.org-xsltfilter
#@office <end of package list>


@printing
#packages added to @printing
-bluez-utils-cups
#@printing <end of package list>


@sound-and-video
#packages removed from @sound-and-video
-rhythmbox
-vorbis-tools
#@sound-and-video <end of package list>


@system-tools
#packages added to @system-tools
-nmap-frontend
rdesktop
tsclient
#packages removed from @system-tools
-bluez-hcidump
-hwbrowser
-OpenIPMI
-openldap-clients
-xdelta
-zisofs-tools
-zsh
#@system-tools <end of package list>

@japanese-support

@text-internet
#packages removed from @text-internet
-elinks
-fetchmail
-mutt
-slrn
#@text-internet <end of package list>


# Other packages we don't want to include in the Live CD
-*debuginfo
-bind-libs
-compat*
-exim
-gamin-python
-nscd
-oddjob-libs
-procmail
-python-ldap
-rmt
-tclx
-yp-tools

@xfce

# For the x86_64 version, one could want to remove i386 and i686 libs
#-*.i386
#-*.i686

# other usefull packages
Cluster_Administration-ja-JP
Deployment_Guide-ja-JP
Global_File_System-ja-JP
Virtualization-ja-JP
busybox
mailx
memtest86+
patch
yum-fastestmirror
yum-metadata-parser
httpd
bridge-utils
xen-libs
iproute
net-tools
lsof

eucalyptus
eucalyptus-cloud
eucalyptus-cc
eucalyptus-nc
eucalyptus-sc
eucalyptus-walrus
#python26
#python26-libs
euca2ools

vim-enhanced
dhcp
livecd-tools
syslinux
anaconda-runtime

%post

## LiveCD version for the link toward the release notes
VERSION="5.7"

## locales for the Live CD
PRIMARY_LANGUAGE="ja"
PRIMARY_LOCALE="ja_JP"
SECONDARY_LANGUAGE="en"
SECONDARY_LOCALE="en_US"

## default LiveCD user
LIVECD_USER="centos"

########################################################################
# Create a sub-script so the output can be captured
# Must change "$" to "\$" and "`" to "\`" to avoid shell quoting
########################################################################
cat > /root/post-install << EOF_post
#!/bin/bash

#####################################################################
### XFCE: create /etc/sysconfig/desktop (needed for installation) ###
#####################################################################
cat > /etc/sysconfig/desktop <<EOF_desktop
PREFERRED=/usr/bin/startxfce4
EOF_desktop

echo "startxfce4" > /home/${LIVECD_USER}/.Xclients
chmod a+x /home/${LIVECD_USER}/.Xclients
chown ${LIVECD_USER}:${LIVECD_USER} /home/${LIVECD_USER}/.Xclients

### for Eucalyptus ###
sed -i -e 's|^Defaults    requiretty$|#&|' /etc/sudoers
sed -i -e 's|#(xend-http-server no)|(xend-http-server yes)|' /etc/xen/xend-config.sxp
sed -i -e 's|#(xend-address localhost)|(xend-address localhost)|' /etc/xen/xend-config.sxp
echo 'options loop max_loop=256' > /etc/modprobe.d/loop 
for i in \`seq 8 255\`; do echo loop\${i} >> /etc/udev/makedev.d/50-udev.nodes; done
sed -i -e 's|^CLOUD_OPTS=""$|CLOUD_OPTS="--log-level=DEBUG"|' /etc/eucalyptus/eucalyptus.conf
#sed -i -e 's|mice|puta-su|' /etc/xdg/xfce4-session/xfce4-session.rc
sed -i -e 's|TreeFlower|Eucalyquitous2011Fall|' /usr/share/gdm/factory-defaults.conf
sed -i -e 's|TreeFlower|Eucalyquitous2011Fall|' /usr/share/gdm/defaults.conf

echo ###################################################################
echo ## Creating the livesys init script
echo ###################################################################

cat > /etc/rc.d/init.d/livesys << EOF_initscript
#!/bin/bash
#
# live: Init script for live image
#
# chkconfig: 345 00 99
# description: Init script for live image.

. /etc/init.d/functions

if ! strstr "\\\`cat /proc/cmdline\\\`" liveimg || [ "\\\$1" != "start" ] || [ -e /.liveimg-configured ] ; then
    exit 0
fi

exists() {
    which \\\$1 >/dev/null 2>&1 || return
    \\\$*
}

# read some variables out of /proc/cmdline
for o in \\\`cat /proc/cmdline\\\` ; do
    case \\\$o in
    xdriver=*)
        xdriver="--set-driver=\\\${o#xdriver=}"
        ;;
    esac
done

touch /.liveimg-configured

# mount live image
if [ -b /dev/live ]; then
   mkdir -p /mnt/live
   mount -o ro /dev/live /mnt/live
fi

# enable swaps unless requested otherwise
swaps=\\\`blkid -t TYPE=swap -o device\\\`
if ! strstr "\\\`cat /proc/cmdline\\\`" noswap -a [ -n "\\\$swaps" ] ; then
  for s in \\\$swaps ; do
    action "Enabling swap partition \\\$s" swapon \\\$s
  done
fi

## fix various bugs and issues
# configure X, allowing user to override xdriver
exists system-config-display --noui --reconfig --set-depth=24 \\\$xdriver

# unmute sound card
exists alsaunmute 0 2> /dev/null

# turn off firstboot for livecd boots
echo "RUN_FIRSTBOOT=NO" > /etc/sysconfig/firstboot

# create a patch for kudzu init script
cat > /tmp/kudzu.patch << EOF_kudzupatch
--- kudzu.orig	2007-07-27 20:27:03.000000000 -0400
+++ kudzu	2007-07-27 20:27:23.000000000 -0400
@@ -35,6 +35,10 @@
 	   action "" /bin/false
 	fi
 
+        # Reconfigure the keyboard
+        . /etc/sysconfig/keyboard
+        /usr/bin/system-config-keyboard \\\\\\\$KEYTABLE 2&> /dev/null
+
 	# We don't want to run this on random runlevel changes.
 	touch /var/lock/subsys/kudzu
 	# However, if they did configure X and want runlevel 5, let's
EOF_kudzupatch

# patch kudzu init script
/usr/bin/patch /etc/rc.d/init.d/kudzu /tmp/kudzu.patch > /dev/null
rm -f /tmp/kudzu.patch

# stopgap fix for RH #217966; should be fixed in HAL instead
touch /media/.hal-mtab

# workaround clock syncing on shutdown that we don't want (RH #297421)
sed -i -e 's/hwclock/no-such-hwclock/g' /etc/rc.d/init.d/halt

# workaround avahi segfault (RH #273301)
touch /etc/resolv.conf
/sbin/restorecon /etc/resolv.conf

# set the LiveCD hostname
sed -i -e 's/HOSTNAME=localhost.localdomain/HOSTNAME=eucalyquitous.livecd.example.com/g' /etc/sysconfig/network
echo "192.168.100.10 eucalyquitous.livecd.example.com eucalyquitous" >> /etc/hosts
/bin/hostname eucalyquitous.livecd.example.com

## create the LiveCD default user
# add default user with no password
/usr/sbin/useradd -c "LiveCD default user" $LIVECD_USER
/usr/bin/passwd -d $LIVECD_USER > /dev/null
# give default user sudo privileges
echo "$LIVECD_USER     ALL=(ALL)     NOPASSWD: ALL" >> /etc/sudoers

## configure default user's desktop
# set up timed auto-login at 10 seconds
sed -i -e 's/\[daemon\]/[daemon]\nTimedLoginEnable=true\nTimedLogin=$LIVECD_USER\nTimedLoginDelay=10/' /etc/gdm/custom.conf
# disable screensaver locking
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/gnome-screensaver/lock_enabled false >/dev/null
# add documentation shortcuts
mkdir -p /home/$LIVECD_USER/Desktop/Documentation
cp /usr/share/applications/Cluster_Administration-ja-JP.desktop /home/$LIVECD_USER/Desktop/Documentation/
cp /usr/share/applications/Deployment_Guide-ja-JP.desktop       /home/$LIVECD_USER/Desktop/Documentation/
cp /usr/share/applications/Global_File_System-ja-JP.desktop     /home/$LIVECD_USER/Desktop/Documentation/
cp /usr/share/applications/Virtualization-ja-JP.desktop         /home/$LIVECD_USER/Desktop/Documentation/
cat > /home/$LIVECD_USER/Desktop/Documentation/Additional_Documentation.desktop << EOF_documentation
[Desktop Entry]
Name=Additional Documentation
Comment=Enterprise Linux
Exec=firefox http://www.centos.org/docs/5/
Icon=/usr/share/pixmaps/redhat-web-browser.png
Categories=Documentation;
Type=Application
Encoding=UTF-8
Terminal=false
EOF_documentation
cat > /home/$LIVECD_USER/Desktop/Documentation/Release_Notes.desktop << EOF_release_notes
[Desktop Entry]
Name=How To Install
Comment=Enterprise Linux
Exec=firefox http://wiki.centos.org/Manuals/ReleaseNotes/CentOSLiveCD$VERSION
Icon=/usr/share/pixmaps/redhat-web-browser.png
Categories=Documentation;
Type=Application
Encoding=UTF-8
Terminal=false
EOF_release_notes

# add keyboard configuration utility to the desktop
mkdir -p /home/$LIVECD_USER/Desktop >/dev/null
cp /usr/share/applications/system-config-keyboard.desktop /home/$LIVECD_USER/Desktop/

CreateDesktopIconHD()
{
cat > /home/$LIVECD_USER/Desktop/Local\ hard\ drives.desktop << EOF_HDicon
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Link
Name=Local hard drives
Name[en_US]=Local hard drives
Name[fr_CA]=Disques durs locaux
URL=/mnt/disc
Icon=/usr/share/icons/Bluecurve/48x48/devices/gnome-dev-harddisk.png
EOF_HDicon

chmod 755 /home/$LIVECD_USER/Desktop/Local\ hard\ drives.desktop
}

CreateDesktopIconLVM()
{
cat > /home/$LIVECD_USER/Desktop/Local\ logical\ volumes.desktop << EOF_LVMicon
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Link
Name=Local logical volumes
Name[en_US]=Local logical volumes
Name[fr_CA]=Volumes logiques locaux
URL=/mnt/lvm
Icon=/usr/share/icons/Bluecurve/48x48/devices/gnome-dev-harddisk.png
EOF_LVMicon

chmod 755 /home/$LIVECD_USER/Desktop/Local\ logical\ volumes.desktop
}

# don't mount disk partitions if 'nodiskmount' is given as a boot option
if ! strstr "\\\`cat /proc/cmdline\\\`" nodiskmount ; then
MOUNTOPTION="ro"
HARD_DISKS=\\\`egrep "[sh]d.\\\$" /proc/partitions | tr -s ' ' | sed 's/^  *//' | cut -d' ' -f4\\\`

echo "Mounting hard disk partitions... "
for DISK in \\\$HARD_DISKS; do 
    # Get the device and system info from fdisk (but only for fat and linux partitions).
    FDISK_INFO=\\\`fdisk -l /dev/\\\$DISK | tr [A-Z] [a-z] | egrep "fat|linux" | egrep -v "swap|extended|lvm" | sed 's/*//' | tr -s ' ' | tr ' ' ':' | cut -d':' -f1,6-\\\`
    for FDISK_ENTRY in \\\$FDISK_INFO; do 
        PARTITION=\\\`echo \\\$FDISK_ENTRY | cut -d':' -f1\\\`
        MOUNTPOINT="/mnt/disc/\\\${PARTITION##/dev/}"
        mkdir -p \\\$MOUNTPOINT
        MOUNTED=FALSE
    
        # get the partition type
        case \\\`echo \\\$FDISK_ENTRY | cut -d':' -f2-\\\` in
        *fat*)  
            FSTYPES="vfat"
            EXTRAOPTIONS=",uid=500";;
        *)
            FSTYPES="ext4 ext3 ext2"
            EXTRAOPTIONS="";;
        esac
    
        # try to mount the partition
        for FSTYPE in \\\$FSTYPES; do
            if mount -o "\\\${MOUNTOPTION}\\\${EXTRAOPTIONS}" -t \\\$FSTYPE \\\$PARTITION \\\$MOUNTPOINT &>/dev/null; then
                echo "\\\$PARTITION \\\$MOUNTPOINT \\\$FSTYPE noauto,\\\${MOUNTOPTION}\\\${EXTRAOPTIONS} 0 0" >> /etc/fstab
                echo -n "\\\$PARTITION "
                MOUNTED=TRUE
                CreateDesktopIconHD
            fi
        done
        [ \\\$MOUNTED = "FALSE" ] && rmdir \\\$MOUNTPOINT
    done
done
echo


FSTYPES="ext4 ext3 ext2"

echo "Scanning for logical volumes..."
if ! lvm vgscan 2>&1 | grep "No volume groups"; then
    echo "Activating logical volumes ..."
    modprobe dm_mod >/dev/null
    echo "mkdmnod" | nash --quiet
    lvm vgchange -ay
    LOGICAL_VOLUMES=\\\`lvm lvdisplay -c | sed "s/^  *//" | cut -d: -f1\\\`
    if [ ! -z "\\\$LOGICAL_VOLUMES" ]; then
        echo "Making device nodes ..."
        lvm vgmknodes
        echo -n "Mounting logical volumes ... "
        for VOLUME_NAME in \\\$LOGICAL_VOLUMES; do
            VG_NAME=\\\`echo \\\$VOLUME_NAME | cut -d/ -f3\\\`
            LV_NAME=\\\`echo \\\$VOLUME_NAME | cut -d/ -f4\\\`
            MOUNTPOINT="/mnt/lvm/\\\${VG_NAME}-\\\${LV_NAME}"
            mkdir -p \\\$MOUNTPOINT

            MOUNTED=FALSE
            for FSTYPE in \\\$FSTYPES; do
                if mount -o \\\$MOUNTOPTION -t \\\$FSTYPE \\\$VOLUME_NAME \\\$MOUNTPOINT &>/dev/null; then
                    echo "\\\$VOLUME_NAME \\\$MOUNTPOINT \\\$FSTYPE defaults,\\\${MOUNTOPTION} 0 0" >> /etc/fstab
                    echo -n "\\\$VOLUME_NAME "
                    MOUNTED=TRUE
                    CreateDesktopIconLVM
                    break
                fi
            done
            [ \\\$MOUNTED = FALSE ] && rmdir \\\$MOUNTPOINT
        done
        echo
        
    else
        echo "No logical volumes found"
    fi
fi
fi

# give back ownership to the default user
chown -R $LIVECD_USER:$LIVECD_USER /home/$LIVECD_USER
EOF_initscript

chmod 755 /etc/rc.d/init.d/livesys
/sbin/restorecon /etc/rc.d/init.d/livesys
/sbin/chkconfig --add livesys


echo ###################################################################
echo ##         Configure the firewall
echo ###################################################################
cat > /etc/sysconfig/iptables << EOF_iptables
# Firewall configuration
*filter
:INPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
:RH-Firewall-1-INPUT - [0:0]
-A INPUT -j RH-Firewall-1-INPUT
-A FORWARD -j RH-Firewall-1-INPUT
-A RH-Firewall-1-INPUT -i lo -j ACCEPT
-A RH-Firewall-1-INPUT -p icmp --icmp-type any -j ACCEPT
-A RH-Firewall-1-INPUT -p 50 -j ACCEPT
-A RH-Firewall-1-INPUT -p 51 -j ACCEPT
-A RH-Firewall-1-INPUT -p udp --dport 5353 -d 224.0.0.251 -j ACCEPT
-A RH-Firewall-1-INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
-A RH-Firewall-1-INPUT -j REJECT --reject-with icmp-host-prohibited
COMMIT
EOF_iptables

cat >> /etc/rc.local << EOF_rclocal

# for eucalyptus
mkdir -p /root/.ssh
chmod 700 /root/.ssh
/usr/bin/ssh-keygen -t rsa -f /root/.ssh/id_rsa -N ''
cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
eval \\\`/usr/bin/ssh-agent\\\`
/usr/bin/ssh-add /root/.ssh/id_rsa
cat > /etc/dhcpd.conf << EOF_dhcpd
ddns-update-style interim;
ignore client-updates;
not authoritative;

subnet 192.168.0.0 netmask 255.255.0.0 {
	option routers			192.168.100.10;
	option subnet-mask		255.255.0.0;
	option domain-name-servers      192.168.100.10;

	option time-offset		-18000; # Eastern Standard Time
	range dynamic-bootp		192.168.100.100 192.168.100.200;
	default-lease-time		21600;
	max-lease-time			43200;
}
EOF_dhcpd
/etc/init.d/dhcpd restart

EOF_rclocal

echo ###################################################################
echo ## Trim down the LiveCD to save some space
echo ###################################################################
# remove unneeded initrd file(s)
rm -f /boot/initrd*
# temporary RPM databases can be removed
rm -f /usr/var/lib/rpm/__db.00*
# make sure there aren't core files lying around
rm -f /core*

# remove files for unsupported languages in various applications
(cd /var/lib/scrollkeeper; \
 if [ \`ls | wc -w\` -gt 11 ]; then \
     mkdir ../temp_dir; \
     mv C $PRIMARY_LANGUAGE $SECONDARY_LANGUAGE index scrollkeeper_docs TOC ../temp_dir; \
     rm -rf *; mv ../temp_dir/* .; rmdir ../temp_dir; \
     sync; \
 fi)
(cd /usr/lib/locale; \
 if [ \`ls | wc -w\` -gt 8 ]; then \
     mkdir ../temp_dir; \
     mv $PRIMARY_LOCALE* $SECONDARY_LOCALE* ../temp_dir; \
     rm -rf *; mv ../temp_dir/* .; rmdir ../temp_dir; \
     /usr/sbin/build-locale-archive; \
     sync; \
 fi)
(cd /usr/share/locale; \
 if [ \`ls | wc -w\` -gt 10 ]; then \
     mkdir ../temp_dir; \
     mv locale.alias ../temp_dir; \
     mv $PRIMARY_LANGUAGE $PRIMARY_LOCALE $SECONDARY_LANGUAGE $SECONDARY_LOCALE ../temp_dir; \
     rm -rf *; mv ../temp_dir/* .; rmdir ../temp_dir; \
     sync; \
 fi)

# remove rarely used documentation files
(cd /usr/share/doc; \
 if find . -maxdepth 1 -mmin -60 >/dev/null; then \
     find . -iname changelog* -exec rm -f {} \; ;\
     find . -iname changes -exec rm -f {} \; ;\
     find . -iname news -exec rm -f {} \; ;\
     sync; \
 fi)

# remove manual pages for unsupported languages 
(cd /usr/share/man; \
 if [ \`ls | wc -w\` -gt 16 ]; then \
     mkdir ../temp_dir; \
     mv man* $PRIMARY_LANGUAGE $SECONDARY_LANGUAGE ../temp_dir; \
     rm -rf *; mv ../temp_dir/* .; rmdir ../temp_dir; \
     sync; \
 fi)
EOF_post

/bin/bash -x /root/post-install 2>&1 | tee /root/post-install.log

%post --nochroot

########################################################################
# Create a sub-script so the output can be captured
# Must change "$" to "\$" and "`" to "\`" to avoid shell quoting
########################################################################
cat > /root/postnochroot-install << EOF_postnochroot
#!/bin/bash

# add livecd-iso-to-disk utility on the LiveCD
# only works on x86, x86_64
if [ "\$(uname -i)" = "i386" -o "\$(uname -i)" = "x86_64" ]; then
  if [ ! -d \$LIVE_ROOT/LiveOS ]; then mkdir -p \$LIVE_ROOT/LiveOS ; fi
  cp /usr/bin/livecd-iso-to-disk \$LIVE_ROOT/LiveOS
fi

# customize boot menu entries
grep -A4 'label linux0'  \$LIVE_ROOT/isolinux/isolinux.cfg > \$LIVE_ROOT/isolinux/default.txt
grep -A2 'label memtest' \$LIVE_ROOT/isolinux/isolinux.cfg > \$LIVE_ROOT/isolinux/memtest.txt
grep -A2 'label local'   \$LIVE_ROOT/isolinux/isolinux.cfg > \$LIVE_ROOT/isolinux/localboot.txt

sed "s/label linux0/label linuxtext0/" \$LIVE_ROOT/isolinux/default.txt > \$LIVE_ROOT/isolinux/textmode.txt
sed -i "s/Boot/Boot (text mode)/"                                         \$LIVE_ROOT/isolinux/textmode.txt
sed -i "s/liveimg/liveimg 3/"                                             \$LIVE_ROOT/isolinux/textmode.txt
sed -i "/menu default/d"                                                  \$LIVE_ROOT/isolinux/textmode.txt

touch \$LIVE_ROOT/isolinux/installer.txt
if [ -e \$INSTALL_ROOT/boot/livecd-installer.img -a -e \$INSTALL_ROOT/boot/vmlinuz-installer* ]; then
   mv \$INSTALL_ROOT/boot/livecd-installer.img \$LIVE_ROOT/isolinux/install.img
   mv \$INSTALL_ROOT/boot/vmlinuz-installer*   \$LIVE_ROOT/isolinux/vminst
   cat > \$LIVE_ROOT/isolinux/installer.txt << EOF_installer
label installer
  menu label Network Installation
  kernel vminst
  append initrd=install.img text
EOF_installer
fi

cat \$LIVE_ROOT/isolinux/default.txt \$LIVE_ROOT/isolinux/memtest.txt \$LIVE_ROOT/isolinux/localboot.txt > \$LIVE_ROOT/isolinux/current.txt
diff \$LIVE_ROOT/isolinux/isolinux.cfg \$LIVE_ROOT/isolinux/current.txt | sed '/^[0-9][0-9]*/d; s/^. //; /^---$/d' > \$LIVE_ROOT/isolinux/cleaned.txt
cat \$LIVE_ROOT/isolinux/cleaned.txt \$LIVE_ROOT/isolinux/default.txt \$LIVE_ROOT/isolinux/textmode.txt \$LIVE_ROOT/isolinux/installer.txt \$LIVE_ROOT/isolinux/memtest.txt \$LIVE_ROOT/isolinux/localboot.txt > \$LIVE_ROOT/isolinux/isolinux.cfg
rm -f \$LIVE_ROOT/isolinux/*.txt
cp /root/livecd/putasu_splash.jpg \$LIVE_ROOT/isolinux/splash.jpg
sed -i -e 's|ffffffff|fffed350|' \$LIVE_ROOT/isolinux/isolinux.cfg

# for Eucalyptus
mkdir -p ${INSTALL_ROOT}/var/lib/eucalyptus/tmp/
cp -r /root/livecd/ttylinux ${INSTALL_ROOT}/var/lib/eucalyptus/tmp/
cp -r /root/livecd/CentOS-5.6-x86_64-Mini ${INSTALL_ROOT}/var/lib/eucalyptus/tmp/CentOS-5.6-x86_64-Mini
cp -r /root/livecd/Eucalyquitous2011Fall ${INSTALL_ROOT}/usr/share/gdm/themes/
cp -r /root/livecd/tAWS-0.6.0beta-linux-x86_64.zip ${INSTALL_ROOT}/var/lib/eucalyptus/tmp/
cp -a /root/livecd/euca_setup ${INSTALL_ROOT}/usr/local/sbin/
cp -a /root/livecd/taws_setup ${INSTALL_ROOT}/usr/local/bin/
cp -a /root/livecd/libEucalyptusNC.so ${INSTALL_ROOT}/opt/euca-axis2c/services/EucalyptusNC/
cp -a /root/livecd/livecd-cdrom-to-disk ${INSTALL_ROOT}/usr/local/sbin/

EOF_postnochroot

/bin/bash -x /root/postnochroot-install 2>&1 | tee /root/postnochroot-install.log
