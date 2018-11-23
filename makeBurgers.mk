#Make

burgers.pdf: burgers.py burgers.dat
	python3 burgers.py

burgers.dat: burgers.x
	./burgers.x > burgers.dat

burgers.x: burgers.c
	gcc -fopenmp burgers.c -o burgers.x

