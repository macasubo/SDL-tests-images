CPP=gcc    #Commande du compilateur
CFLAGS=-O3 -I/usr/local/include/SDL2 #Option d'optimisation du programme
LDFLAGS=-lSDL2 -lSDL2_image #-lSDL_mixer #Linker
EXEC=test  #Nom du programme à modifier

all: ${EXEC}

${EXEC}: main.o
	${CPP} $(CFLAGS) -o ${EXEC} main.o ${LDFLAGS}

main.o: main.c
	${CPP} $(CFLAGS) -c main.c



clean:	
	rm -fr *.o

mrproper: clean
	rm -fr ${EXEC}
