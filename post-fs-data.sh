#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}
ModlesPath=$MODDIR/system/product/media
cd $ModlesPath
NUM=$(find *_*.zip | wc -l)
rnd=$(expr $RANDOM % $NUM)
#rm -rf bootanimation01.zip
file=$(find "$rnd"_*.zip)
ln -sf $file bootanimation01.zip 
