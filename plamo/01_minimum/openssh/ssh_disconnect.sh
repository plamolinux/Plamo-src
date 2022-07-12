. /lib/lsb/init-functions

stop_child_sshd(){
    err=0
    if [ -f /run/sshd.pid ]; then
        pids=$(pgrep -P $(cat /run/sshd.pid))
        for p in $pids
        do
            kill $p
            err=$?
        done

        sleep ${KILLDELAY}
        
        if [ $err -eq 1 ]; then
            pids=$(pgrep -P $(cat /run/sshd.pid))
            for p in $pids
            do
                kill -9 $p
                err=$?
            done
        fi
    else
        killall sshd
        err=$?
        sleep ${KILLDELAY}
        if [ $err -ne 0 ]; then
            killall -9 sshd
            err=$?
        fi
    fi

    return $err
}

case "${1}" in
   stop)
      log_info_msg "Disconnecting ssh connection..."
      stop_child_sshd
      evaluate_retval
      ;;
   *)
      echo "Usage: ${0} stop"
      exit 1
      ;;
esac

exit 0
