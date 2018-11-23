#Make

hist.pdf: hist.py walk.dat walkMP.dat
	python3 hist.py

walk.dat: walk.x
	./walk.x > walk.dat

walk.x: walk.c
	gcc walk.c -o walk.x

walkMP.dat: walkMP.x
	./walkMP.x > walkMP.dat

walkMP.x: walkMP.c
	gcc -fopenmp walkMP.c -o walkMP.x

