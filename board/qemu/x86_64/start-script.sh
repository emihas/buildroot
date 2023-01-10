#!/bin/sh
# Start tetris....
echo "Creating auto-start script"
cat <<EOF > ${TARGET_DIR}/etc/init.d/S50tetris
tetris
EOF
chmod 755 ${TARGET_DIR}/etc/init.d/S50tetris
