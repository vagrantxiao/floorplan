#ifndef __TYPEDEFS_H__
#define __TYPEDEFS_H__

#include <iostream>
#include <cmath>
#include <vector>
#include <iomanip>
#include <fstream>

using namespace std;

#define TRIAL_NUM 2000000
#define MAX_ROW   7
#define SUCCESS   0
#define FAIL      1

#define COST_REQ 0.8
#define LUT_RATIO 1
#define BRAM_RATIO 1
#define DSP_RATIO 1



extern double  e; //  e: termination temperature
extern double at; // at: derivative of temperature
extern double  T; //  T: initial temperature
extern int     L; //  L: the maximum interation number

typedef unsigned int uint;

typedef struct{ //
	string src, dest;
	int i;
} connect;

typedef struct{ //
    string name;
    double lut, ff, bram18, dsp2;
    int i;  //
}pragma;

typedef struct{ //tiles
    string tile_l;
    string tile_r;
    double x_l, x_r;
    int i;  //
}tile;

struct dfx{ //
    string name;
    double lut, ff, bram18, dsp2;
    int row, start, end;
    int i;  //
};

typedef struct{ //
	int row;
    double start, end;
}tile_range;

typedef struct{ //
    double lut, bram18, dsp2;
}res_per_tile;

struct res_range{ //
	bool valid=false;
    int start, end;
};

#endif
