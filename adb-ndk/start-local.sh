#!/system/bin/sh

su 2000 -c 'setprop service.adb.tcp.port 5038'
echo 'Setting tcpip...'
echo 'OK.'

echo 'Restarting ADBD...'
su -c 'stop adbd && start adbd'
echo 'OK.'

echo 'Restarting ADB server...'
su -c './bin/adb-loader kill-server'
su -c './bin/adb-loader start-server'

echo 'Connecting to ADB...'
su -c './bin/adb-loader connect localhost:5038'