/*
 * memory.h
 *
 *  Created on: Feb 17, 2021
 *      Author: mulholbn
 */

#ifndef SRC_TYPE_H
#define SRC_TYPE_H_
#include "xil_types.h"

typedef struct canNode_t{
	u32 id;
	u16 earlyPoint;
	u16 latePoint;
	u8 idManipulated;
	struct canNode_t* nextNode;
} canNode;



#endif /* SRC_MEMORY_H_ */
