#!/bin/bash

find . -not -name 'update.sh' -delete
echo 'DELETED all files except update.sh'

# over HTTPS, may want to switch to using SSH key
git clone https://github.com/robotics-at-maryland/ram_website.git

mv ./ram_website/_site/* .

rm -rf ram_website/

echo 'UPDATED website with master branch'