HEADER = de.h
TARGET = shade_exe

OBJS := $(patsubst %.cc,%.o,$(wildcard *.cc))
CC = g++
OPTION = -O3

$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS) $(OPTION) -lm 

%.o: %.cc $(HEADER)
	$(CC) $(CFLAGS) -c $<

clean:
	rm -rf *.o