#include<stdio.h>
#include<string.h>
/******************************************************************************/
void output_Ey_vs_x(int Nx, const double *Ey, int T, double dx, const char *tag){
    char fname[100];
    sprintf(fname, "Ey_vs_x_T=%d_%s.dat", T, tag);
    FILE *fp=fopen(fname, "w");
    fprintf(fp, "# 1: x (micron) | 2 : Ey (a.u.) \n");
    for(int i=0; i<Nx; i++){
        double x=i*dx;
        fprintf(fp, "% .12e % .12e\n", 1e-3*x, Ey[i]);
    }
    fclose(fp);
    printf("Completed writing to file \"%s\"\n", fname);
}
/*** END OF FILE **************************************************************/
