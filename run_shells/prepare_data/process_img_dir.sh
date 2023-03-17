#!/bin/bash

set -ex

#把所有Webp格式图片转为jpg
for f in $(ls ./)
do
	file_name=${f%.*}
	ext_name=${f##*.}
	if [[ ${ext_name}=="webp" ]]; then
		sf=${file_name}.jpg
		dwebp $f -o ${sf}
	fi
done

#删除所有webp格式图片
rm -rf *.webp

#修改所有图片名字，以数字命名
i=0
for f in $(ls ./)
do
	file_name=${f%.*}
	ext_name=${f##*.}
	mv $f ${i}.${ext_name}
	let i++
done
