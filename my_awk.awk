BEGIN {
    print "==========Working on javaversion.txt file=========="
}
    /build/ { print $0
}
 END { print "==========Script Completed==========" }
