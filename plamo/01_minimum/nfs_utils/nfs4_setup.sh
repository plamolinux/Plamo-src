#!/bin/sh
#
# Simple NFSv4 setup scripts for NFS mount by hands
# If you don't invoke rpc.idmapd, NFSv4's UID/username mapping
# function doesn't work and cannot chown files on NFS

modprobe sunrpc
mount -t rpc_pipefs rpc_pipefs /var/lib/nfs/rpc_pipefs
/usr/bin/rpcbind
/usr/sbin/rpc.nfsd 4
/usr/sbin/rpc.mountd
/usr/sbin/rpc.idmapd
/usr/sbin/rpc.statd
