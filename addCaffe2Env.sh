#修改环境变量
python_path=$(cd caffe2/build/; pwd) ##这里大家别忘记该路径
new_python_export="export PYTHONPATH=$python_path:\$PYTHONPATH"
reg_python_export="^\s*export\s*PYTHONPATH=$python_path:\$PYTHONPATH"

if grep -q $reg_python_export /etc/profile
then
echo $python_path exists in PYTHONPATH, skip
else
	#export PYTHONPATH=$python_path:\$PYTHONPATH
	echo defined PYTHONPATH	 variable
	#append to profile
	echo $new_python_export >> /etc/profile	
fi

ld_path=/usr/local/lib
new_ld_export="export LD_LIBRARY_PATH=$ld_path:\$LD_LIBRARY_PATH"
reg_ld_export="^\s*export\s*LD_LIBRARY_PATH=$ld_path:\$LD_LIBRARY_PATH"

if grep -q $ld_path /etc/profile
then
echo $ld_path exists in PYTHONPATH, skip
else
	echo defined LD_LIBRARY_PATH	 variable
	echo $new_ld_export >> /etc/profile	
fi
sudo . /etc/profile
