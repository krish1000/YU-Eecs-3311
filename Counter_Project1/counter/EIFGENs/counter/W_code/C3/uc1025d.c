/*
 * Class UC_UTF16_ROUTINES
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static const EIF_TYPE_INDEX egt_0_1025 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_1_1025 [] = {0xFF01,245,1024,0xFFFF};
static const EIF_TYPE_INDEX egt_2_1025 [] = {0xFF01,1024,0xFFFF};
static const EIF_TYPE_INDEX egt_3_1025 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_4_1025 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_5_1025 [] = {0xFF01,1024,0xFFFF};
static const EIF_TYPE_INDEX egt_6_1025 [] = {0xFF01,1024,0xFFFF};
static const EIF_TYPE_INDEX egt_7_1025 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_8_1025 [] = {0xFF01,14,0xFFFF};
static const EIF_TYPE_INDEX egt_9_1025 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_10_1025 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_11_1025 [] = {0xFF01,15,0xFFFF};
static const EIF_TYPE_INDEX egt_12_1025 [] = {0xFF01,1024,0xFFFF};
static const EIF_TYPE_INDEX egt_13_1025 [] = {0xFF01,1003,0xFFFF};
static const EIF_TYPE_INDEX egt_14_1025 [] = {0xFF01,962,0xFFFF};
static const EIF_TYPE_INDEX egt_15_1025 [] = {0xFF01,1025,0xFFFF};
static const EIF_TYPE_INDEX egt_16_1025 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_17_1025 [] = {0xFF01,232,0xFFFF};


static const struct desc_info desc_1025[] = {
	{EIF_GENERIC(NULL), 0xFFFFFFFF, 0xFFFFFFFF},
	{EIF_GENERIC(egt_0_1025), 0, 0xFFFFFFFF},
	{EIF_GENERIC(egt_1_1025), 1, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 2, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 3, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 4, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 5, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 6, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 7, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 8, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 9, 0xFFFFFFFF},
	{EIF_GENERIC(egt_2_1025), 10, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 11, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 12, 0xFFFFFFFF},
	{EIF_GENERIC(egt_3_1025), 13, 0xFFFFFFFF},
	{EIF_GENERIC(egt_4_1025), 14, 0xFFFFFFFF},
	{EIF_GENERIC(egt_5_1025), 15, 0xFFFFFFFF},
	{EIF_GENERIC(egt_6_1025), 16, 0xFFFFFFFF},
	{EIF_GENERIC(egt_7_1025), 17, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 19, 0xFFFFFFFF},
	{EIF_GENERIC(egt_8_1025), 20, 0xFFFFFFFF},
	{EIF_GENERIC(egt_9_1025), 21, 0xFFFFFFFF},
	{EIF_GENERIC(egt_10_1025), 22, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 23, 0xFFFFFFFF},
	{EIF_GENERIC(egt_11_1025), 24, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 25, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 26, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 27, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0801 /*1024*/), 28, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01C7 /*227*/), 29, 0xFFFFFFFF},
	{EIF_GENERIC(egt_12_1025), 30, 0xFFFFFFFF},
	{EIF_GENERIC(egt_13_1025), 13629, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13658, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13659, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13660, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13661, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13662, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13663, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13664, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x018B /*197*/), 13665, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x018B /*197*/), 13666, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13667, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13668, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13669, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13670, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13671, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13672, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13673, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13674, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13675, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13676, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13677, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13678, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13679, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13680, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13681, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13682, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13683, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13684, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13685, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13686, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13687, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13688, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13689, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13690, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13691, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13636, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13637, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13638, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13639, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13640, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13641, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13642, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13643, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13644, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13645, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13646, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13647, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13648, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13649, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13650, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13651, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13652, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13653, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13654, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13655, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13656, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13657, 0xFFFFFFFF},
	{EIF_GENERIC(egt_14_1025), 14396, 0xFFFFFFFF},
	{EIF_GENERIC(egt_15_1025), 14395, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14454, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14455, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14456, 0xFFFFFFFF},
	{EIF_GENERIC(egt_16_1025), 14457, 0xFFFFFFFF},
	{EIF_GENERIC(egt_17_1025), 14458, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14459, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14460, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14461, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14462, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14463, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14464, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14465, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14466, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14467, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14468, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14469, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14470, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14471, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14472, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14473, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14474, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14475, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14476, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14477, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14478, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14479, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14480, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 14481, 0xFFFFFFFF},
};
void Init1025(void)
{
	IDSC(desc_1025, 0, 1024);
	IDSC(desc_1025 + 1, 1, 1024);
	IDSC(desc_1025 + 32, 402, 1024);
	IDSC(desc_1025 + 33, 488, 1024);
	IDSC(desc_1025 + 89, 386, 1024);
	IDSC(desc_1025 + 90, 399, 1024);
	IDSC(desc_1025 + 91, 474, 1024);
}


#ifdef __cplusplus
}
#endif
