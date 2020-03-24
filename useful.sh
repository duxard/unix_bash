# get list of deleted files which have open descriptors
lsof -nP +L1 | grep deleted

# get list of files with absolute paths
ls -lrt -d -1 $PWD/*

# find file with a particular extension
find [path] -name "*.xml" 

# zip
tar -zcvf [name].tar [path]

# unzip
tar -zcvf [name.tar]

# find files > 1G in a certain directory 
find [path] -size +1G | xargs du -sh | sort

# find all files with a certain name and delete those (useful when cleaning old logs)
find [path] -name "*.log.2020*" -delete



