echo "String : "
read s 
len=${#s}
for(( i=$len ; i>=0 ; i-- ))
do 
    char=`echo $s | cut -c $i`
    rev=$rev$char
done
if [[ $s = $rev ]]
then
    echo -e "\n Palindrome"
else
    echo -e "\n Not A Palindrome"
fi
