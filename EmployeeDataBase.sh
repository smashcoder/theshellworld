
i=0
while [ $i -lt 1 ]
do
	echo -e "\nEmpno Empname Mobno City"
	read empn empname mbno city
	echo -e "$empn $empname $mbno $city">>empdata.txt
	echo -e "\nDo you want to add another enter ?"
	read tf
	if [[ $tf = yes ]]
	then
		i=0
	else
		i=1
	fi
done
echo -e "\nEmpno Empname Mobno City"
if [[ -s empdata.txt ]]
then
	cat empdata.txt
else
	echo -e "\nFile is empty!"
fi
echo -e "\nSearch : "
read search
if grep -i $search empdata.txt
then
	echo -e "\n"
else
	echo -e "\nNot Found"
fi
echo -e "\nDelete : "
read delete
if grep -v $delete empdata.txt>emptest.txt
then
	rm empdata.txt
	mv emptest.txt empdata.txt
	cat empdata.txt
	echo -e "\n"
else
	echo -e "\nNot Found"
fi
	
