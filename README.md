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
In compiling the code, you need ROOT libralies, and root-config command should be available. You do not need external CERN Program Library, because minimal subroutines of cernlib are written in hbook.f, zebra.f, kernlib.f, and cernlib.c.
Then you can use h2root command
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
Then in h2roo.cxx,

h1->Fill(x,yx);
h2->Fill(x+offsetx,y+offsety,hij(id,i,j));

were replaced with

h1->SetBinContent(i,hi(id,i));
h2->SetBinContent(i,j,hij(id,i,j));

because the method of the error calculation changed from ROOT v6
```
