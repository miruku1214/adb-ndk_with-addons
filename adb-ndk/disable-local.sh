#!/system/bin/sh

echo "Killing ADB Server ..."
./bin/adb-loader kill-server
echo "OK."

echo "Disabling tcpip..."
su 2000 -c 'setprop service.adb.tcp.port -1'
echo "OK."