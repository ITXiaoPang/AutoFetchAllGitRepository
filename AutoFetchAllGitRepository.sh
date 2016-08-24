#!/bin/sh
#Author:ITXiaoPang
#Website:http://www.OSSky.org

git_dir=$(cd $(dirname $BASH_SOURCE); pwd)
echo $(date)
echo Current Directory: "$git_dir"
for my_directory in $(find "$git_dir" -mindepth 1 -maxdepth 1 -type d)
do
  if [ -d "$my_directory/".git ]; then
    echo "$my_directory" && cd "$my_directory" && git fetch && git pull
  fi
done
