			echo ""
			echo "   1) Pre-Test "
			echo "   2) Shutdown "
			echo "   3) Post-Test "
			echo "   4) Ping 5s"
			echo ""
			read -p "Select an option [1-4]: " option
			echo ""
			case $option in
			1)
        sh pre-test.sh
				exit
				;;
			2)
        sh shutdown.sh
				exit
				;;
			3)
        sh post-test.sh
				exit
				;;
			4)
				nohup sh ping5s.sh > /dev/null 2>&1 &
				exit
				;;

			esac
		done

		exit
		;;