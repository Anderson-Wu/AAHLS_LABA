# 1 "D:/Vivado_HLS_Tutorial/ug871-design-files/Interface_Synthesis/lab1/adders.c"
# 1 "D:/Vivado_HLS_Tutorial/ug871-design-files/Interface_Synthesis/lab1/adders.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:/Vivado_HLS_Tutorial/ug871-design-files/Interface_Synthesis/lab1/adders.c" 2
# 46 "D:/Vivado_HLS_Tutorial/ug871-design-files/Interface_Synthesis/lab1/adders.c"
# 1 "D:/Vivado_HLS_Tutorial/ug871-design-files/Interface_Synthesis/lab1/adders.h" 1
# 49 "D:/Vivado_HLS_Tutorial/ug871-design-files/Interface_Synthesis/lab1/adders.h"
int adders(int in1, int in2, int in3,int in4,int in5,int in6,int in7);
# 47 "D:/Vivado_HLS_Tutorial/ug871-design-files/Interface_Synthesis/lab1/adders.c" 2

int adders(int in1, int in2, int in3,int in4,int in5,int in6,int in7) {



#pragma HLS INTERFACE ap_none port=in1
#pragma HLS INTERFACE ap_none port=in2
#pragma HLS INTERFACE ap_none port=in3
#pragma HLS INTERFACE ap_none port=in4
#pragma HLS INTERFACE ap_none port=in5
#pragma HLS INTERFACE ap_none port=in6
#pragma HLS INTERFACE ap_none port=in7


 int sum;

 sum = in1 + in2 + in3 + in4 + in5 + in6 + in7;

 return sum;

}
