#!/bin/bash

if [ -z $1 ];then
	new_script=~/NewScript_`date +%s`.sh
	echo $new_script
else
	new_script=$1
fi

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

