# testprojekt
/*
Aufgabe: 3-2 Musterl�sung
Autor:   Rainer Winkler
Datum    01.09.2021
*/
#include <stdio.h>

int main()
{
    char c = 100;
    short s = 1000;
    int i = 100000;
    float f = 3.14;
    double d = 1.23456789;

    printf("Aufgabenstellung 1: Wertausgabe und Speicherbedarf\n");
    printf("---------------------------------------------------------------\n");
    printf("Der Wert eines char-Datentyp:\t%d\t\tGroesse: %d Byte\n", c, sizeof(char) );
    printf("Der Wert eines short-Datentyp:\t%d\t\tGroesse: %d Byte\n", s, sizeof(short));
    printf("Der Wert eines int-Datentyp:\t%d\t\tGroesse: %d Byte\n", i, sizeof(int));
    printf("Der Wert eines float-Datentyp:\t%f\tGroesse: %d Byte\n", f, sizeof(float));
    printf("Der Wert eines double-Datentyp:\t%.8lf\tGroesse: %d Byte\n", d, sizeof(double));
    printf("\n\n");

    printf("Aufgabenstellung 2: Wertebereich\n");
    printf("---------------------------------------------------------------\n");
    char c1 = 300;
    short s1 = 50000;
    int i1 = 3000000000;
    printf("300 als char-Datentyp:\t\t%d\n", c1);
    printf("50'000 als short-Datentyp:\t%d\n", s1);
    printf("3'000'000'000 als int-Datentyp:\t%d\n", i1);
    printf("\n\n");

    printf("Aufgabenstellung 3: pi auf 12 Ziffern genau\n");
    printf("---------------------------------------------------------------\n");
    float pi_f =  3.14159265359;
    double pi_d = 3.14159265359;
    printf("Der Wert von pi als float-Datentyp:  %.11f\n", pi_f);
    printf("Der Wert von pi als double-Datentyp: %.11lf\n", pi_d);
    printf("\n\n");

    return 0;
}

# Bildverkleinerung
