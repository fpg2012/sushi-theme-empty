#!/bin/bash
os_type=$(uname -s)

case "$os_type" in
	Linux*)	pandoc -t html --filter pandoc-katex --filter pandocfilter-pygments.py;;
	Darwin*) pandoc -t html --filter pandoc-katex-darwin --filter pandocfilter-pygments.py;;
	*)	echo "Unknown OS: $os_type"
esac
