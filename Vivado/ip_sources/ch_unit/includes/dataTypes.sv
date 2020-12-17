`ifndef TYPESDEFINED
`define TYPESDEFIND

package dataTypes_pkg;

	import dataSizes_pkg::*;



//Define the data that describes out output
//`ifndef PAD
	typedef struct packed{
		logic [DATA_EN_SIZE-1 : 0] enable;
		logic [DATA_OUT_SIZE-1 : 0] out;
	} output_t;
/*`else
	typedef struct packed{
		logic [DATA_EN_SIZE-1 : 0] enable;
		logic [DATA_OUT_SIZE-1 : 0] out;
		logic [D_PAD-1 : 0] padding;
	} output_t;
	*/
//`endif



	typedef union packed{
		logic [MEMSIZE_BITS - 1 : 0] rawMemData;
		output_t [D_MULT - 1 : 0] outputData;
		logic [1:0][HALF_MEM_SIZE - 1: 0] halfWord;

	} mem_t;






endpackage: dataTypes_pkg

`endif
