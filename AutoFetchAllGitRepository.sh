#!/bin/sh
#Author:ITXiaoPang
#Website:http://www.OSSky.org

git_dir=$(cd $(dirname $BASH_SOURCE); pwd)
echo current: "$git_dir"
for my_directory in $(find "$git_dir" -mindepth 1 -maxdepth 1 -type d)
do
  echo "$my_directory" && cd "$my_directory" && git fetch
done
