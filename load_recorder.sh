if [ -f 'time.txt' ]
then
rm 'time.txt'
fi

if [ $# -ne 1 ]
then
echo 'Usage: ./load_recorder.sh [hour]'
exit
fi

hour=$1
min=$(($hour*60))

i=0
while [ $i -lt $min ]
do
ct=`date +%s`
load=`uptime | awk -F" " '{print $10}'`
load=${load:0:4}
echo -n $ct >> time.txt
echo -n ' ' >> time.txt
echo $load >> time.txt
i=$(($i+1))
sleep 60
done
