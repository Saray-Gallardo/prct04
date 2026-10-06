// Programa en C para calcular la media y la desviacion tipica de dos listas de notas (PA101 y PA102).
// PA101: 7.0, 8.0, 5.0, 9.0, 6.0, 8.5, 10.0
// PA102: 6.0, 6.0, 7.5, 8.0, 7.0, 9.0, 5.5

#include <stdio.h>
#include <math.h>

// Funcion para calcular la media de un array de doubles
double calcular_media(double notas[], int n) {
    double suma = 0.0;
    for (int i = 0; i < n; i++) {
        suma += notas[i];
    }
    return suma / n;
}

// Funcion para calcular la desviacion tipica de un array de doubles
double calcular_desviacion_tipica(double notas[], int n, double media) {
    double suma_cuadrados = 0.0;
    for (int i = 0; i < n; i++) {
        suma_cuadrados += pow(notas[i] - media, 2);
    }
    return sqrt(suma_cuadrados / n);
}

int main() {
    // Listas de notas
    double PA101[] = {7.0, 8.0, 5.0, 9.0, 6.0, 8.5, 10.0};
    double PA102[] = {6.0, 6.0, 7.5, 8.0, 7.0, 9.0, 5.5};
    int n = sizeof(PA101) / sizeof(PA101[0]); // Numero de elementos en las listas

    // Calcular media y desviacion tipica para PA101
    double media_PA101 = calcular_media(PA101, n);
    double desviacion_PA101 = calcular_desviacion_tipica(PA101, n, media_PA101);

    // Calcular media y desviacion tipica para PA102
    double media_PA102 = calcular_media(PA102, n);
    double desviacion_PA102 = calcular_desviacion_tipica(PA102, n, media_PA102);

    // Imprimir resultados
    printf("PA101 - Media: %.2f, Desviacion Tipica: %.2f\n", media_PA101, desviacion_PA101);
    printf("PA102 - Media: %.2f, Desviacion Tipica: %.2f\n", media_PA102, desviacion_PA102);

    return 0;
}