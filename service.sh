MODPATH=${0%/*}
API=`getprop ro.build.version.sdk`

# debug
exec 2>$MODPATH/debug.log
set -x

# wait
until [ "`getprop sys.boot_completed`" == "1" ]; do
  sleep 10
done

# allow
PKG=com.motorola.android.providers.settings
appops set $PKG WRITE_SETTINGS allow












