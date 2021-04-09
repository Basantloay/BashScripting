#!/bin/bash
function FindPrime {
	
	if [ "$#" = 1 ]
	then
		N=3
		arr=$1
	elif [ "$#" = 2 ]; then
		N=$1
		arr=$2
	else
		arr=0
	fi
	
	
	flag=0
	
	if [ ${arr[0]} -le 1 ]
	then
		counter=0
		largest=0
		
	elif ((${#arr}<$N)); then
		counter=0
		largest=0
	elif [ $N = 0 ]; then
		counter=0
		largest=0
	else 
		let z=${#arr}-N
		let z=$z+1
		
		for ((ii=0;ii<z;ii++)); do
			item=${arr:ii:N}
			
			flag=0
			for ((i=2; i<$item ;i++))
			do
				rem=$(( item%i ))
				if [ $rem = 0 ] 
				then 
					let flag=$flag+1
					break
				fi
			done
			if [ $flag = 0 ]
			then
				let counter=$counter+1
				if ((largest<item)); then
					let largest=$item	
				fi
			fi
				
		done
		
	fi
	
	echo ${counter}" "$largest
	counter=0
	largest=0
	
}

FindPrime 2 2323371
FindPrime 2 222324
FindPrime 68271982
FindPrime 3 2368224
