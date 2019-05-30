lapackpractice1: lapackpractice1.o invA.o
	gfortran -o lapackpractice1 lapackpractice1.o invA.o

invA.o: invA.f
	gfortran -c invA.f

lapackpractice1.o: lapackpractice1.f invA.o
	gfortran -c lapackpractice1.f