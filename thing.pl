/*
    Logan Nielsen
    Exam 3 - problem 15 - part (b)
*/

isDivisible(I) :- 0 is mod(I, 3).
isDivisible(I) :- 0 is mod(I, 5).
isDivisible(I) :- 0 is mod(I, 7).

addMods(I, Sum) :- I > 1000, write(Sum).
addMods(I, Sum) :- I =< 1000, isDivisible(I), TmpSum is Sum+I, TmpI is I+1, addMods(TmpI, TmpSum).
addMods(I, Sum) :- I =< 1000, \+ isDivisible(I), TmpI is I+1, addMods(TmpI, Sum).
