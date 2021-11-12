#!/bin/bash
set -eou pipefail

TESTCASES="src/*.cpp"

for i in ${TESTCASES} ; do
    TESTNAME=$(basename ${i} .cpp)

    set +e
    g++ -o ${TESTNAME} ${i}
    RESULT=$?
    set -e
    if [[ RESULT -ne 0 ]] ; then
        echo "$i,Fail,Compilation"
    
    else
        set +e
        ./$TESTNAME
        RESULT=$?
        set -e
        if [[ RESULT -eq 0 ]] ; then
            echo "$i,Pass"
        else
            echo "$i,Fail,Execution"
        fi
    fi


    set +e
    ./${i}
    # Capture the exit code of the simulator in a variable
    RESULT=$?
    set -e

    
done
