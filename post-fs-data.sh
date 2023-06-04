mount -o rw,remount /data
MODPATH=${0%/*}

# debug
exec 2>$MODPATH/debug-pfsd.log
set -x

# run
FILE=$MODPATH/sepolicy.pfsd
if [ -f $FILE ]; then
  magiskpolicy --live --apply $FILE
fi

# list
PKGS=`cat $MODPATH/package.txt`
for PKG in $PKGS; do
  magisk --denylist rm $PKG
done
FILE=$MODPATH/tmp_file
magisk --hide sulist 2>$FILE
if [ "`cat $FILE`" == 'SuList is enforced' ]; then
  for PKG in $PKGS; do
    magisk --hide add $PKG
  done
else
  for PKG in $PKGS; do
    magisk --hide rm $PKG
  done
fi
rm -f $FILE

# conflict
rm -f /data/adb/modules/*/system/app/MotoSignatureApp/.replace

# cleaning
FILE=$MODPATH/cleaner.sh
if [ -f $FILE ]; then
  . $FILE
  rm -f $FILE
fi







