# eight-queens-sv
https://en.wikipedia.org/wiki/Eight_queens_puzzle

## EDA playground: 
https://www.edaplayground.com/x/5BmR

## VCS 2014.12 found 89/92 unique solutions in 1000 random trials:
```
Compiler version J-2014.12-SP1-1; Runtime version J-2014.12-SP1-1;  Apr 15 13:54 2019
START EQ TEST ...
Iteration = 0 ...
=== RAND EIGHT QUEENS (0) ===
*  *  *  *  Q  *  *  *  
*  Q  *  *  *  *  *  *  
*  *  *  *  *  *  *  Q  
Q  *  *  *  *  *  *  *  
*  *  *  Q  *  *  *  *  
*  *  *  *  *  *  Q  *  
*  *  Q  *  *  *  *  *  
*  *  *  *  *  Q  *  *  

.... .... ....

=== RAND EIGHT QUEENS (87) ===
*  *  Q  *  *  *  *  *  
*  *  *  *  *  *  Q  *  
*  Q  *  *  *  *  *  *  
*  *  *  *  *  *  *  Q  
*  *  *  *  *  Q  *  *  
*  *  *  Q  *  *  *  *  
Q  *  *  *  *  *  *  *  
*  *  *  *  Q  *  *  *  

Iteration = 300 ...
=== RAND EIGHT QUEENS (88) ===
*  *  *  Q  *  *  *  *  
*  *  *  *  *  *  Q  *  
*  *  Q  *  *  *  *  *  
*  *  *  *  *  *  *  Q  
*  Q  *  *  *  *  *  *  
*  *  *  *  Q  *  *  *  
Q  *  *  *  *  *  *  *  
*  *  *  *  *  Q  *  *  

Iteration = 400 ...
Iteration = 500 ...
Iteration = 600 ...
Iteration = 700 ...
Iteration = 800 ...
Iteration = 900 ...
Unique solutions found = 89
$finish at simulation time                    0
```

## IES 15.20 found all 92/92 unique solutions in less than 400 random trials:
```
ncsim> source /incisiv/15.20/tools/inca/files/ncsimrc
ncsim> run
START EQ TEST ...
Iteration = 0 ...
=== RAND EIGHT QUEENS (0) ===
*  Q  *  *  *  *  *  *  
*  *  *  *  Q  *  *  *  
*  *  *  *  *  *  Q  *  
Q  *  *  *  *  *  *  *  
*  *  Q  *  *  *  *  *  
*  *  *  *  *  *  *  Q  
*  *  *  *  *  Q  *  *  
*  *  *  Q  *  *  *  *  

.... .... .... 

=== RAND EIGHT QUEENS (90) ===
*  *  *  *  *  Q  *  *  
*  *  *  Q  *  *  *  *  
*  *  *  *  *  *  Q  *  
Q  *  *  *  *  *  *  *  
*  *  *  *  *  *  *  Q  
*  Q  *  *  *  *  *  *  
*  *  *  *  Q  *  *  *  
*  *  Q  *  *  *  *  *  

=== RAND EIGHT QUEENS (91) ===
*  *  *  *  *  Q  *  *  
*  *  Q  *  *  *  *  *  
*  *  *  *  *  *  Q  *  
*  Q  *  *  *  *  *  *  
*  *  *  *  *  *  *  Q  
*  *  *  *  Q  *  *  *  
Q  *  *  *  *  *  *  *  
*  *  *  Q  *  *  *  *  

Iteration = 400 ...
Iteration = 500 ...
Iteration = 600 ...
Iteration = 700 ...
Iteration = 800 ...
Iteration = 900 ...
Unique solutions found = 92
Simulation complete via implicit call to $finish(1) at time 0 FS + 1
