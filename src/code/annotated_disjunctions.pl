person(john).
person(mary).

0.7::burglary.
0.01::earthquake(heavy); 0.19::earthquake(mild); 0.8::earthquake(none).

0.90::alarm :-   burglary, earthquake(heavy).
0.85::alarm :-   burglary, earthquake(mild).
0.80::alarm :-   burglary, earthquake(none).
0.10::alarm :- \+burglary, earthquake(mild).
0.30::alarm :- \+burglary, earthquake(heavy).

0.8::calls(X) :- alarm, person(X).
0.1::calls(X) :- \+alarm, person(X).

evidence(calls(john),true).
evidence(calls(mary),true).

query(burglary).
query(earthquake(_)).
