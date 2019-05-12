V=$1
E=$2
C=$3
directed="yes"

for arg in "$@"
do
  if [ "$arg" = "-u" ]
  then 
    directed="no"
  fi 
done

Emax=$((V * (V - 1)))

if [ $E -gt $Emax ]
then
  E=$Emax
fi 

function gen_edges () {
  for (( v=1; v<=$V; v++ ))
  do
  
    if [ $directed = "yes" ]
	then 
	  w0=1
	else
	  w0=$((v+1))
	fi
	
    for (( w=$w0; w<=$V; w++ ))
	do
      if [ $v -ne $w ]
	  then
		if [[ $C =~ ^[0-9]+$ ]]
		then
		  echo $v $w $(($RANDOM % $C + 1))
		else
		  echo $v $w
		fi 
      fi
    done 
  done 
}

echo $V
echo $E

gen_edges | shuf -n $E

