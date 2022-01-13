saySomething(){
	echo "Hi, I'm function"
	local num=1
	case $num in  
		1 | 2) echo return 0;;
			*) echo return 1;;
	esac
}

saySomething && 

