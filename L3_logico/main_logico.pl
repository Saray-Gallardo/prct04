% Escriba un programa en Prolog que calcule la media y desviacion tipica de tres listas de notas: PA101 [7.0, 8.0, 5.0, 9.0, 6.0, 8.5, 10.0], PA102 [6.0, 6.0, 7.5, 8.0, 7.0, 9.0, 5.5] y PRUEBA [10.0, 10.0, 10.0]
:- initialization(main).

% Listas de notas para PA101, PA102 y PRUEBA
pa101([7.0, 8.0, 5.0, 9.0, 6.0, 8.5, 10.0]).
pa102([6.0, 6.0, 7.5, 8.0, 7.0, 9.0, 5.5]).
prueba([10.0, 10.0, 10.0]).

% Calcular la media de una lista de notas
mean(List, Mean) :-
    sum_list(List, Sum),
    length(List, Length),
    Length > 0,
    Mean is Sum / Length.

% Calcular la desviación típica de una lista de notas
std_dev(List, StdDev) :-
    mean(List, Mean),
    findall((X - Mean) ^ 2, member(X, List), SquaredDifferences),
    sum_list(SquaredDifferences, SumSquaredDifferences),
    length(List, Length),
    Length > 0,
    Variance is SumSquaredDifferences / Length,
    StdDev is sqrt(Variance).

% Función principal para calcular y mostrar la media y desviación típica de las listas de notas
main :-
    pa101(PA101),
    pa102(PA102),
    prueba(PRUEBA),
    mean(PA101, MeanPA101),
    std_dev(PA101, StdDevPA101),
    mean(PA102, MeanPA102),
    std_dev(PA102, StdDevPA102),
    mean(PRUEBA, MeanPRUEBA),
    std_dev(PRUEBA, StdDevPRUEBA),
    format('PA101: Media = ~2f, Desviación Típica = ~2f~n', [MeanPA101, StdDevPA101]),
    format('PA102: Media = ~2f, Desviación Típica = ~2f~n', [MeanPA102, StdDevPA102]),
    format('PRUEBA: Media = ~2f, Desviación Típica = ~2f~n', [MeanPRUEBA, StdDevPRUEBA]),
    halt.
    