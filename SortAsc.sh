echo "Size : "
read sz
i=0
while [ $i -lt $sz ]
do
	echo "Element : "
	read arr[i]
	i=`expr $i + 1`
done
echo -e "\n Element in the array are "
i=0
until [ $i -ge $sz ]
do
	echo -n -e ${arr[i]} "\t"
	i=`expr $i + 1`
done
echo -e "\n"
sz1=`expr $sz - 1`
for((i=0 ; i<sz1 ; i++))
do
	sz2=`expr $sz - $i - 1`
	for(( j=0 ; j<sz2 ; j++))
	do
		v=`expr $j + 1`
		if [[ ${arr[j]} -gt ${arr[v]} ]]
		then
			temp=${arr[j]}
			arr[j]=${arr[v]}
			arr[v]=$temp
		fi
	done
done
echo -e "\n Sorted"
i=0
until [ $i -ge $sz ]
do
	echo -n -e ${arr[i]} "\t"
	i=`expr $i + 1`
done
echo -e "\n"
