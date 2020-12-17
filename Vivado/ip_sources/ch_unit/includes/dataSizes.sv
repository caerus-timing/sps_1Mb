`ifndef SIZESDEFINED
`define SIZESDEFINED

package dataSizes_pkg;

	parameter MEMSIZE_BITS  = 32;
	parameter MEMADDR_BITS  = 14;
	parameter HALF_MEM_SIZE = (MEMSIZE_BITS / 2);
/*
* DATA_OUT_SIZE + DATA_EN_SIZE must be able to be integer multiplied to equal 32.
* That integer is defiend as D_MULT.
* If it can not be made an integer multiple, uncomment `define PAD and set the parameter D_PAD
*/
	parameter DATA_OUT_SIZE = 1;
	parameter DATA_EN_SIZE  = 1;
	parameter D_MULT        = 16;
	parameter D_PAD         = 0;
	parameter ID_SIZE       = 11;
`define PAD


endpackage: dataSizes_pkg

`endif
