#!/bin/bash
#Auth: bell@greedlab.com
#
# build
#

# 当前目录
CURRENT_DIR=${PWD}

# 脚本所在目录
SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd)

## blog 目录
BLOG_DIRECTORY=${SCRIPT_DIR}/..

cd ${BLOG_DIRECTORY}

greed-summary -t "greedpatch document" -i '[scripts,resource,Resource,Publish,_book,node_modules,docs]' -d  ${BLOG_DIRECTORY} -o  ${BLOG_DIRECTORY}/SUMMARY.md -S gitbook -a

cp ${BLOG_DIRECTORY}/SUMMARY.md ${BLOG_DIRECTORY}/README.md

rm -rf ${BLOG_DIRECTORY}/_book
rm -rf ${BLOG_DIRECTORY}/docs

gitbook build

mv ${BLOG_DIRECTORY}/_book ${BLOG_DIRECTORY}/docs

cd ${CURRENT_DIR}
