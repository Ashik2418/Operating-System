add(){
echo $(($num1 + $num2))
}
sub(){
echo $(($num1 - $num2))
}
mul(){
echo $(($num1 * $num2))
}
Div(){
if [ $2 -eq 0 ]; then
echo "Division by zero not allow"
else
echo $(($num1 / $num2))
fi
}
read -p "First number:" num1
read -p "First number:" num2
echo "Choice an Operation:"
echo "Addition"
echo "Sub"
echo "Mul"
echo "Div"
read -p "Enter Choice:" choice
case $choice in
1)result = $(add num1 num2);;
2)result = $(sub num1 num2);;
3)result = $(mul num1 num2);;
4)result = $(div num1 num2);;
*)

esac
echo "result = $result"
