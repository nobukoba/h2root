# h2root
h2root command with 128 MB memory

## How to compile and use
On the terminal, clone the macros by the following command.
```
$ git clone https://github.com/nobukoba/h2root
$ ls
$ ... h2root ...
$ cd h2root
$ make
```
Then you can use the h2root
```
$ ./h2root test.hbook
 or
$ ./h2root test.hbook out.root
```

## How did I copy these sources?
```
$ cp root-6.18.04/misc/minicern/src/cernlib.c ./
$ cp root-6.18.04/misc/minicern/src/hbook.f   ./
$ cp root-6.18.04/misc/minicern/src/zebra.f   ./
$ cp root-6.18.04/misc/minicern/src/kernlib.f ./
$ cp root-6.18.04/main/src/h2root.cxx         ./
$ sed -i -e 's/4000000/32000000/g' *.f *.c *.cxx
```
