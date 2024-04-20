 #!/bin/bash

 #using if condition to find whether given number is greater than or equal to 10

 NUMBER=$1
 if [ $NUMBER >= 10 ]
 then
 echo "Given number is greater than 10"
 else
 echo "Given number is less than 10"
 fi

 #-gt, -lt, -eq, -ge, le is also used for greater than
 #less than,equal to,greater than equal to,less than equal to

