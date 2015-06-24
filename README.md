OBDII software simulator
===========
It simulates the most common parameters.
Params like how fast you're going, how fast the engine's going, the air flow into the engine, the throttle position... everything.

Running the daemon
-----------------

`docker run -d --name obdsim -v /dev/pts:/dev/pts qapps/obdsim [params]`


####available params:

    [-g|--generator=<name of generator>
       [-s|--seed=<generator-seed>]
       [-d|--customdelay=<ecu delay(ms)>]
    ]
    [-q|--logfile=<logfilename to write to>]
    [-V|--elm-version=<pretend to be this on ATZ>]
    [-D|--elm-device=<pretend to be this on AT@1>]
    [-L|--list-protocols]
    [-p|--protocol=<OBDII protocol>]
    [-o|--launch-logger]
    [-c|--launch-screen] ["EXIT" or C-a,k to exit]
    [-t|--tty-device=<real /dev/ entry to open>]
    [-k|--socket=<listen port>]
    [-e|--genhelp=<name of generator>]
    [-l|--list-generators]
    [-n|--benchmark=<seconds>]
    [-v|--version] [-h|--help]

####The generators built into this sim:
 "Random"
 "Cycle" (default)
 "Logger"
 "dlopen"
 "Socket"
 "Error"