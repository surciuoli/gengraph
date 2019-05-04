V=$1
E=$2
C=$3

Emax=$((V * (V - 1)))

if [ $E -gt $Emax ]; then
  E=$Emax
fi 

function gen_edges () {
  for (( v=1; v<=$V; v++ )); do
    for (( w=1; w<=$V; w++ )); do
      if [ $v -ne $w ]; then
        echo $v $w $(($RANDOM % $C + 1))
      fi
    done 
  done 
}

echo $V
echo $E

gen_edges | shuf -n $E

