#!/bin/bash

function Usage()
{
	echo -e "\tUsage:"
	echo -e "\t$0 ScriptName Description"
	echo -e "\teg:"
	echo -e "\t$0 sum.sh 'sum 1+2+....+100'"
	exit 1
}

if [ $# -lt 1 -o $# -gt 2 ];then 
	Usage
fi

new_script=$1

if ! grep "^#!" $new_script &>/dev/null;then
	cat >> $new_script << EOF
#!/bin/bash

# Author: zchshen
# Date:	`date +'%F %T'`
# Description:	$2

EOF
fi

chmod +x $new_script

vim +8 $new_script

