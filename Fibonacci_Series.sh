f0=0 
f1=1 
i=2
echo "Enter the limit : "
read n
echo $f0
echo $f1
while [ $i -lt $n ]
do
    f2=`expr $f0 + $f1` #expr used for using '+' operator
    echo $f2
    f0=$f1
    f1=$f2
    i=`expr $i + 1` #incrementing the value of i
done
