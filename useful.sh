# the amount of free memory
free -m

# disk space usage
df -kh

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

# find all files under /export/home/ with a certain name pattern ('*.log.2020*') and delete them 
find /export/home/ -name '*.log.2020*' -delete

# find all files under /export/home/ greater than 1G and show their names in sorted order
find /export/home/ -size +1G | xargs du -sh | sort

# delete all files (non-recursive, only in the particular folder, e.g. under /export/home/logs/ ) with a certain name pattern ('*.log.2020*')
rm -f /export/home/logs/*.log.2020* 

#search for the files containing "stao" string in all folders & subfolders
find . -type f | xargs grep -l 'stao'

# chmod rwx permissions for all files in a oarticural directory
chmod ug+rwx,o+r [folder]/*

# grep for a 'pattern' only in '*.d.ts' files along the whole project and output file's names only:
grep -rl --include=\*.d.ts 'pattern' ./*

# grep for a 'pattern' only in '*.d.ts' files in particular folders ('ag-grid-...') along the whole project and output file's names only:
grep -rl --include=\*.d.ts 'pattern' ./*a-grid*/*
