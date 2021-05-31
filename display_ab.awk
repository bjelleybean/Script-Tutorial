#!/usr/bin/awk -f

BEGIN {
    print "Finding a and b values from file: ab.txt"

}

{
a=$1
b=$2
print "a="a,"b="b
}

END {
    print "Completed action on ab.txt"
}
