#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>


#include "fdtd_1d_maxwell.h"
#include "pulse.h"
#include "output.h"
#include "constants.h"

#include <opencv2/highgui.hpp>

/******************************************************************************/
void free_space(void){
    const char *tag="test"; // used to label output files

    /** Optical pulse ***/
    double tau = 5.0; // fs, width of the pulse
    double w0=0; // no oscillating component

    /*** Computational parameters ***/
    int Nx = 4000; // number of cells along x
    double dx = 20.0; // nm
    double xi = 0.9;
    int ix0_1 = 1000; // cell number of the center of the pulse at t=0
    int ix0_2 = 3000; // cell number of the center of the pulse at t=0
    int No = 1000; // defines the output rate
    int Nd = 10; // defines the draw rate

    /*** start execution ***/
    double dt = xi*dx/cspeed; // in fs
    printf("dx=%.12e nm, dt=%.12e fs\n", dx, dt);

    /*** arrays for the fields ***/
    double *fields = static_cast<double*>(calloc(2*Nx, sizeof(double)));
    double *Hz = fields+0*Nx;
    double *Ey = fields+1*Nx;

    int T=0; // total steps
    create_initial_dist(Nx, Ey, Hz, dx, dt, cspeed, ix0_1, tau, w0, 1);
    create_initial_dist(Nx, Ey, Hz, dx, dt, cspeed, ix0_2, tau, w0, -1);
    output_Ey_vs_x(Nx, Ey, 0, dx, tag);
    output_Hz_vs_x(Nx, Hz, 0, dx, tag);

    draw_Ey_vs_x(Nx, Ey, 0, dx, tag);
    draw_Hz_vs_x(Nx, Hz, 0, dx, tag);
    int keyCode = cv::waitKey(0);
    if (keyCode == 's') {
        printf("Elapsed time -> %g fs (%d steps)\n", dt*(T), T);
        output_Ey_vs_x(Nx, Ey, T, dx, tag);
        output_Hz_vs_x(Nx, Hz, T, dx, tag);
    }

    for(;;T++){
        /* printf("Number of steps to run (<=0 to exit) -> "); */
        /* fflush(stdout); */
        /* int steps; */
        /* scanf("%d", &steps); */
        /* if(steps<=0) break; */

        /* printf("Making %d steps\n", steps); */
        /* for(int n=0; n<steps; n++, T++){ */
        update_Bz(Nx, Hz, Ey, xi); // find Bz at n+1/2
        update_Dy(Nx, Ey, Hz, xi); // find Ey at n+1

        if((T+1)%Nd == 0){
            draw_Ey_vs_x(Nx, Ey, 0, dx, tag);
            draw_Hz_vs_x(Nx, Hz, 0, dx, tag);
            int keyCode = cv::waitKey(0);
            if (keyCode == 27) //ESC
                break;
            if (keyCode == 's') {
                printf("Elapsed time -> %g fs (%d steps)\n", dt*(T+1), T+1);
                output_Ey_vs_x(Nx, Ey, T+1, dx, tag);
                output_Hz_vs_x(Nx, Hz, T+1, dx, tag);
            }
        }
        /* output of Hz */
        if((T+1)%No == 0){
            printf("Elapsed time -> %g fs (%d steps)\n", dt*(T+1), T+1);
            output_Ey_vs_x(Nx, Ey, T+1, dx, tag);
            output_Hz_vs_x(Nx, Hz, T+1, dx, tag);
        }
        /* }// end of n loop */
    }// end of global loop
    free(fields);
}
/*****************************************************************************/
int main(void){
    free_space();
    return 0;
}
/*** END OF FILE **************************************************************/
