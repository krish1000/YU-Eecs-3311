/*
 * Code for class DS_HASH_TABLE_CURSOR [INTEGER_32, INTEGER_32]
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1105_8581(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1105_8582(EIF_REFERENCE);
extern void EIF_Minit1105(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {DS_HASH_TABLE_CURSOR}.container */
EIF_TYPED_VALUE F1105_8581 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6214,Dtype(Current)));
	return r;
}


/* {DS_HASH_TABLE_CURSOR}.next_cursor */
EIF_TYPED_VALUE F1105_8582 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6183,Dtype(Current)));
	return r;
}


void EIF_Minit1105 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
