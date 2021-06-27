% File version of first_order
person(john).
person(mary).

0.7::burglary.
0.2::earthquake.

0.9::alarm :- burglary, earthquake.
0.8::alarm :- burglary, \+earthquake.
0.1::alarm :- \+burglary, earthquake.

0.8::calls(X) :- alarm, person(X).
0.1::calls(X) :- \+alarm, person(X).

evidence(calls(john),true).
evidence(calls(mary),true).

query(burglary).
query(earthquake).
