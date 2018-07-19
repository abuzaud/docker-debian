startstop_service(){
	cmd=$1
	name=$2
	sudo service $name $cmd
}

startstop_apache2(){
	cmd=$1
	case $cmd in 
		stop) $APACHE -s stop ;;
		start) $APACHE ;;
		restart)
			$APACHE -s stop
			sleep 1
			$APACHE
			;;
	esac
}

startstop_php() {
    cmd=$1
    case $cmd in
        stop) pkill $PHP_NAME ;;
        start) $PHP ;;
        restart)
            pkill $PHP_NAME
            sleep 1
            $PHP
            ;;
    esac
}
