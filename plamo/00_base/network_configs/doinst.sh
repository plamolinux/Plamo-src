( cd etc/rc.d ; rm -rf rc.inet1 )
( cd etc/rc.d ; ln -sf rc.inet1.tradnet rc.inet1 )
( cd usr/sbin ; rm -rf netconfig )
( cd usr/sbin ; ln -sf netconfig.tradnet netconfig )
( cd usr/sbin ; rm -rf enetconfig )
( cd usr/sbin ; ln -sf enetconfig.tradnet enetconfig )
cd etc-incoming
for file in *  ; do
  if [ -r ../etc/$file ]; then # backup old file
     mv ../etc/$file ../etc/$file.old
  fi
  mv $file ../etc/$file
done
cd ..
rm -rf etc-incoming
