advantage(D, Threshold, Result, NonAdvantagePercentage, Percentage) :-
    findall([X, Y, Success],
            (between(1, D, X),
             between(1, D, Y),
             ((X >= Threshold;
               Y >= Threshold) -> Success = pass;
                                  Success = fail)),
            Result),
    count_passes(Result, PassCount),
    length(Result, Total),
    RawPercentage is (PassCount / Total) * 100,
    format(atom(Percentage), '~2f%', [RawPercentage]),
    RawNonAdvantagePercentage is ((D - (Threshold - 1)) / D) * 100,
    format(atom(NonAdvantagePercentage), '~2f%', [RawNonAdvantagePercentage]).

count_passes([], 0).
count_passes([[_,_,pass]|T], Count) :-
    count_passes(T, RestCount),
    Count is RestCount + 1.
count_passes([[_,_,fail]|T], Count) :-
    count_passes(T, Count).

advantage_list(UpToD, Result) :-
  findall([D, T, NAP, AP],
          (between(2, UpToD, D),
           between(2, D, T),
           advantage(D, T, _, NAP, AP)
          ),
          Result),
  print_each_result(Result).

print_each_result(List) :-
    maplist(print_all, List).

print_all([]) :- nl.
print_all([X|Rest]) :- write(X), write(' '), print_all(Rest).
