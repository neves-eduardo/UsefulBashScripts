status () {
    pid_number=$(pidof $1)
    if [ ! -z "$pid_number" ];then
    echo "RUNNING WITH PID NUMBER: $pid_number" 
    else 
    echo "NOT RUNNING"
    fi

}