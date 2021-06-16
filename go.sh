#!/bin/bash -x

filter() {
	sed -i -e 's,{{execute}},,g' -e 's,^<pre .*>$,```,' -e 's,^</pre>$,```,' $@
}

filenames=`find . -type f -name *_*.md`

for file in ${filenames}
do
	chapter=$(echo ${file} | awk -F\/ '{print $NF}' | awk -F\_ '{print $1}')
	echo "# ${chapter}" > ${file}.parse
	echo "" >> ${file}.parse
	cat $file >> ${file}.parse
	filter ${file}.parse
	pandoc ${file}.parse -o ${file}.pdf
	rm ${file}.parse
done
