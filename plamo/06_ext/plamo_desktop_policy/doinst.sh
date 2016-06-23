#%% begin initialize 
chk=`grep storage /etc/group`
if [ "$chk.x" = ".x" ]; then
    /usr/sbin/groupadd -g 41 storage
fi

chk=`grep power /etc/group`
if [ "$chk.x" = ".x" ]; then
    /usr/sbin/groupadd -g 42 power
fi
#%% end
