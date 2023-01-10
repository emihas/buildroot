#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # QEMU graphical window' ${TARGET_DIR}/etc/inittab
fi

# Start tetris....
echo "Creating auto-start script"
cat <<EOF > ${TARGET_DIR}/etc/init.d/S50tetris
tetris
EOF
chmod 755 ${TARGET_DIR}/etc/init.d/S50tetris
