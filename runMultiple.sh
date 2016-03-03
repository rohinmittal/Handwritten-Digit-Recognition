#!/bin/bash

LAMBDA_MIN="$1"
LAMBDA_MAX="$2"
HIDDEN_MIN="$3"
HIDDEN_MAX="$4"

while [ $LAMBDA_MIN -lt $LAMBDA_MAX ]; do
	while [ $HIDDEN_MIN -lt $HIDDEN_MAX ]; do
        	
             	let HIDDEN_MIN=$HIDDEN_MIN+5
		echo "Running nnScript for ${HIDDEN_MIN} Hidden nodes and ${LAMBDA_MIN} Lambda";
		FileName="outPut_${HIDDEN_MIN}_${LAMBDA_MIN}.txt";
		echo "Output File : ${FileName}";
		python args.py $LAMBDA_MIN $HIDDEN_MIN > $FileName
        done
	echo The LambdaMin is $LAMBDA_MIN
	let LAMBDA_MIN=$LAMBDA_MIN+2
done
