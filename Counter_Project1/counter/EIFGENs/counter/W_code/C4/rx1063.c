/*
 * Code for class RX_PCRE_MATCHER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1063_9352(EIF_REFERENCE);
extern void F1063_9353(EIF_REFERENCE);
extern void F1063_9354(EIF_REFERENCE);
extern void F1063_9355(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9356(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9357(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1063_9358(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1063_9359(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1063_9360(EIF_REFERENCE);
extern void F1063_9361(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9362(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9363(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9364(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9365(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9366(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9367(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9368(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9369(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9370(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9371(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9372(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9373(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9374(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9375(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9376(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9377(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9378(EIF_REFERENCE);
extern void F1063_9379(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1063_9380(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1063_9381(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9382(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9383(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9384(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9385(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9386(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9387(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9388(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9389(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9390(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9391(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9392(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1063_9393(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9394(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1063_9395(EIF_REFERENCE);
extern void EIF_Minit1063(void);

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

/* {RX_PCRE_MATCHER}.make */
void F1063_9352 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 0, 15591);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15591);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(6676, 1061))(Current);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 6773, 0xF8000219, 0); /* offset_vector */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5748, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ui4_2 = ((EIF_INTEGER_32) 64L);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5049, "make_filled", tr1))(tr1, ui4_1x, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTAR(Current, tr2);
	*(EIF_REFERENCE *)(Current + RTWA(6773, dtype)) = (EIF_REFERENCE) tr2;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 6774, 0x10000000, 1); /* offset_vector_count */
	*(EIF_INTEGER_32 *)(Current + RTWA(6774, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 6779, 0x10000000, 1); /* brastart_capacity */
	*(EIF_INTEGER_32 *)(Current + RTWA(6779, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 6776, 0xF8000219, 0); /* brastart_vector */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5748, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6779, dtype));
	ui4_2 = ti4_1;
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5049, "make_filled", tr1))(tr1, ui4_1x, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTAR(Current, tr2);
	*(EIF_REFERENCE *)(Current + RTWA(6776, dtype)) = (EIF_REFERENCE) tr2;
	RTHOOK(6);
	RTDBGAA(Current, dtype, 6777, 0x10000000, 1); /* brastart_lower */
	*(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 6778, 0x10000000, 1); /* brastart_count */
	*(EIF_INTEGER_32 *)(Current + RTWA(6778, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 6783, 0x10000000, 1); /* eptr_capacity */
	*(EIF_INTEGER_32 *)(Current + RTWA(6783, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	RTHOOK(9);
	RTDBGAA(Current, dtype, 6780, 0xF8000219, 0); /* eptr_vector */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5748, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(9,1);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6783, dtype));
	ui4_2 = ti4_1;
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5049, "make_filled", tr1))(tr1, ui4_1x, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTAR(Current, tr2);
	*(EIF_REFERENCE *)(Current + RTWA(6780, dtype)) = (EIF_REFERENCE) tr2;
	RTHOOK(10);
	RTDBGAA(Current, dtype, 6781, 0x10000000, 1); /* eptr_lower */
	*(EIF_INTEGER_32 *)(Current + RTWA(6781, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(11);
	RTDBGAA(Current, dtype, 6782, 0x10000000, 1); /* eptr_upper */
	*(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	if (RTAL & CK_ENSURE) {
		RTHOOK(12);
		RTCT("no_pattern", EX_POST);
		tr1 = *(EIF_REFERENCE *)(Current + RTWA(6690, dtype));
		if ((EIF_BOOLEAN)(tr1 == NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(13);
		RTCT("not_compiled", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6554, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(14);
		RTCT("not_matched", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6556, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(15);
		RTCT("not_matching", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(16);
		RTCT("not_compiled", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6677, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
#undef ui4_2
}

/* {RX_PCRE_MATCHER}.reset */
void F1063_9353 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "reset";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLIU(2);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 0, 15592);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15592);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(6716, 1061))(Current);
	RTHOOK(2);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(6553, dtype))(Current);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("no_pattern", EX_POST);
		tr1 = *(EIF_REFERENCE *)(Current + RTWA(6690, dtype));
		if ((EIF_BOOLEAN)(tr1 == NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("not_compiled", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6554, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(5);
		RTCT("not_matched", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6556, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(6);
		RTCT("not_matching", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(7);
		RTCT("no_pattern", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6690, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if ((EIF_BOOLEAN)(tr1 == NULL)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(8);
		RTCT("not_compiled", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6677, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
}

/* {RX_PCRE_MATCHER}.wipe_out */
void F1063_9354 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "wipe_out";
	RTEX;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 0, 15593);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15593);
	RTIV(Current, RTAL);
	RTHOOK(1);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(6553, 1055))(Current);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 6770, 0x10000000, 1); /* subject_next_start */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
	*(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype)) = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("not_matched", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6556, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(4);
		RTCT("not_matching", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
}

/* {RX_PCRE_MATCHER}.compile */
void F1063_9355 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "compile";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLR(3,tr1);
	RTLR(4,tr2);
	RTLIU(5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 1, 15594);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15594);
	RTCC(arg1, 1062, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_pattern_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCK;
		RTHOOK(2);
		RTCT("a_pattern_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_2);
		RTCK;
		RTJB;
label_2:
		RTCF;
	}
body:;
	RTHOOK(3);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(6553, dtype))(Current);
	RTHOOK(4);
	ur1 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6710, 1061))(Current, ur1x);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 6774, 0x10000000, 1); /* offset_vector_count */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6735, dtype));
	*(EIF_INTEGER_32 *)(Current + RTWA(6774, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 * ((EIF_INTEGER_32) 2L)) + ((EIF_INTEGER_32) 2L));
	RTHOOK(6);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(6,1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2079, "count", tr1))(tr1)).it_i4);
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6774, dtype));
	if ((EIF_BOOLEAN) (ti4_1 < ti4_2)) {
		RTHOOK(7);
		RTDBGAA(Current, dtype, 6773, 0xF8000219, 0); /* offset_vector */
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5748, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(7,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		ur1 = tr2;
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6774, dtype));
		ui4_2 = ti4_1;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5057, "aliased_resized_area_with_default", tr1))(tr1, ur1x, ui4_1x, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTAR(Current, tr2);
		*(EIF_REFERENCE *)(Current + RTWA(6773, dtype)) = (EIF_REFERENCE) tr2;
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("pattern_set", EX_POST);
		tr1 = *(EIF_REFERENCE *)(Current + RTWA(6690, dtype));
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("not_matched", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6556, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("not_matching", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		if ((EIF_BOOLEAN) !tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(11);
		RTCT("pattern_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6690, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg1
}

/* {RX_PCRE_MATCHER}.captured_start_position */
EIF_TYPED_VALUE F1063_9356 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "captured_start_position";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLIU(2);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 1, 15595);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15595);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("has_matched", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6556, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("n_large_enough", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("n_small_enough", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype));
		RTTE((EIF_BOOLEAN) (arg1 < ti4_1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	RTDBGAL(0, 0x10000000, 1,0); /* Result */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	ui4_1 = (EIF_INTEGER_32) (arg1 * ((EIF_INTEGER_32) 2L));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
	Result = (EIF_INTEGER_32) ti4_1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("position_large_enough", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
		if ((!((EIF_BOOLEAN)(Result != ((EIF_INTEGER_32) 0L))) || ((EIF_BOOLEAN) (Result >= ti4_1)))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(6);
		RTCT("position_small_enough", EX_POST);
		tb1 = '\01';
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
		if (!((EIF_BOOLEAN) (Result <= ti4_1))) {
			tb2 = '\0';
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
			if ((EIF_BOOLEAN)(Result == (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L)))) {
				ui4_1 = arg1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6567, dtype))(Current, ui4_1x)).it_i4);
				ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
				tb2 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
			}
			tb1 = tb2;
		}
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {RX_PCRE_MATCHER}.captured_end_position */
EIF_TYPED_VALUE F1063_9357 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "captured_end_position";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLIU(2);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 1, 15596);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15596);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("has_matched", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6556, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("n_large_enough", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("n_small_enough", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype));
		RTTE((EIF_BOOLEAN) (arg1 < ti4_1), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	RTDBGAL(0, 0x10000000, 1,0); /* Result */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (arg1 * ((EIF_INTEGER_32) 2L)) + ((EIF_INTEGER_32) 1L));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
	Result = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
	if (RTAL & CK_ENSURE) {
		RTHOOK(5);
		RTCT("position_large_enough", EX_POST);
		if ((EIF_BOOLEAN) (Result >= ((EIF_INTEGER_32) -1L))) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(6);
		RTCT("position_small_enough", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
		if ((EIF_BOOLEAN) (Result <= ti4_1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_substring */
void F1063_9358 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "match_substring";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLR(3,tr1);
	RTLIU(4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 3, 15597);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15597);
	RTCC(arg1, 1062, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("compiled", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6554, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_subject_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_from_large_enough", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 >= ((EIF_INTEGER_32) 1L)), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("a_to_small_enough", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(4768, "count", arg1));
		RTTE((EIF_BOOLEAN) (arg3 <= ti4_1), label_1);
		RTCK;
		RTHOOK(5);
		RTCT("valid_bounds", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 <= (EIF_INTEGER_32) (arg3 + ((EIF_INTEGER_32) 1L))), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(6);
	RTDBGAA(Current, dtype, 6563, 0x10000000, 1); /* subject_start */
	*(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype)) = (EIF_INTEGER_32) arg2;
	RTHOOK(7);
	ur1 = RTCCL(arg1);
	ui4_1 = arg2;
	ui4_2 = arg3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6786, dtype))(Current, ur1x, ui4_1x, ui4_2x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("is_matching", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(9);
		RTCT("subject_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(10);
		RTCT("subject_start_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(11);
		RTCT("subject_end_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg3)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_unbounded_substring */
void F1063_9359 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "match_unbounded_substring";
	RTEX;
	EIF_BOOLEAN loc1 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc2 = (EIF_BOOLEAN) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,ur1);
	RTLR(3,tr1);
	RTLIU(4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_BOOL, &loc1);
	RTLU(SK_BOOL, &loc2);
	
	RTEAA(l_feature_name, 1062, Current, 2, 3, 15598);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15598);
	RTCC(arg1, 1062, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("compiled", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6554, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_subject_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_from_large_enough", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 >= ((EIF_INTEGER_32) 1L)), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("a_to_small_enough", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(4768, "count", arg1));
		RTTE((EIF_BOOLEAN) (arg3 <= ti4_1), label_1);
		RTCK;
		RTHOOK(5);
		RTCT("valid_bounds", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 <= (EIF_INTEGER_32) (arg3 + ((EIF_INTEGER_32) 1L))), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(6);
	RTDBGAL(1, 0x04000000, 1, 0); /* loc1 */
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6686, dtype));
	loc1 = (EIF_BOOLEAN) tb1;
	RTHOOK(7);
	RTDBGAL(2, 0x04000000, 1, 0); /* loc2 */
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6687, dtype));
	loc2 = (EIF_BOOLEAN) tb1;
	RTHOOK(8);
	if ((EIF_BOOLEAN)(arg2 != ((EIF_INTEGER_32) 1L))) {
		RTHOOK(9);
		RTDBGAA(Current, dtype, 6686, 0x04000000, 1); /* is_bol */
		*(EIF_BOOLEAN *)(Current + RTWA(6686, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	RTHOOK(10);
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(4768, "count", arg1));
	if ((EIF_BOOLEAN)(arg3 != ti4_1)) {
		RTHOOK(11);
		RTDBGAA(Current, dtype, 6687, 0x04000000, 1); /* is_eol */
		*(EIF_BOOLEAN *)(Current + RTWA(6687, dtype)) = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
	}
	RTHOOK(12);
	ur1 = RTCCL(arg1);
	ui4_1 = arg2;
	ui4_2 = arg3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6572, dtype))(Current, ur1x, ui4_1x, ui4_2x);
	RTHOOK(13);
	RTDBGAA(Current, dtype, 6686, 0x04000000, 1); /* is_bol */
	*(EIF_BOOLEAN *)(Current + RTWA(6686, dtype)) = (EIF_BOOLEAN) loc1;
	RTHOOK(14);
	RTDBGAA(Current, dtype, 6687, 0x04000000, 1); /* is_eol */
	*(EIF_BOOLEAN *)(Current + RTWA(6687, dtype)) = (EIF_BOOLEAN) loc2;
	if (RTAL & CK_ENSURE) {
		RTHOOK(15);
		RTCT("is_matching", EX_POST);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		if (tb1) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(16);
		RTCT("subject_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(17);
		RTCT("subject_start_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg2)) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(18);
		RTCT("subject_end_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg3)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(19);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.first_match */
void F1063_9360 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "first_match";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 0, 15599);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15599);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_matching", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
	ui4_1 = ti4_1;
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
	ui4_2 = ti4_2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6786, dtype))(Current, ur1x, ui4_1x, ui4_2x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
}

/* {RX_PCRE_MATCHER}.next_match */
void F1063_9361 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "next_match";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 0, 15600);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15600);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("is_matching", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	tb1 = '\0';
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,2);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
	if ((EIF_BOOLEAN) (ti4_1 >= ti4_2)) {
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(6684, dtype));
		tb1 = tb2;
	}
	if (tb1) {
		RTHOOK(3);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype));
		ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
		ui4_2 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6786, dtype))(Current, ur1x, ui4_1x, ui4_2x);
	} else {
		RTHOOK(4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		ur1 = RTCCL(tr1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype));
		ui4_1 = ti4_1;
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
		ui4_2 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6786, dtype))(Current, ur1x, ui4_1x, ui4_2x);
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef ui4_2
}

/* {RX_PCRE_MATCHER}.is_matching_caseless */
EIF_TYPED_VALUE F1063_9362 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(6767,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.is_matching_multiline */
EIF_TYPED_VALUE F1063_9363 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(6768,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.is_matching_dotall */
EIF_TYPED_VALUE F1063_9364 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_BOOL;
	r.it_b = *(EIF_BOOLEAN *)(Current + RTWA(6769,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.subject_next_start */
EIF_TYPED_VALUE F1063_9365 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6770,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.first_matched_index */
EIF_TYPED_VALUE F1063_9366 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6771,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.eptr */
EIF_TYPED_VALUE F1063_9367 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.offset_vector */
EIF_TYPED_VALUE F1063_9368 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6773,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.offset_vector_count */
EIF_TYPED_VALUE F1063_9369 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6774,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.offset_top */
EIF_TYPED_VALUE F1063_9370 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6775,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.brastart_vector */
EIF_TYPED_VALUE F1063_9371 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6776,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.brastart_lower */
EIF_TYPED_VALUE F1063_9372 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6777,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.brastart_count */
EIF_TYPED_VALUE F1063_9373 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6778,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.brastart_capacity */
EIF_TYPED_VALUE F1063_9374 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6779,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.eptr_vector */
EIF_TYPED_VALUE F1063_9375 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6780,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.eptr_lower */
EIF_TYPED_VALUE F1063_9376 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6781,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.eptr_upper */
EIF_TYPED_VALUE F1063_9377 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6782,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.eptr_capacity */
EIF_TYPED_VALUE F1063_9378 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = *(EIF_INTEGER_32 *)(Current + RTWA(6783,Dtype(Current)));
	return r;
}


/* {RX_PCRE_MATCHER}.set_next_start */
void F1063_9379 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_next_start";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 1, 15574);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15574);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 6770, 0x10000000, 1); /* subject_next_start */
	*(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("subject_next_start_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {RX_PCRE_MATCHER}.set_match_count */
void F1063_9380 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "set_match_count";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_VOID, NULL);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1062, Current, 0, 1, 15575);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15575);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 6565, 0x10000000, 1); /* match_count */
	*(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype)) = (EIF_INTEGER_32) arg1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(2);
		RTCT("match_count_set", EX_POST);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype));
		if ((EIF_BOOLEAN)(ti4_1 == arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(3);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_it */
void F1063_9381 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "match_it";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc6 = (EIF_BOOLEAN) 0;
	EIF_REFERENCE loc7 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_BOOLEAN tb4;
	EIF_BOOLEAN tb5;
	EIF_BOOLEAN tb6;
	EIF_BOOLEAN tb7;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,tr2);
	RTLR(4,loc7);
	RTLIU(5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_BOOL, &loc6);
	RTLU(SK_REF, &loc7);
	
	RTEAA(l_feature_name, 1062, Current, 7, 3, 15576);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15576);
	RTCC(arg1, 1062, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("compiled", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6554, dtype))(Current)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_subject_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 6562, 0xF80000E8, 0); /* subject */
	tr1 = RTCCL(arg1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(6562, dtype)) = (EIF_REFERENCE) tr1;
	RTHOOK(4);
	RTDBGAA(Current, dtype, 6770, 0x10000000, 1); /* subject_next_start */
	*(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype)) = (EIF_INTEGER_32) arg2;
	RTHOOK(5);
	RTDBGAA(Current, dtype, 6564, 0x10000000, 1); /* subject_end */
	*(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype)) = (EIF_INTEGER_32) arg3;
	RTHOOK(6);
	RTDBGAA(Current, dtype, 6565, 0x10000000, 1); /* match_count */
	*(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 6771, 0x10000000, 1); /* first_matched_index */
	*(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype)) = (EIF_INTEGER_32) arg2;
	RTHOOK(8);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	RTHOOK(9);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	RTHOOK(10);
	RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
	loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	RTHOOK(11);
	RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
	loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
	RTHOOK(12);
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6688, dtype));
	if ((EIF_BOOLEAN) !tb1) {
		RTHOOK(13);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6739, dtype));
		if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
			RTHOOK(14);
			tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6679, dtype));
			if (tb1) {
				RTHOOK(15);
				RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(15,1);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6739, dtype));
				ui4_1 = ti4_1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
				loc1 = (EIF_INTEGER_32) ti4_1;
			} else {
				RTHOOK(16);
				RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6739, dtype));
				loc1 = (EIF_INTEGER_32) ti4_1;
			}
		}
	}
	RTHOOK(17);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6740, dtype));
	if ((EIF_BOOLEAN) (ti4_1 >= ((EIF_INTEGER_32) 0L))) {
		RTHOOK(18);
		RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6740, dtype));
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(19);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6679, dtype));
		tb2 = *(EIF_BOOLEAN *)(Current + RTWA(6725, dtype));
		if ((EIF_BOOLEAN) (tb1 || tb2)) {
			RTHOOK(20);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(20,1);
			ui4_1 = loc2;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6416, "flip_case", tr1))(tr1, ui4_1x)).it_i4);
			loc3 = (EIF_INTEGER_32) ti4_1;
		} else {
			RTHOOK(21);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			loc3 = (EIF_INTEGER_32) loc2;
		}
	}
	for (;;) {
		RTHOOK(22);
		if (loc6) break;
		RTHOOK(23);
		RTDBGAA(Current, dtype, 6565, 0x10000000, 1); /* match_count */
		*(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
		RTHOOK(24);
		RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6774, dtype));
		loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
		for (;;) {
			RTHOOK(25);
			if ((EIF_BOOLEAN) (loc5 < ((EIF_INTEGER_32) 0L))) break;
			RTHOOK(26);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(26,1);
			ui4_1 = ((EIF_INTEGER_32) 0L);
			ui4_2 = loc5;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
			RTHOOK(27);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			loc5--;
		}
		RTHOOK(28);
		if ((EIF_BOOLEAN) (loc1 >= ((EIF_INTEGER_32) 0L))) {
			RTHOOK(29);
			tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6679, dtype));
			if (tb1) {
				for (;;) {
					RTHOOK(30);
					tb1 = '\01';
					ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
					if (!(EIF_BOOLEAN) (ti4_1 > arg3)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(30,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(30,2);
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
						ui4_1 = ti4_1;
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_1;
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
						tb1 = (EIF_BOOLEAN)(ti4_1 == loc1);
					}
					if (tb1) break;
					RTHOOK(31);
					RTDBGAA(Current, dtype, 6771, 0x10000000, 1); /* first_matched_index */
					(*(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype)))++;
				}
			} else {
				for (;;) {
					RTHOOK(32);
					tb2 = '\01';
					ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
					if (!(EIF_BOOLEAN) (ti4_1 > arg3)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(32,1);
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
						ui4_1 = ti4_1;
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
						tb2 = (EIF_BOOLEAN)(ti4_1 == loc1);
					}
					if (tb2) break;
					RTHOOK(33);
					RTDBGAA(Current, dtype, 6771, 0x10000000, 1); /* first_matched_index */
					(*(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype)))++;
				}
			}
		} else {
			RTHOOK(34);
			tb3 = *(EIF_BOOLEAN *)(Current + RTWA(6724, dtype));
			if (tb3) {
				RTHOOK(35);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
				if ((EIF_BOOLEAN) (ti4_1 > arg2)) {
					for (;;) {
						RTHOOK(36);
						tb3 = '\01';
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
						if (!(EIF_BOOLEAN) (ti4_1 > arg3)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(36,1);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
							ui4_1 = (EIF_INTEGER_32) (ti4_1 - ((EIF_INTEGER_32) 1L));
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
							tb3 = (EIF_BOOLEAN)(ti4_1 == ti4_2);
						}
						if (tb3) break;
						RTHOOK(37);
						RTDBGAA(Current, dtype, 6771, 0x10000000, 1); /* first_matched_index */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype)))++;
					}
				}
			} else {
				RTHOOK(38);
				RTDBGAL(7, 0xF800040B, 0, 0); /* loc7 */
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6738, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				loc7 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(39);
				if ((EIF_BOOLEAN)(loc7 != NULL)) {
					for (;;) {
						RTHOOK(40);
						tb4 = '\01';
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
						if (!(EIF_BOOLEAN) (ti4_1 > arg3)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(40,1);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
							ui4_1 = ti4_1;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							ui4_1 = ti4_1;
							tb5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", loc7))(loc7, ui4_1x)).it_b);
							tb4 = tb5;
						}
						if (tb4) break;
						RTHOOK(41);
						RTDBGAA(Current, dtype, 6771, 0x10000000, 1); /* first_matched_index */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype)))++;
					}
				}
			}
		}
		RTHOOK(42);
		if ((EIF_BOOLEAN) (loc2 >= ((EIF_INTEGER_32) 0L))) {
			RTHOOK(43);
			if ((EIF_BOOLEAN) (loc1 >= ((EIF_INTEGER_32) 0L))) {
				RTHOOK(44);
				RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
				loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
			} else {
				RTHOOK(45);
				RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
				loc5 = (EIF_INTEGER_32) ti4_1;
			}
			RTHOOK(46);
			if ((EIF_BOOLEAN) (loc5 > loc4)) {
				RTHOOK(47);
				if ((EIF_BOOLEAN)(loc2 == loc3)) {
					for (;;) {
						RTHOOK(48);
						tb5 = '\01';
						if (!(EIF_BOOLEAN) (loc5 > arg3)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(48,1);
							ui4_1 = loc5;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							tb5 = (EIF_BOOLEAN)(ti4_1 == loc2);
						}
						if (tb5) break;
						RTHOOK(49);
						RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
						loc5++;
					}
				} else {
					for (;;) {
						RTHOOK(50);
						tb6 = '\01';
						tb7 = '\01';
						if (!(EIF_BOOLEAN) (loc5 > arg3)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(50,1);
							ui4_1 = loc5;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							tb7 = (EIF_BOOLEAN)(ti4_1 == loc2);
						}
						if (!tb7) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(50,2);
							ui4_1 = loc5;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							tb6 = (EIF_BOOLEAN)(ti4_1 == loc3);
						}
						if (tb6) break;
						RTHOOK(51);
						RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
						loc5++;
					}
				}
				RTHOOK(52);
				if ((EIF_BOOLEAN) (loc5 > arg3)) {
					RTHOOK(53);
					RTDBGAL(6, 0x04000000, 1, 0); /* loc6 */
					loc6 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
				} else {
					RTHOOK(54);
					RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
					loc4 = (EIF_INTEGER_32) loc5;
				}
			}
		}
		RTHOOK(55);
		if ((EIF_BOOLEAN) !loc6) {
			RTHOOK(56);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
			ui4_1 = ti4_1;
			tb7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6787, dtype))(Current, ui4_1x)).it_b);
			if (tb7) {
				RTHOOK(57);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(57,1);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
				ui4_1 = ti4_1;
				ui4_2 = ((EIF_INTEGER_32) 0L);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
				RTHOOK(58);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(58,1);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype));
				ui4_1 = ti4_1;
				ui4_2 = ((EIF_INTEGER_32) 1L);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
				RTHOOK(59);
				RTDBGAA(Current, dtype, 6565, 0x10000000, 1); /* match_count */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype))) /= ((EIF_INTEGER_32) 2L);
				RTHOOK(60);
				RTDBGAL(6, 0x04000000, 1, 0); /* loc6 */
				loc6 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			} else {
				RTHOOK(61);
				RTDBGAA(Current, dtype, 6565, 0x10000000, 1); /* match_count */
				*(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
				RTHOOK(62);
				RTDBGAL(6, 0x04000000, 1, 0); /* loc6 */
				tb7 = *(EIF_BOOLEAN *)(Current + RTWA(6688, dtype));
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
				loc6 = (EIF_BOOLEAN) (EIF_BOOLEAN) (tb7 || (EIF_BOOLEAN) (ti4_1 > arg3));
				RTHOOK(63);
				RTDBGAA(Current, dtype, 6771, 0x10000000, 1); /* first_matched_index */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype)))++;
			}
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(64);
		RTCT("is_matching", EX_POST);
		tb7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6555, dtype))(Current)).it_b);
		if (tb7) {
			RTCK;
		} else {
			RTCF;
		}
		RTHOOK(65);
		RTCT("subject_set", EX_POST);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		if (RTCEQ(tr1, arg1)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(66);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(12);
	RTEE;
#undef up1
#undef up2
#undef ui4_1
#undef ui4_2
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_start */
EIF_TYPED_VALUE F1063_9382 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "match_start";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLIU(4);
	RTLU (SK_BOOL, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 1062, Current, 1, 1, 15577);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15577);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 6731, 0x10000000, 1); /* code_index */
	*(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
	*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(3);
	RTDBGAA(Current, dtype, 6781, 0x10000000, 1); /* eptr_lower */
	*(EIF_INTEGER_32 *)(Current + RTWA(6781, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 6782, 0x10000000, 1); /* eptr_upper */
	*(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 6775, 0x10000000, 1); /* offset_top */
	*(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype)) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 6778, 0x10000000, 1); /* brastart_count */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6774, dtype));
	*(EIF_INTEGER_32 *)(Current + RTWA(6778, dtype)) = (EIF_INTEGER_32) ti4_1;
	RTHOOK(7);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6778, dtype));
	loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 + ti4_2);
	RTHOOK(8);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6779, dtype));
	if ((EIF_BOOLEAN) (ti4_1 < loc1)) {
		RTHOOK(9);
		RTDBGAA(Current, dtype, 6776, 0xF8000219, 0); /* brastart_vector */
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5748, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(9,1);
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6776, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		ur1 = tr2;
		ui4_1 = ((EIF_INTEGER_32) 0L);
		ui4_2 = loc1;
		tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5057, "aliased_resized_area_with_default", tr1))(tr1, ur1x, ui4_1x, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
		RTAR(Current, tr2);
		*(EIF_REFERENCE *)(Current + RTWA(6776, dtype)) = (EIF_REFERENCE) tr2;
		RTHOOK(10);
		RTDBGAA(Current, dtype, 6779, 0x10000000, 1); /* brastart_capacity */
		*(EIF_INTEGER_32 *)(Current + RTWA(6779, dtype)) = (EIF_INTEGER_32) loc1;
	}
	RTHOOK(11);
	RTDBGAA(Current, dtype, 6767, 0x04000000, 1); /* is_matching_caseless */
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6679, dtype));
	*(EIF_BOOLEAN *)(Current + RTWA(6767, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(12);
	RTDBGAA(Current, dtype, 6768, 0x04000000, 1); /* is_matching_multiline */
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6682, dtype));
	*(EIF_BOOLEAN *)(Current + RTWA(6768, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(13);
	RTDBGAA(Current, dtype, 6769, 0x04000000, 1); /* is_matching_dotall */
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6683, dtype));
	*(EIF_BOOLEAN *)(Current + RTWA(6769, dtype)) = (EIF_BOOLEAN) tb1;
	RTHOOK(14);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	ui4_1 = ((EIF_INTEGER_32) 0L);
	ub1 = (EIF_BOOLEAN) 1;
	ub2 = (EIF_BOOLEAN) 0;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6789, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
	ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(15);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ub1
#undef ub2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_recursive */
EIF_TYPED_VALUE F1063_9383 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "match_recursive";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc3 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc4 = (EIF_BOOLEAN) 0;
	EIF_BOOLEAN loc5 = (EIF_BOOLEAN) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_b
#define arg3 arg3x.it_b
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_b = * (EIF_BOOLEAN *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_BOOL,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_BOOL, &loc3);
	RTLU(SK_BOOL, &loc4);
	RTLU(SK_BOOL, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	
	RTEAA(l_feature_name, 1062, Current, 7, 3, 15578);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15578);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	RTDBGAL(3, 0x04000000, 1, 0); /* loc3 */
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6767, dtype));
	loc3 = (EIF_BOOLEAN) tb1;
	RTHOOK(4);
	RTDBGAL(4, 0x04000000, 1, 0); /* loc4 */
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6769, dtype));
	loc4 = (EIF_BOOLEAN) tb1;
	RTHOOK(5);
	RTDBGAL(5, 0x04000000, 1, 0); /* loc5 */
	tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6768, dtype));
	loc5 = (EIF_BOOLEAN) tb1;
	RTHOOK(6);
	RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype));
	loc6 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(7);
	RTDBGAL(7, 0x10000000, 1, 0); /* loc7 */
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype));
	loc7 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(8);
	RTDBGAL(0, 0x10000000, 1,0); /* Result */
	ui4_1 = arg1;
	ub1 = arg2;
	ub2 = arg3;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6789, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
	Result = (EIF_INTEGER_32) ti4_1;
	RTHOOK(9);
	RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
	*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)) = (EIF_INTEGER_32) loc1;
	RTHOOK(10);
	RTDBGAA(Current, dtype, 6731, 0x10000000, 1); /* code_index */
	*(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype)) = (EIF_INTEGER_32) loc2;
	RTHOOK(11);
	RTDBGAA(Current, dtype, 6767, 0x04000000, 1); /* is_matching_caseless */
	*(EIF_BOOLEAN *)(Current + RTWA(6767, dtype)) = (EIF_BOOLEAN) loc3;
	RTHOOK(12);
	RTDBGAA(Current, dtype, 6769, 0x04000000, 1); /* is_matching_dotall */
	*(EIF_BOOLEAN *)(Current + RTWA(6769, dtype)) = (EIF_BOOLEAN) loc4;
	RTHOOK(13);
	RTDBGAA(Current, dtype, 6768, 0x04000000, 1); /* is_matching_multiline */
	*(EIF_BOOLEAN *)(Current + RTWA(6768, dtype)) = (EIF_BOOLEAN) loc5;
	RTHOOK(14);
	RTDBGAA(Current, dtype, 6775, 0x10000000, 1); /* offset_top */
	*(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype)) = (EIF_INTEGER_32) loc6;
	RTHOOK(15);
	RTDBGAA(Current, dtype, 6782, 0x10000000, 1); /* eptr_upper */
	*(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype)) = (EIF_INTEGER_32) loc7;
	if (RTAL & CK_ENSURE) {
		RTHOOK(16);
		RTCT("valid_result", EX_POST);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_1) || (EIF_BOOLEAN)(Result == ti4_2))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(12);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef ui4_1
#undef ub1
#undef ub2
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_internal */
EIF_TYPED_VALUE F1063_9384 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "match_internal";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc8 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc9 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc10 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc11 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc12 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc13 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc14 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc15 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_b
#define arg3 arg3x.it_b
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {{0}, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_INTEGER_32 ti4_7;
	EIF_INTEGER_32 ti4_8;
	EIF_INTEGER_32 ti4_9;
	EIF_INTEGER_32 ti4_10;
	EIF_INTEGER_32 ti4_11;
	EIF_INTEGER_32 ti4_12;
	EIF_INTEGER_32 ti4_13;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_b = * (EIF_BOOLEAN *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLIU(4);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_BOOL,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_INT32, &loc8);
	RTLU(SK_INT32, &loc9);
	RTLU(SK_INT32, &loc10);
	RTLU(SK_INT32, &loc11);
	RTLU(SK_INT32, &loc12);
	RTLU(SK_INT32, &loc13);
	RTLU(SK_INT32, &loc14);
	RTLU(SK_INT32, &loc15);
	
	RTEAA(l_feature_name, 1062, Current, 15, 3, 15579);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15579);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	loc2 = (EIF_INTEGER_32) arg1;
	RTHOOK(2);
	if (arg2) {
		RTHOOK(3);
		RTDBGAA(Current, dtype, 6782, 0x10000000, 1); /* eptr_upper */
		(*(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype)))++;
		RTHOOK(4);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6783, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype));
		if ((EIF_BOOLEAN) (ti4_1 <= ti4_2)) {
			RTHOOK(5);
			RTDBGAL(14, 0x10000000, 1, 0); /* loc14 */
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype));
			loc14 = (EIF_INTEGER_32) (EIF_INTEGER_32) (((EIF_INTEGER_32) 2L) * (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L)));
			RTHOOK(6);
			RTDBGAA(Current, dtype, 6780, 0xF8000219, 0); /* eptr_vector */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5748, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(6,1);
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6780, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			ur1 = tr2;
			ui4_1 = ((EIF_INTEGER_32) 0L);
			ui4_2 = loc14;
			tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5057, "aliased_resized_area_with_default", tr1))(tr1, ur1x, ui4_1x, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
			RTAR(Current, tr2);
			*(EIF_REFERENCE *)(Current + RTWA(6780, dtype)) = (EIF_REFERENCE) tr2;
			RTHOOK(7);
			RTDBGAA(Current, dtype, 6783, 0x10000000, 1); /* eptr_capacity */
			*(EIF_INTEGER_32 *)(Current + RTWA(6783, dtype)) = (EIF_INTEGER_32) loc14;
		}
		RTHOOK(8);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6780, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(8,1);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
		ui4_1 = ti4_1;
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype));
		ui4_2 = ti4_2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
	}
	for (;;) {
		RTHOOK(9);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(Result != ti4_1)) break;
		RTHOOK(10);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(10,1);
		ui4_1 = loc2;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_2;
		RTHOOK(11);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5349, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (loc1 > ti4_2)) {
			RTHOOK(12);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ui4_1 = loc2;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5349, dtype))(Current)).it_i4);
			ui4_2 = (EIF_INTEGER_32) (loc1 - ti4_2);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6790, dtype))(Current, ui4_1x, ui4_2x)).it_i4);
			Result = (EIF_INTEGER_32) ti4_2;
			RTHOOK(13);
			RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
			ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
			loc2 = (EIF_INTEGER_32) ti4_2;
		} else {
			RTHOOK(14);
			switch (loc1) {
				case 70L:
					RTHOOK(15);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6791, dtype))(Current, ui4_1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_2;
					RTHOOK(16);
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(Result != ti4_2)) {
						RTHOOK(17);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_2;
					}
					break;
				case 66L:
					RTHOOK(18);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(18,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5346, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
						RTHOOK(19);
						RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(19,1);
						ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 3L));
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
						loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_2 * ((EIF_INTEGER_32) 2L));
						RTHOOK(20);
						tb1 = '\0';
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype));
						if ((EIF_BOOLEAN) (loc5 < ti4_2)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(20,1);
							ui4_1 = loc5;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
							tb1 = (EIF_BOOLEAN) (ti4_2 > ((EIF_INTEGER_32) 0L));
						}
						if (tb1) {
							RTHOOK(21);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 4L));
							ub1 = (EIF_BOOLEAN) 1;
							ub2 = (EIF_BOOLEAN) 0;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
							Result = (EIF_INTEGER_32) ti4_2;
						} else {
							RTHOOK(22);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(22,1);
							ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
							ui4_1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L)) + ti4_2);
							ub1 = (EIF_BOOLEAN) 1;
							ub2 = (EIF_BOOLEAN) 0;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
							Result = (EIF_INTEGER_32) ti4_2;
						}
					} else {
						RTHOOK(23);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
						ub1 = (EIF_BOOLEAN) 1;
						ub2 = (EIF_BOOLEAN) 1;
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						Result = (EIF_INTEGER_32) ti4_2;
						RTHOOK(24);
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(Result == ti4_2)) {
							RTHOOK(25);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(25,1);
							ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 3L));
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
							loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L)) + ti4_2);
							for (;;) {
								RTHOOK(26);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(26,1);
								ui4_1 = loc2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
								ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
								if ((EIF_BOOLEAN)(ti4_2 != ti4_3)) break;
								RTHOOK(27);
								RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(27,1);
								ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
								ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
								loc2 += ti4_4;
							}
						} else {
							RTHOOK(28);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(28,1);
							ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
							ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
							loc2 += ti4_4;
						}
						RTHOOK(29);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
						ub1 = (EIF_BOOLEAN) 1;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						Result = (EIF_INTEGER_32) ti4_4;
					}
					break;
				case 67L:
					RTHOOK(30);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					break;
				case 0L:
					RTHOOK(31);
					tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6684, dtype));
					ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6771, dtype));
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb1 && (EIF_BOOLEAN)(ti4_4 == ti4_5))) {
						RTHOOK(32);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_4;
					} else {
						RTHOOK(33);
						ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_4;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6784, dtype))(Current, ui4_1x);
						RTHOOK(34);
						ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype));
						ui4_1 = ti4_4;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6785, dtype))(Current, ui4_1x);
						RTHOOK(35);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_4;
					}
					break;
				case 12L:
					RTHOOK(36);
					RTDBGAL(7, 0x10000000, 1, 0); /* loc7 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(36,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc7 = (EIF_INTEGER_32) ti4_4;
					RTHOOK(37);
					RTDBGAA(Current, dtype, 6767, 0x04000000, 1); /* is_matching_caseless */
					ui4_1 = loc7;
					tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5215, dtype))(Current, ui4_1x)).it_b);
					*(EIF_BOOLEAN *)(Current + RTWA(6767, dtype)) = (EIF_BOOLEAN) tb1;
					RTHOOK(38);
					RTDBGAA(Current, dtype, 6768, 0x04000000, 1); /* is_matching_multiline */
					ui4_1 = loc7;
					tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5216, dtype))(Current, ui4_1x)).it_b);
					*(EIF_BOOLEAN *)(Current + RTWA(6768, dtype)) = (EIF_BOOLEAN) tb1;
					RTHOOK(39);
					RTDBGAA(Current, dtype, 6769, 0x04000000, 1); /* is_matching_dotall */
					ui4_1 = loc7;
					tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5217, dtype))(Current, ui4_1x)).it_b);
					*(EIF_BOOLEAN *)(Current + RTWA(6769, dtype)) = (EIF_BOOLEAN) tb1;
					RTHOOK(40);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					break;
				case 60L:
				case 62L:
					RTHOOK(41);
					RTDBGAL(12, 0x10000000, 1, 0); /* loc12 */
					ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6781, dtype));
					loc12 = (EIF_INTEGER_32) ti4_4;
					RTHOOK(42);
					RTDBGAL(13, 0x10000000, 1, 0); /* loc13 */
					ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype));
					loc13 = (EIF_INTEGER_32) ti4_4;
					RTHOOK(43);
					RTDBGAA(Current, dtype, 6781, 0x10000000, 1); /* eptr_lower */
					*(EIF_INTEGER_32 *)(Current + RTWA(6781, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc13 + ((EIF_INTEGER_32) 1L));
					RTHOOK(44);
					RTDBGAA(Current, dtype, 6782, 0x10000000, 1); /* eptr_upper */
					ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6781, dtype));
					*(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_4 - ((EIF_INTEGER_32) 1L));
					RTHOOK(45);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6791, dtype))(Current, ui4_1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_4;
					RTHOOK(46);
					RTDBGAA(Current, dtype, 6781, 0x10000000, 1); /* eptr_lower */
					*(EIF_INTEGER_32 *)(Current + RTWA(6781, dtype)) = (EIF_INTEGER_32) loc12;
					RTHOOK(47);
					RTDBGAA(Current, dtype, 6782, 0x10000000, 1); /* eptr_upper */
					*(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype)) = (EIF_INTEGER_32) loc13;
					RTHOOK(48);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
					loc2 = (EIF_INTEGER_32) ti4_4;
					RTHOOK(49);
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(49,1);
					ui4_1 = loc2;
					ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5336, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_4 == ti4_5)) {
						RTHOOK(50);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_4;
					} else {
						RTHOOK(51);
						if (arg3) {
							RTHOOK(52);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_4;
						} else {
							RTHOOK(53);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_4;
							RTHOOK(54);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
							loc1 = (EIF_INTEGER_32) ti4_4;
							for (;;) {
								RTHOOK(55);
								ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
								if ((EIF_BOOLEAN)(loc1 != ti4_4)) break;
								RTHOOK(56);
								RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(56,1);
								ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
								ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
								loc2 += ti4_5;
								RTHOOK(57);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(57,1);
								ui4_1 = loc2;
								ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
								loc1 = (EIF_INTEGER_32) ti4_5;
							}
							RTHOOK(58);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							loc2 += ((EIF_INTEGER_32) 2L);
							RTHOOK(59);
							RTDBGAA(Current, dtype, 6775, 0x10000000, 1); /* offset_top */
							ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype));
							*(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype)) = (EIF_INTEGER_32) ti4_5;
						}
					}
					break;
				case 61L:
				case 63L:
					RTHOOK(60);
					ui4_1 = loc2;
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6791, dtype))(Current, ui4_1x)).it_i4);
					ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_5 == ti4_6)) {
						RTHOOK(61);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_5;
					} else {
						RTHOOK(62);
						if (arg3) {
							RTHOOK(63);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_5;
						} else {
							RTHOOK(64);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
							loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_5 + ((EIF_INTEGER_32) 2L));
						}
					}
					break;
				case 64L:
					RTHOOK(65);
					RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(65,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype))) -= ti4_6;
					RTHOOK(66);
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_6 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
					if ((EIF_BOOLEAN) (ti4_5 < ti4_6)) {
						RTHOOK(67);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_5;
					} else {
						RTHOOK(68);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2 += ((EIF_INTEGER_32) 2L);
					}
					break;
				case 55L:
					RTHOOK(69);
					RTDBGAL(11, 0x10000000, 1, 0); /* loc11 */
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype));
					loc11 = (EIF_INTEGER_32) ti4_5;
					RTHOOK(70);
					RTDBGAA(Current, dtype, 6777, 0x10000000, 1); /* brastart_lower */
					ti4_6 = *(EIF_INTEGER_32 *)(Current + RTWA(6778, dtype));
					(*(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype))) += ti4_6;
					RTHOOK(71);
					RTDBGAL(15, 0x10000000, 1, 0); /* loc15 */
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype));
					ti4_6 = *(EIF_INTEGER_32 *)(Current + RTWA(6778, dtype));
					loc15 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_5 + ti4_6);
					RTHOOK(72);
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6779, dtype));
					if ((EIF_BOOLEAN) (ti4_5 < loc15)) {
						RTHOOK(73);
						RTDBGAA(Current, dtype, 6776, 0xF8000219, 0); /* brastart_vector */
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5748, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(73,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6776, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						ur1 = tr2;
						ui4_1 = ((EIF_INTEGER_32) 0L);
						ui4_2 = loc15;
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5057, "aliased_resized_area_with_default", tr1))(tr1, ur1x, ui4_1x, ui4_2x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTAR(Current, tr2);
						*(EIF_REFERENCE *)(Current + RTWA(6776, dtype)) = (EIF_REFERENCE) tr2;
						RTHOOK(74);
						RTDBGAA(Current, dtype, 6779, 0x10000000, 1); /* brastart_capacity */
						*(EIF_INTEGER_32 *)(Current + RTWA(6779, dtype)) = (EIF_INTEGER_32) loc15;
					}
					RTHOOK(75);
					RTDBGAL(9, 0x10000000, 1, 0); /* loc9 */
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype));
					loc9 = (EIF_INTEGER_32) ti4_5;
					RTHOOK(76);
					RTDBGAL(10, 0x10000000, 1, 0); /* loc10 */
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6778, dtype));
					loc10 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (loc11 + ti4_5) - ((EIF_INTEGER_32) 1L));
					RTHOOK(77);
					RTDBGAL(8, 0x10000000, 1, 0); /* loc8 */
					loc8 = (EIF_INTEGER_32) loc11;
					for (;;) {
						RTHOOK(78);
						if ((EIF_BOOLEAN) (loc8 > loc10)) break;
						RTHOOK(79);
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6776, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(79,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6776, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(79,2);
						ui4_1 = loc8;
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_5;
						ui4_2 = loc9;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
						RTHOOK(80);
						RTDBGAL(9, 0x10000000, 1, 0); /* loc9 */
						loc9++;
						RTHOOK(81);
						RTDBGAL(8, 0x10000000, 1, 0); /* loc8 */
						loc8++;
					}
					RTHOOK(82);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					ui4_1 = ((EIF_INTEGER_32) 0L);
					ub1 = (EIF_BOOLEAN) 1;
					ub2 = (EIF_BOOLEAN) 0;
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
					loc5 = (EIF_INTEGER_32) ti4_5;
					RTHOOK(83);
					RTDBGAA(Current, dtype, 6777, 0x10000000, 1); /* brastart_lower */
					*(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype)) = (EIF_INTEGER_32) loc11;
					RTHOOK(84);
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(loc5 == ti4_5)) {
						RTHOOK(85);
						RTDBGAA(Current, dtype, 6775, 0x10000000, 1); /* offset_top */
						ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype));
						*(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype)) = (EIF_INTEGER_32) ti4_5;
						RTHOOK(86);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype));
						*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)) = (EIF_INTEGER_32) ti4_5;
						RTHOOK(87);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					} else {
						RTHOOK(88);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_5;
					}
					break;
				case 65L:
					RTHOOK(89);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					loc5 = (EIF_INTEGER_32) loc2;
					RTHOOK(90);
					RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					loc6 = (EIF_INTEGER_32) ti4_5;
					RTHOOK(91);
					RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
					ui4_1 = loc2;
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6791, dtype))(Current, ui4_1x)).it_i4);
					loc3 = (EIF_INTEGER_32) ti4_5;
					RTHOOK(92);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
					loc2 = (EIF_INTEGER_32) ti4_5;
					RTHOOK(93);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(93,1);
					ui4_1 = loc2;
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
					loc1 = (EIF_INTEGER_32) ti4_5;
					RTHOOK(94);
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5344, dtype))(Current)).it_i4);
					ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 != ti4_5) && (EIF_BOOLEAN)(loc1 != ti4_6))) {
						RTHOOK(95);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_5;
					} else {
						RTHOOK(96);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
						loc1 = (EIF_INTEGER_32) ti4_5;
						for (;;) {
							RTHOOK(97);
							ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
							if ((EIF_BOOLEAN)(loc1 != ti4_5)) break;
							RTHOOK(98);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(98,1);
							ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
							ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
							loc2 += ti4_6;
							RTHOOK(99);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(99,1);
							ui4_1 = loc2;
							ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
							loc1 = (EIF_INTEGER_32) ti4_6;
						}
						RTHOOK(100);
						RTDBGAA(Current, dtype, 6775, 0x10000000, 1); /* offset_top */
						ti4_6 = *(EIF_INTEGER_32 *)(Current + RTWA(6565, dtype));
						*(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype)) = (EIF_INTEGER_32) ti4_6;
						RTHOOK(101);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						ti4_6 = *(EIF_INTEGER_32 *)(Current + RTWA(6770, dtype));
						*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)) = (EIF_INTEGER_32) ti4_6;
						RTHOOK(102);
						ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5336, dtype))(Current)).it_i4);
						ti4_7 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 == ti4_6) || (EIF_BOOLEAN)(ti4_7 == loc6))) {
							RTHOOK(103);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							loc2 += ((EIF_INTEGER_32) 2L);
						} else {
							RTHOOK(104);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(104,1);
							ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
							ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
							ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5291, dtype))(Current)).it_i4);
							if ((EIF_BOOLEAN)(ti4_6 == ti4_7)) {
								RTHOOK(105);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(105,1);
								ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 3L));
								ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
								ui4_1 = ti4_6;
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6707, dtype))(Current, ui4_1x);
							}
							RTHOOK(106);
							ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5338, dtype))(Current)).it_i4);
							if ((EIF_BOOLEAN)(loc1 == ti4_6)) {
								RTHOOK(107);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
								ub1 = (EIF_BOOLEAN) 0;
								ub2 = (EIF_BOOLEAN) 0;
								ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
								Result = (EIF_INTEGER_32) ti4_6;
								RTHOOK(108);
								ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
								if ((EIF_BOOLEAN)(Result != ti4_6)) {
									RTHOOK(109);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ui4_1 = loc5;
									ub1 = (EIF_BOOLEAN) 1;
									ub2 = (EIF_BOOLEAN) 0;
									ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
									Result = (EIF_INTEGER_32) ti4_6;
								}
							} else {
								if (RTAL & CK_CHECK) {
									RTHOOK(110);
									RTCT("op_ketrmax", EX_CHECK);
									ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5337, dtype))(Current)).it_i4);
									if ((EIF_BOOLEAN)(loc1 == ti4_6)) {
										RTCK;
									} else {
										RTCF;
									}
								}
								RTHOOK(111);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ui4_1 = loc5;
								ub1 = (EIF_BOOLEAN) 1;
								ub2 = (EIF_BOOLEAN) 0;
								ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
								Result = (EIF_INTEGER_32) ti4_6;
								RTHOOK(112);
								ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
								if ((EIF_BOOLEAN)(Result != ti4_6)) {
									RTHOOK(113);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
									ub1 = (EIF_BOOLEAN) 0;
									ub2 = (EIF_BOOLEAN) 0;
									ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
									Result = (EIF_INTEGER_32) ti4_6;
								}
							}
						}
					}
					break;
				case 56L:
					for (;;) {
						RTHOOK(114);
						ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(loc1 != ti4_6)) break;
						RTHOOK(115);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(115,1);
						ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
						ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
						loc2 += ti4_7;
						RTHOOK(116);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(116,1);
						ui4_1 = loc2;
						ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
						loc1 = (EIF_INTEGER_32) ti4_7;
					}
					break;
				case 68L:
					RTHOOK(117);
					RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
					loc6 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					RTHOOK(118);
					ui4_1 = loc6;
					ub1 = (EIF_BOOLEAN) 1;
					ub2 = (EIF_BOOLEAN) 0;
					ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
					ti4_8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_7 == ti4_8)) {
						RTHOOK(119);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_7;
					} else {
						RTHOOK(120);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
						loc1 = (EIF_INTEGER_32) ti4_7;
						for (;;) {
							RTHOOK(121);
							ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
							if ((EIF_BOOLEAN)(loc1 != ti4_7)) break;
							RTHOOK(122);
							RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(122,1);
							ui4_1 = (EIF_INTEGER_32) (loc6 + ((EIF_INTEGER_32) 1L));
							ti4_8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
							loc6 += ti4_8;
							RTHOOK(123);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(123,1);
							ui4_1 = loc6;
							ti4_8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
							loc1 = (EIF_INTEGER_32) ti4_8;
						}
						RTHOOK(124);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc6 + ((EIF_INTEGER_32) 2L));
					}
					break;
				case 69L:
					RTHOOK(125);
					RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
					loc6 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					RTHOOK(126);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					ti4_8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
					loc1 = (EIF_INTEGER_32) ti4_8;
					for (;;) {
						RTHOOK(127);
						ti4_8 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(loc1 != ti4_8)) break;
						RTHOOK(128);
						RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(128,1);
						ui4_1 = (EIF_INTEGER_32) (loc6 + ((EIF_INTEGER_32) 1L));
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
						loc6 += ti4_9;
						RTHOOK(129);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(129,1);
						ui4_1 = loc6;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
						loc1 = (EIF_INTEGER_32) ti4_9;
					}
					RTHOOK(130);
					ui4_1 = (EIF_INTEGER_32) (loc6 + ((EIF_INTEGER_32) 2L));
					ub1 = (EIF_BOOLEAN) 1;
					ub2 = (EIF_BOOLEAN) 0;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
					ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_9 == ti4_10)) {
						RTHOOK(131);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(132);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 57L:
				case 58L:
				case 59L:
					RTHOOK(133);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(133,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc2 - ti4_9);
					if (RTAL & CK_CHECK) {
						RTHOOK(134);
						RTCT("can_backup", EX_CHECK);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype));
						if ((EIF_BOOLEAN) (ti4_9 >= ((EIF_INTEGER_32) 0L))) {
							RTCK;
						} else {
							RTCF;
						}
					}
					RTHOOK(135);
					RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6780, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(135,1);
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype));
					ui4_1 = ti4_9;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
					loc6 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(136);
					RTDBGAA(Current, dtype, 6782, 0x10000000, 1); /* eptr_upper */
					(*(EIF_INTEGER_32 *)(Current + RTWA(6782, dtype)))--;
					RTHOOK(137);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(137,1);
					ui4_1 = loc5;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
					loc1 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(138);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5339, dtype))(Current)).it_i4);
					ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5340, dtype))(Current)).it_i4);
					ti4_11 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5344, dtype))(Current)).it_i4);
					ti4_12 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5341, dtype))(Current)).it_i4);
					ti4_13 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5342, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 == ti4_9) || (EIF_BOOLEAN)(loc1 == ti4_10)) || (EIF_BOOLEAN)(loc1 == ti4_11)) || (EIF_BOOLEAN)(loc1 == ti4_12)) || (EIF_BOOLEAN)(loc1 == ti4_13))) {
						RTHOOK(139);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6784, dtype))(Current, ui4_1x);
						RTHOOK(140);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype));
						ui4_1 = ti4_9;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6785, dtype))(Current, ui4_1x);
						RTHOOK(141);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(142);
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5345, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(loc1 != ti4_9)) {
							if (RTAL & CK_CHECK) {
								RTHOOK(143);
								RTCT("branch", EX_CHECK);
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5349, dtype))(Current)).it_i4);
								if ((EIF_BOOLEAN) (loc1 >= ti4_9)) {
									RTCK;
								} else {
									RTCF;
								}
							}
							RTHOOK(144);
							RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5349, dtype))(Current)).it_i4);
							loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc1 - ti4_9);
							RTHOOK(145);
							RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
							loc4 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc3 * ((EIF_INTEGER_32) 2L));
							RTHOOK(146);
							if ((EIF_BOOLEAN) (loc3 > ((EIF_INTEGER_32) 0L))) {
								RTHOOK(147);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(147,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6776, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(147,2);
								ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype));
								ui4_1 = (EIF_INTEGER_32) (ti4_9 + loc4);
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_9;
								ui4_2 = loc4;
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
								RTHOOK(148);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(148,1);
								ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_9;
								ui4_2 = (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 1L));
								(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
								RTHOOK(149);
								ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype));
								if ((EIF_BOOLEAN) (ti4_9 <= loc4)) {
									RTHOOK(150);
									RTDBGAA(Current, dtype, 6775, 0x10000000, 1); /* offset_top */
									*(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc4 + ((EIF_INTEGER_32) 2L));
								}
							}
						}
						RTHOOK(151);
						RTDBGAA(Current, dtype, 6767, 0x04000000, 1); /* is_matching_caseless */
						tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6679, dtype));
						*(EIF_BOOLEAN *)(Current + RTWA(6767, dtype)) = (EIF_BOOLEAN) tb1;
						RTHOOK(152);
						RTDBGAA(Current, dtype, 6768, 0x04000000, 1); /* is_matching_multiline */
						tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6682, dtype));
						*(EIF_BOOLEAN *)(Current + RTWA(6768, dtype)) = (EIF_BOOLEAN) tb1;
						RTHOOK(153);
						RTDBGAA(Current, dtype, 6769, 0x04000000, 1); /* is_matching_dotall */
						tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6683, dtype));
						*(EIF_BOOLEAN *)(Current + RTWA(6769, dtype)) = (EIF_BOOLEAN) tb1;
						RTHOOK(154);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(154,1);
						ui4_1 = loc2;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
						loc1 = (EIF_INTEGER_32) ti4_9;
						RTHOOK(155);
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5336, dtype))(Current)).it_i4);
						ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(loc1 == ti4_9) || (EIF_BOOLEAN) (ti4_10 <= loc6))) {
							RTHOOK(156);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							loc2 += ((EIF_INTEGER_32) 2L);
						} else {
							RTHOOK(157);
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5338, dtype))(Current)).it_i4);
							if ((EIF_BOOLEAN)(loc1 == ti4_9)) {
								RTHOOK(158);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
								ub1 = (EIF_BOOLEAN) 0;
								ub2 = (EIF_BOOLEAN) 0;
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
								Result = (EIF_INTEGER_32) ti4_9;
								RTHOOK(159);
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
								if ((EIF_BOOLEAN)(Result != ti4_9)) {
									RTHOOK(160);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ui4_1 = loc5;
									ub1 = (EIF_BOOLEAN) 1;
									ub2 = (EIF_BOOLEAN) 0;
									ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
									Result = (EIF_INTEGER_32) ti4_9;
								}
							} else {
								if (RTAL & CK_CHECK) {
									RTHOOK(161);
									RTCT("op_ketrmax", EX_CHECK);
									ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5337, dtype))(Current)).it_i4);
									if ((EIF_BOOLEAN)(loc1 == ti4_9)) {
										RTCK;
									} else {
										RTCF;
									}
								}
								RTHOOK(162);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ui4_1 = loc5;
								ub1 = (EIF_BOOLEAN) 1;
								ub2 = (EIF_BOOLEAN) 0;
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
								Result = (EIF_INTEGER_32) ti4_9;
								RTHOOK(163);
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
								if ((EIF_BOOLEAN)(Result != ti4_9)) {
									RTHOOK(164);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 2L));
									ub1 = (EIF_BOOLEAN) 0;
									ub2 = (EIF_BOOLEAN) 0;
									ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
									Result = (EIF_INTEGER_32) ti4_9;
								}
							}
						}
					}
					break;
				case 13L:
					RTHOOK(165);
					tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6686, dtype));
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb1 && (EIF_BOOLEAN)(ti4_9 == ti4_10))) {
						RTHOOK(166);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(167);
						tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6768, dtype));
						if (tb1) {
							RTHOOK(168);
							tb1 = '\0';
							ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
							if ((EIF_BOOLEAN) (ti4_9 > ti4_10)) {
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(168,1);
								ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = (EIF_INTEGER_32) (ti4_9 - ((EIF_INTEGER_32) 1L));
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
								ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
								tb1 = (EIF_BOOLEAN)(ti4_9 != ti4_10);
							}
							if (tb1) {
								RTHOOK(169);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_9;
							} else {
								RTHOOK(170);
								RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
								loc2++;
							}
						} else {
							RTHOOK(171);
							ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
							if ((EIF_BOOLEAN) (ti4_9 > ti4_10)) {
								RTHOOK(172);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_9;
							} else {
								RTHOOK(173);
								RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
								loc2++;
							}
						}
					}
					break;
				case 1L:
					RTHOOK(174);
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
					if ((EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						RTHOOK(175);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(176);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 14L:
					RTHOOK(177);
					tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6768, dtype));
					if (tb1) {
						RTHOOK(178);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if ((EIF_BOOLEAN) (ti4_9 <= ti4_10)) {
							RTHOOK(179);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(179,1);
							ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_9;
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
							if ((EIF_BOOLEAN)(ti4_9 != ti4_10)) {
								RTHOOK(180);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_9;
							} else {
								RTHOOK(181);
								RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
								loc2++;
							}
						} else {
							RTHOOK(182);
							tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6687, dtype));
							if (tb1) {
								RTHOOK(183);
								RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
								loc2++;
							} else {
								RTHOOK(184);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_9;
							}
						}
					} else {
						RTHOOK(185);
						tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6687, dtype));
						if ((EIF_BOOLEAN) !tb1) {
							RTHOOK(186);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_9;
						} else {
							RTHOOK(187);
							tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6685, dtype));
							if ((EIF_BOOLEAN) !tb1) {
								RTHOOK(188);
								tb1 = '\01';
								ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
								if (!(EIF_BOOLEAN) (ti4_9 < ti4_10)) {
									tb2 = '\0';
									ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
									ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
									if ((EIF_BOOLEAN)(ti4_9 == ti4_10)) {
										tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
										RTNHOOK(188,1);
										ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
										ui4_1 = ti4_9;
										ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
										ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
										tb2 = (EIF_BOOLEAN)(ti4_9 != ti4_10);
									}
									tb1 = tb2;
								}
								if (tb1) {
									RTHOOK(189);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
									Result = (EIF_INTEGER_32) ti4_9;
								} else {
									RTHOOK(190);
									RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
									loc2++;
								}
							} else {
								RTHOOK(191);
								ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
								if ((EIF_BOOLEAN) (ti4_9 <= ti4_10)) {
									RTHOOK(192);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
									Result = (EIF_INTEGER_32) ti4_9;
								} else {
									RTHOOK(193);
									RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
									loc2++;
								}
							}
						}
					}
					break;
				case 11L:
					RTHOOK(194);
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if ((EIF_BOOLEAN) (ti4_9 <= ti4_10)) {
						RTHOOK(195);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(196);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 10L:
					RTHOOK(197);
					tb1 = '\01';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if (!(EIF_BOOLEAN) (ti4_9 < ti4_10)) {
						tb2 = '\0';
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if ((EIF_BOOLEAN)(ti4_9 == ti4_10)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(197,1);
							ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_9;
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
							tb2 = (EIF_BOOLEAN)(ti4_9 != ti4_10);
						}
						tb1 = tb2;
					}
					if (tb1) {
						RTHOOK(198);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(199);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 2L:
					RTHOOK(200);
					tb1 = '\0';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
					if ((EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(200,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(200,2);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = (EIF_INTEGER_32) (ti4_9 - ((EIF_INTEGER_32) 1L));
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb1 = tb2;
					}
					tb2 = '\0';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if ((EIF_BOOLEAN) (ti4_9 <= ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(200,3);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(200,4);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb2 = tb3;
					}
					if ((EIF_BOOLEAN)(tb1 != tb2)) {
						RTHOOK(201);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(202);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 3L:
					RTHOOK(203);
					tb1 = '\0';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6563, dtype));
					if ((EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(203,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(203,2);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = (EIF_INTEGER_32) (ti4_9 - ((EIF_INTEGER_32) 1L));
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb1 = tb2;
					}
					tb2 = '\0';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if ((EIF_BOOLEAN) (ti4_9 <= ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(203,3);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(203,4);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb2 = tb3;
					}
					if ((EIF_BOOLEAN)(tb1 == tb2)) {
						RTHOOK(204);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(205);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 15L:
					RTHOOK(206);
					tb1 = '\0';
					tb2 = *(EIF_BOOLEAN *)(Current + RTWA(6769, dtype));
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb2 && (EIF_BOOLEAN) (ti4_9 <= ti4_10))) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(206,1);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
						ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
						tb1 = (EIF_BOOLEAN)(ti4_9 == ti4_10);
					}
					if (tb1) {
						RTHOOK(207);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(208);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if ((EIF_BOOLEAN) (ti4_9 > ti4_10)) {
							RTHOOK(209);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_9;
						} else {
							RTHOOK(210);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
							RTHOOK(211);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							loc2++;
						}
					}
					break;
				case 4L:
					RTHOOK(212);
					tb1 = '\01';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if (!(EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5202, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(212,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(212,2);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb1 = tb2;
					}
					if (tb1) {
						RTHOOK(213);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(214);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						RTHOOK(215);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 5L:
					RTHOOK(216);
					tb1 = '\01';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if (!(EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5202, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(216,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(216,2);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb1 = (EIF_BOOLEAN) !tb2;
					}
					if (tb1) {
						RTHOOK(217);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(218);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						RTHOOK(219);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 6L:
					RTHOOK(220);
					tb1 = '\01';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if (!(EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5210, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(220,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(220,2);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb1 = tb2;
					}
					if (tb1) {
						RTHOOK(221);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(222);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						RTHOOK(223);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 7L:
					RTHOOK(224);
					tb1 = '\01';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if (!(EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5210, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(224,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(224,2);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb1 = (EIF_BOOLEAN) !tb2;
					}
					if (tb1) {
						RTHOOK(225);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(226);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						RTHOOK(227);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 8L:
					RTHOOK(228);
					tb1 = '\01';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if (!(EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(228,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(228,2);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb1 = tb2;
					}
					if (tb1) {
						RTHOOK(229);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(230);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						RTHOOK(231);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 9L:
					RTHOOK(232);
					tb1 = '\01';
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if (!(EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(232,1);
						tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
						RTNHOOK(232,2);
						ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_9;
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
						ui4_1 = ti4_9;
						tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
						tb1 = (EIF_BOOLEAN) !tb2;
					}
					if (tb1) {
						RTHOOK(233);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(234);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						RTHOOK(235);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					}
					break;
				case 54L:
					RTHOOK(236);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6793, dtype))(Current, ui4_1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					RTHOOK(237);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
					loc2 = (EIF_INTEGER_32) ti4_9;
					break;
				case 53L:
					RTHOOK(238);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6794, dtype))(Current, ui4_1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					RTHOOK(239);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
					loc2 = (EIF_INTEGER_32) ti4_9;
					break;
				case 16L:
					RTHOOK(240);
					RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(240,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc3 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(241);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(242);
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if ((EIF_BOOLEAN) ((EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_9 + loc3) - ((EIF_INTEGER_32) 1L)) > ti4_10)) {
						RTHOOK(243);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(244);
						tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6767, dtype));
						if (tb1) {
							for (;;) {
								RTHOOK(245);
								if ((EIF_BOOLEAN) (loc3 <= ((EIF_INTEGER_32) 0L))) break;
								RTHOOK(246);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(246,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(246,2);
								ui4_1 = loc2;
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6032, "character_item", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_9;
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(246,3);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(246,4);
								ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_10;
								ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_10;
								ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
								if ((EIF_BOOLEAN)(ti4_9 != ti4_10)) {
									RTHOOK(247);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
									Result = (EIF_INTEGER_32) ti4_9;
									RTHOOK(248);
									RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
									loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
								} else {
									RTHOOK(249);
									RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
									loc2++;
									RTHOOK(250);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(251);
									RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
									loc3--;
								}
							}
						} else {
							for (;;) {
								RTHOOK(252);
								if ((EIF_BOOLEAN) (loc3 <= ((EIF_INTEGER_32) 0L))) break;
								RTHOOK(253);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(253,1);
								ui4_1 = loc2;
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6032, "character_item", tr1))(tr1, ui4_1x)).it_i4);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(253,2);
								ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_10;
								ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
								if ((EIF_BOOLEAN)(ti4_9 != ti4_10)) {
									RTHOOK(254);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
									Result = (EIF_INTEGER_32) ti4_9;
									RTHOOK(255);
									RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
									loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
								} else {
									RTHOOK(256);
									RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
									loc2++;
									RTHOOK(257);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(258);
									RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
									loc3--;
								}
							}
						}
					}
					break;
				case 26L:
					RTHOOK(259);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(259,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc5 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(260);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 3L);
					RTHOOK(261);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = loc5;
					ui4_3 = loc5;
					ub1 = (EIF_BOOLEAN) 0;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6795, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 24L:
				case 25L:
					RTHOOK(262);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(262,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc5 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(263);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 3L);
					RTHOOK(264);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ui4_3 = loc5;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5304, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_9);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6795, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 18L:
				case 19L:
					RTHOOK(265);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(266);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
					ui4_3 = ti4_9;
					ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5298, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_10);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6795, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 20L:
				case 21L:
					RTHOOK(267);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(268);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 1L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
					ui4_3 = ti4_9;
					ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5300, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_10);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6795, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 22L:
				case 23L:
					RTHOOK(269);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(270);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ui4_3 = ((EIF_INTEGER_32) 1L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5302, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_9);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6795, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 17L:
					RTHOOK(271);
					ti4_9 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if ((EIF_BOOLEAN) (ti4_9 > ti4_10)) {
						RTHOOK(272);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_9;
					} else {
						RTHOOK(273);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
						RTHOOK(274);
						tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6767, dtype));
						if (tb1) {
							RTHOOK(275);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(275,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(275,2);
							ui4_1 = loc2;
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6032, "character_item", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_9;
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(275,3);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(275,4);
							ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_10;
							ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_10;
							ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
							if ((EIF_BOOLEAN)(ti4_9 == ti4_10)) {
								RTHOOK(276);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_9;
							}
						} else {
							RTHOOK(277);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(277,1);
							ui4_1 = loc2;
							ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6032, "character_item", tr1))(tr1, ui4_1x)).it_i4);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(277,2);
							ti4_10 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_10;
							ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							if ((EIF_BOOLEAN)(ti4_9 == ti4_10)) {
								RTHOOK(278);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_9;
							}
						}
						RTHOOK(279);
						if ((EIF_BOOLEAN)(Result == ((EIF_INTEGER_32) 0L))) {
							RTHOOK(280);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							loc2++;
							RTHOOK(281);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						}
					}
					break;
				case 35L:
					RTHOOK(282);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(282,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc5 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(283);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 3L);
					RTHOOK(284);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = loc5;
					ui4_3 = loc5;
					ub1 = (EIF_BOOLEAN) 0;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6796, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 33L:
				case 34L:
					RTHOOK(285);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(285,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc5 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(286);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 3L);
					RTHOOK(287);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ui4_3 = loc5;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5313, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_9);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6796, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 27L:
				case 28L:
					RTHOOK(288);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(289);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
					ui4_3 = ti4_9;
					ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5307, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_10);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6796, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 29L:
				case 30L:
					RTHOOK(290);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(291);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 1L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
					ui4_3 = ti4_9;
					ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5309, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_10);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6796, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 31L:
				case 32L:
					RTHOOK(292);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(293);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ui4_3 = ((EIF_INTEGER_32) 1L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5311, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_9);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6796, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 44L:
					RTHOOK(294);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(294,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc5 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(295);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 3L);
					RTHOOK(296);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = loc5;
					ui4_3 = loc5;
					ub1 = (EIF_BOOLEAN) 1;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6797, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 42L:
				case 43L:
					RTHOOK(297);
					RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
					tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
					RTNHOOK(297,1);
					ui4_1 = (EIF_INTEGER_32) (loc2 + ((EIF_INTEGER_32) 1L));
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
					loc5 = (EIF_INTEGER_32) ti4_9;
					RTHOOK(298);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 3L);
					RTHOOK(299);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ui4_3 = loc5;
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5322, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_9);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6797, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 36L:
				case 37L:
					RTHOOK(300);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(301);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
					ui4_3 = ti4_9;
					ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5316, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_10);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6797, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 38L:
				case 39L:
					RTHOOK(302);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(303);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 1L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
					ui4_3 = ti4_9;
					ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5318, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_10);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6797, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				case 40L:
				case 41L:
					RTHOOK(304);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 += ((EIF_INTEGER_32) 2L);
					RTHOOK(305);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ui4_1 = loc2;
					ui4_2 = ((EIF_INTEGER_32) 0L);
					ui4_3 = ((EIF_INTEGER_32) 1L);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5320, dtype))(Current)).it_i4);
					ub1 = (EIF_BOOLEAN)(loc1 == ti4_9);
					ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6797, dtype))(Current, ui4_1x, ui4_2x, ui4_3x, ub1x)).it_i4);
					Result = (EIF_INTEGER_32) ti4_9;
					break;
				default:
					if (RTAL & CK_CHECK) {
						RTHOOK(306);
						RTCT("False", EX_CHECK);
							RTCF;
					}
					break;
			}
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(307);
		RTCT("valid_result", EX_POST);
		ti4_9 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		ti4_10 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_9) || (EIF_BOOLEAN)(Result == ti4_10))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(308);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(20);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ub1
#undef ub2
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_additional_bracket */
EIF_TYPED_VALUE F1063_9385 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "match_additional_bracket";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLIU(2);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 1062, Current, 4, 2, 15580);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15580);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 * ((EIF_INTEGER_32) 2L));
	RTHOOK(2);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = loc1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(3,1);
	ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 1L));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
	loc3 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6776, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype));
	ui4_1 = (EIF_INTEGER_32) (ti4_1 + loc1);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
	loc4 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(5);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6776, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
	ui4_1 = ti4_1;
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype));
	ui4_2 = (EIF_INTEGER_32) (ti4_2 + loc1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
	RTHOOK(6);
	RTDBGAL(0, 0x10000000, 1,0); /* Result */
	ui4_1 = arg1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(6791, dtype))(Current, ui4_1x)).it_i4);
	Result = (EIF_INTEGER_32) ti4_1;
	RTHOOK(7);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN)(Result != ti4_1)) {
		RTHOOK(8);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(8,1);
		ui4_1 = loc2;
		ui4_2 = loc1;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
		RTHOOK(9);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(9,1);
		ui4_1 = loc3;
		ui4_2 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 1L));
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
		RTHOOK(10);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6776, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(10,1);
		ui4_1 = loc4;
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6777, dtype));
		ui4_2 = (EIF_INTEGER_32) (ti4_1 + loc1);
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2572, "put", tr1))(tr1, ui4_1x, ui4_2x);
		RTHOOK(11);
		RTDBGAL(0, 0x10000000, 1,0); /* Result */
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		Result = (EIF_INTEGER_32) ti4_1;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef ui4_2
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.next_matching_alternate */
EIF_TYPED_VALUE F1063_9386 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "next_matching_alternate";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLIU(2);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1062, Current, 2, 1, 15581);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15581);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAA(Current, dtype, 6731, 0x10000000, 1); /* code_index */
	*(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype)) = (EIF_INTEGER_32) arg1;
	RTHOOK(2);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
	loc1 = (EIF_INTEGER_32) ti4_1;
	for (;;) {
		RTHOOK(3);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5335, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(loc1 != ti4_1)) break;
		RTHOOK(4);
		RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
		ui4_1 = (EIF_INTEGER_32) (ti4_2 + ((EIF_INTEGER_32) 2L));
		ub1 = (EIF_BOOLEAN) 1;
		ub2 = (EIF_BOOLEAN) 0;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
		loc2 = (EIF_INTEGER_32) ti4_2;
		RTHOOK(5);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN)(loc2 == ti4_2)) {
			RTHOOK(6);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5279, dtype))(Current)).it_i4);
			loc1 = (EIF_INTEGER_32) ti4_2;
			RTHOOK(7);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_2;
		} else {
			RTHOOK(8);
			RTDBGAA(Current, dtype, 6731, 0x10000000, 1); /* code_index */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(8,1);
			ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
			ui4_1 = (EIF_INTEGER_32) (ti4_3 + ((EIF_INTEGER_32) 1L));
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
			(*(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype))) += ti4_3;
			RTHOOK(9);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(9,1);
			ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype));
			ui4_1 = ti4_2;
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
			loc1 = (EIF_INTEGER_32) ti4_2;
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(10);
		RTCT("valid_result", EX_POST);
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_2) || (EIF_BOOLEAN)(Result == ti4_3))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef ub1
#undef ub2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_ref */
EIF_TYPED_VALUE F1063_9387 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "match_ref";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLIU(3);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	
	RTEAA(l_feature_name, 1062, Current, 3, 3, 15582);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15582);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
	if ((EIF_BOOLEAN) (arg3 > (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - arg1) + ((EIF_INTEGER_32) 1L)))) {
		RTHOOK(2);
		RTDBGAL(0, 0x10000000, 1,0); /* Result */
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		Result = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(3);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ui4_1 = arg2;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
		loc1 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(4);
		RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
		loc2 = (EIF_INTEGER_32) arg1;
		RTHOOK(5);
		RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
		loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc1 + arg3);
		RTHOOK(6);
		RTDBGAL(0, 0x10000000, 1,0); /* Result */
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		Result = (EIF_INTEGER_32) ti4_1;
		RTHOOK(7);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6767, dtype));
		if (tb1) {
			for (;;) {
				RTHOOK(8);
				if ((EIF_BOOLEAN) (loc1 >= loc3)) break;
				RTHOOK(9);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(9,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				RTNHOOK(9,2);
				ui4_1 = loc1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
				ui4_1 = ti4_1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(9,3);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				RTNHOOK(9,4);
				ui4_1 = loc2;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
				ui4_1 = ti4_2;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
				if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
					RTHOOK(10);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1++;
					RTHOOK(11);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2++;
				} else {
					RTHOOK(12);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) loc3;
					RTHOOK(13);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_1;
				}
			}
		} else {
			for (;;) {
				RTHOOK(14);
				if ((EIF_BOOLEAN) (loc1 >= loc3)) break;
				RTHOOK(15);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(15,1);
				ui4_1 = loc1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(15,2);
				ui4_1 = loc2;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
				if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
					RTHOOK(16);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1++;
					RTHOOK(17);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2++;
				} else {
					RTHOOK(18);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) loc3;
					RTHOOK(19);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_1;
				}
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef up2
#undef ui4_1
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_repeated_refs */
EIF_TYPED_VALUE F1063_9388 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "match_repeated_refs";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc8 = (EIF_BOOLEAN) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ui4_3x = {{0}, SK_INT32};
#define ui4_3 ui4_3x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLIU(2);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_BOOL, &loc8);
	
	RTEAA(l_feature_name, 1062, Current, 8, 1, 15583);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15583);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) arg1;
	RTHOOK(2);
	RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 1L));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
	loc5 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 * ((EIF_INTEGER_32) 2L));
	RTHOOK(3);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 += ((EIF_INTEGER_32) 2L);
	RTHOOK(4);
	tb1 = '\01';
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6775, dtype));
	if (!(EIF_BOOLEAN) (loc5 >= ti4_1)) {
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(4,1);
		ui4_1 = loc5;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
		tb1 = (EIF_BOOLEAN) (ti4_1 <= ((EIF_INTEGER_32) 0L));
	}
	if (tb1) {
		RTHOOK(5);
		RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
		loc6 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - ti4_2) + ((EIF_INTEGER_32) 2L));
	} else {
		RTHOOK(6);
		RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,1);
		ui4_1 = (EIF_INTEGER_32) (loc5 + ((EIF_INTEGER_32) 1L));
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6773, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(6,2);
		ui4_1 = loc5;
		ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", tr1))(tr1, ui4_1x)).it_i4);
		loc6 = (EIF_INTEGER_32) (EIF_INTEGER_32) (ti4_1 - ti4_2);
	}
	RTHOOK(7);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(7,1);
	ui4_1 = loc1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
	switch (ti4_1) {
		case 45L:
			RTHOOK(8);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(9);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(10);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			RTHOOK(11);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			break;
		case 46L:
			RTHOOK(12);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(13);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(14);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			RTHOOK(15);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			break;
		case 47L:
			RTHOOK(16);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(17);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(18);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(19);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			break;
		case 48L:
			RTHOOK(20);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(21);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(22);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(23);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			break;
		case 49L:
			RTHOOK(24);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(25);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(26);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			RTHOOK(27);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			loc4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			break;
		case 50L:
			RTHOOK(28);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(29);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(30);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			RTHOOK(31);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			loc4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			break;
		case 51L:
		case 52L:
			RTHOOK(32);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(32,1);
			ui4_1 = loc1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5331, dtype))(Current)).it_i4);
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
			RTHOOK(33);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(33,1);
			ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 1L));
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
			loc3 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(34);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(34,1);
			ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 2L));
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
			loc4 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(35);
			if ((EIF_BOOLEAN)(loc4 == ((EIF_INTEGER_32) 0L))) {
				RTHOOK(36);
				RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
				loc4 = (EIF_INTEGER_32) ti4_1;
			}
			RTHOOK(37);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1 += ((EIF_INTEGER_32) 3L);
			break;
		default:
			RTHOOK(38);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
			ui4_1 = ti4_1;
			ui4_2 = loc5;
			ui4_3 = loc6;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6792, dtype))(Current, ui4_1x, ui4_2x, ui4_3x)).it_i4);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
				RTHOOK(39);
				RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype))) += loc6;
				RTHOOK(40);
				RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
				loc6 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			} else {
				RTHOOK(41);
				RTDBGAL(0, 0x10000000, 1,0); /* Result */
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
				Result = (EIF_INTEGER_32) ti4_1;
			}
			break;
	}
	RTHOOK(42);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_1) && (EIF_BOOLEAN) (loc6 > ((EIF_INTEGER_32) 0L)))) {
		RTHOOK(43);
		RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
		loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
		for (;;) {
			RTHOOK(44);
			if ((EIF_BOOLEAN) (loc2 > loc3)) break;
			RTHOOK(45);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
			ui4_1 = ti4_1;
			ui4_2 = loc5;
			ui4_3 = loc6;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6792, dtype))(Current, ui4_1x, ui4_2x, ui4_3x)).it_i4);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
				RTHOOK(46);
				RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype))) += loc6;
				RTHOOK(47);
				RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
				loc2++;
			} else {
				RTHOOK(48);
				RTDBGAL(0, 0x10000000, 1,0); /* Result */
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
				Result = (EIF_INTEGER_32) ti4_1;
				RTHOOK(49);
				RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
				loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc3 + ((EIF_INTEGER_32) 1L));
			}
		}
		RTHOOK(50);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_1) && (EIF_BOOLEAN) (loc3 < loc4))) {
			RTHOOK(51);
			if (loc8) {
				RTHOOK(52);
				RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
				loc2 = (EIF_INTEGER_32) loc3;
				for (;;) {
					RTHOOK(53);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(Result != ti4_1)) break;
					RTHOOK(54);
					ui4_1 = loc1;
					ub1 = (EIF_BOOLEAN) 0;
					ub2 = (EIF_BOOLEAN) 0;
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
						RTHOOK(55);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_2;
					} else {
						RTHOOK(56);
						tb1 = '\01';
						if (!(EIF_BOOLEAN) (loc2 >= loc4)) {
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_2;
							ui4_2 = loc5;
							ui4_3 = loc6;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6792, dtype))(Current, ui4_1x, ui4_2x, ui4_3x)).it_i4);
							ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							tb1 = (EIF_BOOLEAN)(ti4_2 != ti4_3);
						}
						if (tb1) {
							RTHOOK(57);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_2;
						} else {
							RTHOOK(58);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype))) += loc6;
							RTHOOK(59);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							loc2++;
						}
					}
				}
			} else {
				RTHOOK(60);
				RTDBGAL(7, 0x10000000, 1, 0); /* loc7 */
				ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				loc7 = (EIF_INTEGER_32) ti4_2;
				RTHOOK(61);
				RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
				loc2 = (EIF_INTEGER_32) loc3;
				for (;;) {
					RTHOOK(62);
					if ((EIF_BOOLEAN) (loc2 >= loc4)) break;
					RTHOOK(63);
					ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ui4_1 = ti4_2;
					ui4_2 = loc5;
					ui4_3 = loc6;
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6792, dtype))(Current, ui4_1x, ui4_2x, ui4_3x)).it_i4);
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
						RTHOOK(64);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype))) += loc6;
						RTHOOK(65);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2++;
					} else {
						RTHOOK(66);
						RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
						loc2 = (EIF_INTEGER_32) loc4;
					}
				}
				for (;;) {
					RTHOOK(67);
					ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					if ((EIF_BOOLEAN) (ti4_2 < loc7)) break;
					RTHOOK(68);
					ui4_1 = loc1;
					ub1 = (EIF_BOOLEAN) 0;
					ub2 = (EIF_BOOLEAN) 0;
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
					ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_3 == ti4_4)) {
						RTHOOK(69);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_3;
						RTHOOK(70);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc7 - ((EIF_INTEGER_32) 1L));
					} else {
						RTHOOK(71);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype))) -= loc6;
					}
				}
				RTHOOK(72);
				ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(Result == ti4_3)) {
					RTHOOK(73);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_3;
				}
			}
		}
	}
	RTHOOK(74);
	RTDBGAA(Current, dtype, 6731, 0x10000000, 1); /* code_index */
	*(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype)) = (EIF_INTEGER_32) loc1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(75);
		RTCT("valid_result", EX_POST);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_3) || (EIF_BOOLEAN)(Result == ti4_4)) || (EIF_BOOLEAN)(Result == ti4_5))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(76);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(11);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef ui4_2
#undef ui4_3
#undef ub1
#undef ub2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_repeated_classes */
EIF_TYPED_VALUE F1063_9389 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "match_repeated_classes";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc5 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc6 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc7 = (EIF_INTEGER_32) 0;
	EIF_BOOLEAN loc8 = (EIF_BOOLEAN) 0;
	EIF_INTEGER_32 loc9 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ui4_2x = {{0}, SK_INT32};
#define ui4_2 ui4_2x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_INTEGER_32 ti4_7;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLIU(2);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	RTLU(SK_INT32, &loc5);
	RTLU(SK_INT32, &loc6);
	RTLU(SK_INT32, &loc7);
	RTLU(SK_BOOL, &loc8);
	RTLU(SK_INT32, &loc9);
	
	RTEAA(l_feature_name, 1062, Current, 9, 1, 15584);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15584);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
	loc3 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg1 + ((EIF_INTEGER_32) 1L));
	RTHOOK(2);
	RTDBGAL(9, 0x10000000, 1, 0); /* loc9 */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(2,1);
	ui4_1 = loc3;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
	loc9 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(3);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg1 + ((EIF_INTEGER_32) 2L));
	RTHOOK(4);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(4,1);
	ui4_1 = loc1;
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
	switch (ti4_1) {
		case 45L:
			RTHOOK(5);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(6);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(7);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			loc5 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			RTHOOK(8);
			RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
			loc6 = (EIF_INTEGER_32) ti4_1;
			break;
		case 46L:
			RTHOOK(9);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(10);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(11);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			loc5 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			RTHOOK(12);
			RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
			loc6 = (EIF_INTEGER_32) ti4_1;
			break;
		case 47L:
			RTHOOK(13);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(14);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(15);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			loc5 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(16);
			RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
			loc6 = (EIF_INTEGER_32) ti4_1;
			break;
		case 48L:
			RTHOOK(17);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(18);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(19);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			loc5 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(20);
			RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
			loc6 = (EIF_INTEGER_32) ti4_1;
			break;
		case 49L:
			RTHOOK(21);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(22);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 0;
			RTHOOK(23);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			loc5 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			RTHOOK(24);
			RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
			loc6 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			break;
		case 50L:
			RTHOOK(25);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1++;
			RTHOOK(26);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN) 1;
			RTHOOK(27);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			loc5 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			RTHOOK(28);
			RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
			loc6 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			break;
		case 51L:
		case 52L:
			RTHOOK(29);
			RTDBGAL(8, 0x04000000, 1, 0); /* loc8 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(29,1);
			ui4_1 = loc1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6031, "opcode_item", tr1))(tr1, ui4_1x)).it_i4);
			ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5331, dtype))(Current)).it_i4);
			loc8 = (EIF_BOOLEAN) (EIF_BOOLEAN)(ti4_1 == ti4_2);
			RTHOOK(30);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(30,1);
			ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 1L));
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
			loc5 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(31);
			RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(31,1);
			ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 2L));
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
			loc6 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(32);
			if ((EIF_BOOLEAN)(loc6 == ((EIF_INTEGER_32) 0L))) {
				RTHOOK(33);
				RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6763, dtype))(Current)).it_i4);
				loc6 = (EIF_INTEGER_32) ti4_1;
			}
			RTHOOK(34);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1 += ((EIF_INTEGER_32) 3L);
			break;
		default:
			RTHOOK(35);
			RTDBGAL(5, 0x10000000, 1, 0); /* loc5 */
			loc5 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(36);
			RTDBGAL(6, 0x10000000, 1, 0); /* loc6 */
			loc6 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			break;
	}
	RTHOOK(37);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	loc2 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(38);
		if ((EIF_BOOLEAN) (loc2 > loc5)) break;
		RTHOOK(39);
		ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
		ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
		if ((EIF_BOOLEAN) (ti4_1 > ti4_2)) {
			RTHOOK(40);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			RTHOOK(41);
			RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
			loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc5 + ((EIF_INTEGER_32) 1L));
		} else {
			RTHOOK(42);
			RTDBGAL(7, 0x10000000, 1, 0); /* loc7 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(42,1);
			ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
			ui4_1 = ti4_1;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
			loc7 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(43);
			RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
			(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
			RTHOOK(44);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(44,1);
			ui4_1 = loc9;
			ui4_2 = loc7;
			tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(6035, "character_set_has", tr1))(tr1, ui4_1x, ui4_2x)).it_b);
			if (tb1) {
				RTHOOK(45);
				RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
				loc2++;
			} else {
				RTHOOK(46);
				RTDBGAL(0, 0x10000000, 1,0); /* Result */
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
				Result = (EIF_INTEGER_32) ti4_1;
				RTHOOK(47);
				RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
				loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc5 + ((EIF_INTEGER_32) 1L));
			}
		}
	}
	RTHOOK(48);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
	if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_1) && (EIF_BOOLEAN) (loc5 < loc6))) {
		RTHOOK(49);
		if (loc8) {
			RTHOOK(50);
			RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
			loc2 = (EIF_INTEGER_32) loc5;
			for (;;) {
				RTHOOK(51);
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(Result != ti4_1)) break;
				RTHOOK(52);
				ui4_1 = loc1;
				ub1 = (EIF_BOOLEAN) 0;
				ub2 = (EIF_BOOLEAN) 0;
				ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
				ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
					RTHOOK(53);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_2;
				} else {
					RTHOOK(54);
					ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
					if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc2 >= loc6) || (EIF_BOOLEAN) (ti4_2 > ti4_3))) {
						RTHOOK(55);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_2;
					} else {
						RTHOOK(56);
						RTDBGAL(7, 0x10000000, 1, 0); /* loc7 */
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(56,1);
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ui4_1 = ti4_2;
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
						loc7 = (EIF_INTEGER_32) ti4_2;
						RTHOOK(57);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						RTHOOK(58);
						tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
						RTNHOOK(58,1);
						ui4_1 = loc9;
						ui4_2 = loc7;
						tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(6035, "character_set_has", tr1))(tr1, ui4_1x, ui4_2x)).it_b);
						if (tb1) {
							RTHOOK(59);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							loc2++;
						} else {
							RTHOOK(60);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_2;
						}
					}
				}
			}
		} else {
			RTHOOK(61);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
			loc4 = (EIF_INTEGER_32) ti4_2;
			RTHOOK(62);
			RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
			loc2 = (EIF_INTEGER_32) loc5;
			for (;;) {
				RTHOOK(63);
				ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
				if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc2 >= loc6) || (EIF_BOOLEAN) (ti4_2 > ti4_3))) break;
				RTHOOK(64);
				RTDBGAL(7, 0x10000000, 1, 0); /* loc7 */
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(64,1);
				ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				ui4_1 = ti4_4;
				ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
				loc7 = (EIF_INTEGER_32) ti4_4;
				RTHOOK(65);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(65,1);
				ui4_1 = loc9;
				ui4_2 = loc7;
				tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(6035, "character_set_has", tr1))(tr1, ui4_1x, ui4_2x)).it_b);
				if (tb1) {
					RTHOOK(66);
					RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
					(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
					RTHOOK(67);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2++;
				} else {
					RTHOOK(68);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					loc2 = (EIF_INTEGER_32) loc6;
				}
			}
			for (;;) {
				RTHOOK(69);
				ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				if ((EIF_BOOLEAN) (ti4_4 < loc4)) break;
				RTHOOK(70);
				ui4_1 = loc1;
				ub1 = (EIF_BOOLEAN) 0;
				ub2 = (EIF_BOOLEAN) 0;
				ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
				ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(ti4_5 == ti4_6)) {
					RTHOOK(71);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_5;
					RTHOOK(72);
					RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
					ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					loc4 = (EIF_INTEGER_32) ti4_5;
				}
				RTHOOK(73);
				RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))--;
			}
			RTHOOK(74);
			ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN)(Result == ti4_5)) {
				RTHOOK(75);
				RTDBGAL(0, 0x10000000, 1,0); /* Result */
				ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
				Result = (EIF_INTEGER_32) ti4_5;
			}
		}
	}
	RTHOOK(76);
	RTDBGAA(Current, dtype, 6731, 0x10000000, 1); /* code_index */
	*(EIF_INTEGER_32 *)(Current + RTWA(6731, dtype)) = (EIF_INTEGER_32) loc1;
	if (RTAL & CK_ENSURE) {
		RTHOOK(77);
		RTCT("valid_result", EX_POST);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_5) || (EIF_BOOLEAN)(Result == ti4_6)) || (EIF_BOOLEAN)(Result == ti4_7))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(78);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(12);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef ui4_1
#undef ui4_2
#undef ub1
#undef ub2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_repeated_characters */
EIF_TYPED_VALUE F1063_9390 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "match_repeated_characters";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_b
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_INTEGER_32 ti4_7;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_b = * (EIF_BOOLEAN *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLIU(3);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_BOOL,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	
	RTEAA(l_feature_name, 1062, Current, 3, 4, 15585);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15585);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
	if ((EIF_BOOLEAN) (arg2 > (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - ti4_2) + ((EIF_INTEGER_32) 1L)))) {
		RTHOOK(2);
		RTDBGAL(0, 0x10000000, 1,0); /* Result */
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		Result = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(3);
		RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ui4_1 = (EIF_INTEGER_32) (arg1 - ((EIF_INTEGER_32) 1L));
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6032, "character_item", tr1))(tr1, ui4_1x)).it_i4);
		loc3 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(4);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6767, dtype));
		if (tb1) {
			RTHOOK(5);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			ui4_1 = loc3;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
			loc3 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(6);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			for (;;) {
				RTHOOK(7);
				if ((EIF_BOOLEAN) (loc1 > arg2)) break;
				RTHOOK(8);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(8,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				RTNHOOK(8,2);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				ui4_1 = ti4_1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
				ui4_1 = ti4_1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
				if ((EIF_BOOLEAN)(loc3 != ti4_1)) {
					RTHOOK(9);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_1;
					RTHOOK(10);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
				} else {
					RTHOOK(11);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1++;
				}
				RTHOOK(12);
				RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
			}
			RTHOOK(13);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_1) && (EIF_BOOLEAN) (arg2 < arg3))) {
				RTHOOK(14);
				if (arg4) {
					RTHOOK(15);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) arg2;
					for (;;) {
						RTHOOK(16);
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(Result != ti4_1)) break;
						RTHOOK(17);
						ui4_1 = arg1;
						ub1 = (EIF_BOOLEAN) 0;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
							RTHOOK(18);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_2;
						} else {
							RTHOOK(19);
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc1 >= arg3) || (EIF_BOOLEAN) (ti4_2 > ti4_3))) {
								RTHOOK(20);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_2;
							} else {
								RTHOOK(21);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(21,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(21,2);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
								if ((EIF_BOOLEAN)(loc3 != ti4_2)) {
									RTHOOK(22);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(23);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
									Result = (EIF_INTEGER_32) ti4_2;
								} else {
									RTHOOK(24);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(25);
									RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
									loc1++;
								}
							}
						}
					}
				} else {
					RTHOOK(26);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					loc2 = (EIF_INTEGER_32) ti4_2;
					RTHOOK(27);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) arg2;
					for (;;) {
						RTHOOK(28);
						if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
						RTHOOK(29);
						tb1 = '\01';
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(29,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(29,2);
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_2;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_2;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
							tb1 = (EIF_BOOLEAN)(loc3 != ti4_2);
						}
						if (tb1) {
							RTHOOK(30);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) arg3;
						} else {
							RTHOOK(31);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
							RTHOOK(32);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
					}
					for (;;) {
						RTHOOK(33);
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						if ((EIF_BOOLEAN) (ti4_2 < loc2)) break;
						RTHOOK(34);
						ui4_1 = arg1;
						ub1 = (EIF_BOOLEAN) 0;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(ti4_3 == ti4_4)) {
							RTHOOK(35);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_3;
							RTHOOK(36);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							loc2 = (EIF_INTEGER_32) ti4_3;
						}
						RTHOOK(37);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))--;
					}
					RTHOOK(38);
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(Result == ti4_3)) {
						RTHOOK(39);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_3;
					}
				}
			}
		} else {
			RTHOOK(40);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			for (;;) {
				RTHOOK(41);
				if ((EIF_BOOLEAN) (loc1 > arg2)) break;
				RTHOOK(42);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(42,1);
				ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				ui4_1 = ti4_3;
				ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
				if ((EIF_BOOLEAN)(loc3 != ti4_3)) {
					RTHOOK(43);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_3;
					RTHOOK(44);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
				} else {
					RTHOOK(45);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1++;
				}
				RTHOOK(46);
				RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
			}
			RTHOOK(47);
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_3) && (EIF_BOOLEAN) (arg2 < arg3))) {
				RTHOOK(48);
				if (arg4) {
					RTHOOK(49);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) arg2;
					for (;;) {
						RTHOOK(50);
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(Result != ti4_3)) break;
						RTHOOK(51);
						ui4_1 = arg1;
						ub1 = (EIF_BOOLEAN) 0;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(ti4_4 == ti4_5)) {
							RTHOOK(52);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_4;
						} else {
							RTHOOK(53);
							ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc1 >= arg3) || (EIF_BOOLEAN) (ti4_4 > ti4_5))) {
								RTHOOK(54);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_4;
							} else {
								RTHOOK(55);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(55,1);
								ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_4;
								ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
								if ((EIF_BOOLEAN)(loc3 != ti4_4)) {
									RTHOOK(56);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(57);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
									Result = (EIF_INTEGER_32) ti4_4;
								} else {
									RTHOOK(58);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(59);
									RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
									loc1++;
								}
							}
						}
					}
				} else {
					RTHOOK(60);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					loc2 = (EIF_INTEGER_32) ti4_4;
					RTHOOK(61);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) arg2;
					for (;;) {
						RTHOOK(62);
						if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
						RTHOOK(63);
						tb1 = '\01';
						ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_4 > ti4_5)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(63,1);
							ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_4;
							ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							tb1 = (EIF_BOOLEAN)(loc3 != ti4_4);
						}
						if (tb1) {
							RTHOOK(64);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) arg3;
						} else {
							RTHOOK(65);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
							RTHOOK(66);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
					}
					for (;;) {
						RTHOOK(67);
						ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						if ((EIF_BOOLEAN) (ti4_4 < loc2)) break;
						RTHOOK(68);
						ui4_1 = arg1;
						ub1 = (EIF_BOOLEAN) 0;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(ti4_5 == ti4_6)) {
							RTHOOK(69);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_5;
							RTHOOK(70);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							loc2 = (EIF_INTEGER_32) ti4_5;
						}
						RTHOOK(71);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))--;
					}
					RTHOOK(72);
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(Result == ti4_5)) {
						RTHOOK(73);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_5;
					}
				}
			}
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(74);
		RTCT("valid_result", EX_POST);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_5) || (EIF_BOOLEAN)(Result == ti4_6)) || (EIF_BOOLEAN)(Result == ti4_7))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(75);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef up2
#undef ui4_1
#undef ub1
#undef ub2
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_not_repeated_characters */
EIF_TYPED_VALUE F1063_9391 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "match_not_repeated_characters";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_b
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_INTEGER_32 ti4_6;
	EIF_INTEGER_32 ti4_7;
	EIF_BOOLEAN tb1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_b = * (EIF_BOOLEAN *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLIU(3);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_BOOL,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	
	RTEAA(l_feature_name, 1062, Current, 3, 4, 15586);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15586);
	RTIV(Current, RTAL);
	RTHOOK(1);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
	if ((EIF_BOOLEAN) (arg2 > (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - ti4_2) + ((EIF_INTEGER_32) 1L)))) {
		RTHOOK(2);
		RTDBGAL(0, 0x10000000, 1,0); /* Result */
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		Result = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(3);
		RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ui4_1 = (EIF_INTEGER_32) (arg1 - ((EIF_INTEGER_32) 1L));
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6032, "character_item", tr1))(tr1, ui4_1x)).it_i4);
		loc3 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(4);
		tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6767, dtype));
		if (tb1) {
			RTHOOK(5);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(5,1);
			ui4_1 = loc3;
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
			loc3 = (EIF_INTEGER_32) ti4_1;
			RTHOOK(6);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			for (;;) {
				RTHOOK(7);
				if ((EIF_BOOLEAN) (loc1 > arg2)) break;
				RTHOOK(8);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(8,1);
				tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
				RTNHOOK(8,2);
				ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				ui4_1 = ti4_1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
				ui4_1 = ti4_1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
				if ((EIF_BOOLEAN)(loc3 == ti4_1)) {
					RTHOOK(9);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_1;
					RTHOOK(10);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
				} else {
					RTHOOK(11);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1++;
				}
				RTHOOK(12);
				RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
			}
			RTHOOK(13);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_1) && (EIF_BOOLEAN) (arg2 < arg3))) {
				RTHOOK(14);
				if (arg4) {
					RTHOOK(15);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) arg2;
					for (;;) {
						RTHOOK(16);
						ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(Result != ti4_1)) break;
						RTHOOK(17);
						ui4_1 = arg1;
						ub1 = (EIF_BOOLEAN) 0;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
							RTHOOK(18);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_2;
						} else {
							RTHOOK(19);
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc1 >= arg3) || (EIF_BOOLEAN) (ti4_2 > ti4_3))) {
								RTHOOK(20);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_2;
							} else {
								RTHOOK(21);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(21,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(21,2);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
								if ((EIF_BOOLEAN)(loc3 != ti4_2)) {
									RTHOOK(22);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(23);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
									Result = (EIF_INTEGER_32) ti4_2;
								} else {
									RTHOOK(24);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(25);
									RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
									loc1++;
								}
							}
						}
					}
				} else {
					RTHOOK(26);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					loc2 = (EIF_INTEGER_32) ti4_2;
					RTHOOK(27);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) arg2;
					for (;;) {
						RTHOOK(28);
						if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
						RTHOOK(29);
						tb1 = '\01';
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6692, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(29,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(29,2);
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_2;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_2;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6414, "to_lower", tr1))(tr1, ui4_1x)).it_i4);
							tb1 = (EIF_BOOLEAN)(loc3 == ti4_2);
						}
						if (tb1) {
							RTHOOK(30);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) arg3;
						} else {
							RTHOOK(31);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
							RTHOOK(32);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
					}
					for (;;) {
						RTHOOK(33);
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						if ((EIF_BOOLEAN) (ti4_2 < loc2)) break;
						RTHOOK(34);
						ui4_1 = arg1;
						ub1 = (EIF_BOOLEAN) 0;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(ti4_3 == ti4_4)) {
							RTHOOK(35);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_3;
							RTHOOK(36);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							loc2 = (EIF_INTEGER_32) ti4_3;
						}
						RTHOOK(37);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))--;
					}
					RTHOOK(38);
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(Result == ti4_3)) {
						RTHOOK(39);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_3;
					}
				}
			}
		} else {
			RTHOOK(40);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			for (;;) {
				RTHOOK(41);
				if ((EIF_BOOLEAN) (loc1 > arg2)) break;
				RTHOOK(42);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(42,1);
				ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				ui4_1 = ti4_3;
				ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
				if ((EIF_BOOLEAN)(loc3 == ti4_3)) {
					RTHOOK(43);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_3;
					RTHOOK(44);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
				} else {
					RTHOOK(45);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1++;
				}
				RTHOOK(46);
				RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
				(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
			}
			RTHOOK(47);
			ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_3) && (EIF_BOOLEAN) (arg2 < arg3))) {
				RTHOOK(48);
				if (arg4) {
					RTHOOK(49);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) arg2;
					for (;;) {
						RTHOOK(50);
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(Result != ti4_3)) break;
						RTHOOK(51);
						ui4_1 = arg1;
						ub1 = (EIF_BOOLEAN) 0;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(ti4_4 == ti4_5)) {
							RTHOOK(52);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_4;
						} else {
							RTHOOK(53);
							ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc1 >= arg3) || (EIF_BOOLEAN) (ti4_4 > ti4_5))) {
								RTHOOK(54);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_4;
							} else {
								RTHOOK(55);
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(55,1);
								ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_4;
								ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
								if ((EIF_BOOLEAN)(loc3 == ti4_4)) {
									RTHOOK(56);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(57);
									RTDBGAL(0, 0x10000000, 1,0); /* Result */
									ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
									Result = (EIF_INTEGER_32) ti4_4;
								} else {
									RTHOOK(58);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(59);
									RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
									loc1++;
								}
							}
						}
					}
				} else {
					RTHOOK(60);
					RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
					ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					loc2 = (EIF_INTEGER_32) ti4_4;
					RTHOOK(61);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) arg2;
					for (;;) {
						RTHOOK(62);
						if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
						RTHOOK(63);
						tb1 = '\01';
						ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_4 > ti4_5)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(63,1);
							ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_4;
							ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							tb1 = (EIF_BOOLEAN)(loc3 == ti4_4);
						}
						if (tb1) {
							RTHOOK(64);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) arg3;
						} else {
							RTHOOK(65);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
							RTHOOK(66);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
					}
					for (;;) {
						RTHOOK(67);
						ti4_4 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						if ((EIF_BOOLEAN) (ti4_4 < loc2)) break;
						RTHOOK(68);
						ui4_1 = arg1;
						ub1 = (EIF_BOOLEAN) 0;
						ub2 = (EIF_BOOLEAN) 0;
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
						ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						if ((EIF_BOOLEAN)(ti4_5 == ti4_6)) {
							RTHOOK(69);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_5;
							RTHOOK(70);
							RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
							ti4_5 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							loc2 = (EIF_INTEGER_32) ti4_5;
						}
						RTHOOK(71);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))--;
					}
					RTHOOK(72);
					ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(Result == ti4_5)) {
						RTHOOK(73);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_5;
					}
				}
			}
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(74);
		RTCT("valid_result", EX_POST);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		ti4_6 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		ti4_7 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_5) || (EIF_BOOLEAN)(Result == ti4_6)) || (EIF_BOOLEAN)(Result == ti4_7))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(75);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef up2
#undef ui4_1
#undef ub1
#undef ub2
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.match_repeated_type */
EIF_TYPED_VALUE F1063_9392 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "match_repeated_type";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_i4
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_b
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE ub2x = {{0}, SK_BOOL};
#define ub2 ub2x.it_b
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 ti4_2;
	EIF_INTEGER_32 ti4_3;
	EIF_INTEGER_32 ti4_4;
	EIF_INTEGER_32 ti4_5;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_b = * (EIF_BOOLEAN *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(3);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLIU(3);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_BOOL,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 1062, Current, 4, 4, 15587);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1062, Current, 15587);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6691, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	ui4_1 = (EIF_INTEGER_32) (arg1 - ((EIF_INTEGER_32) 1L));
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6033, "integer_item", tr1))(tr1, ui4_1x)).it_i4);
	loc3 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(2);
	ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
	ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
	if ((EIF_BOOLEAN) (arg2 > (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_1 - ti4_2) + ((EIF_INTEGER_32) 1L)))) {
		RTHOOK(3);
		RTDBGAL(0, 0x10000000, 1,0); /* Result */
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		Result = (EIF_INTEGER_32) ti4_1;
	} else {
		RTHOOK(4);
		if ((EIF_BOOLEAN) (arg2 > ((EIF_INTEGER_32) 0L))) {
			RTHOOK(5);
			switch (loc3) {
				case 15L:
					RTHOOK(6);
					tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6769, dtype));
					if (tb1) {
						RTHOOK(7);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype))) += arg2;
					} else {
						RTHOOK(8);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
						for (;;) {
							RTHOOK(9);
							if ((EIF_BOOLEAN) (loc1 > arg2)) break;
							RTHOOK(10);
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(10,1);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_1;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
							if ((EIF_BOOLEAN)(ti4_1 == ti4_2)) {
								RTHOOK(11);
								RTDBGAL(0, 0x10000000, 1,0); /* Result */
								ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
								Result = (EIF_INTEGER_32) ti4_1;
								RTHOOK(12);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
							} else {
								RTHOOK(13);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1++;
							}
							RTHOOK(14);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
						}
					}
					break;
				case 4L:
					RTHOOK(15);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					for (;;) {
						RTHOOK(16);
						if ((EIF_BOOLEAN) (loc1 > arg2)) break;
						RTHOOK(17);
						tb1 = '\01';
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_1 > ti4_2)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5202, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(17,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(17,2);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_1;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_1;
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
							tb1 = tb2;
						}
						if (tb1) {
							RTHOOK(18);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_1;
							RTHOOK(19);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
						} else {
							RTHOOK(20);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
						RTHOOK(21);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
					}
					break;
				case 5L:
					RTHOOK(22);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					for (;;) {
						RTHOOK(23);
						if ((EIF_BOOLEAN) (loc1 > arg2)) break;
						RTHOOK(24);
						tb1 = '\01';
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_1 > ti4_2)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5202, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(24,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(24,2);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_1;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_1;
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
							tb1 = (EIF_BOOLEAN) !tb2;
						}
						if (tb1) {
							RTHOOK(25);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_1;
							RTHOOK(26);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
						} else {
							RTHOOK(27);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
						RTHOOK(28);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
					}
					break;
				case 6L:
					RTHOOK(29);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					for (;;) {
						RTHOOK(30);
						if ((EIF_BOOLEAN) (loc1 > arg2)) break;
						RTHOOK(31);
						tb1 = '\01';
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_1 > ti4_2)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5210, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(31,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(31,2);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_1;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_1;
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
							tb1 = tb2;
						}
						if (tb1) {
							RTHOOK(32);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_1;
							RTHOOK(33);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
						} else {
							RTHOOK(34);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
						RTHOOK(35);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
					}
					break;
				case 7L:
					RTHOOK(36);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					for (;;) {
						RTHOOK(37);
						if ((EIF_BOOLEAN) (loc1 > arg2)) break;
						RTHOOK(38);
						tb1 = '\01';
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_1 > ti4_2)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5210, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(38,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(38,2);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_1;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_1;
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
							tb1 = (EIF_BOOLEAN) !tb2;
						}
						if (tb1) {
							RTHOOK(39);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_1;
							RTHOOK(40);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
						} else {
							RTHOOK(41);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
						RTHOOK(42);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
					}
					break;
				case 8L:
					RTHOOK(43);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					for (;;) {
						RTHOOK(44);
						if ((EIF_BOOLEAN) (loc1 > arg2)) break;
						RTHOOK(45);
						tb1 = '\01';
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_1 > ti4_2)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(45,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(45,2);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_1;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_1;
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
							tb1 = tb2;
						}
						if (tb1) {
							RTHOOK(46);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_1;
							RTHOOK(47);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
						} else {
							RTHOOK(48);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
						RTHOOK(49);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
					}
					break;
				case 9L:
					RTHOOK(50);
					RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
					loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
					for (;;) {
						RTHOOK(51);
						if ((EIF_BOOLEAN) (loc1 > arg2)) break;
						RTHOOK(52);
						tb1 = '\01';
						ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if (!(EIF_BOOLEAN) (ti4_1 > ti4_2)) {
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(52,1);
							tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
							RTNHOOK(52,2);
							ti4_1 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_1;
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
							ui4_1 = ti4_1;
							tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
							tb1 = (EIF_BOOLEAN) !tb2;
						}
						if (tb1) {
							RTHOOK(53);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_1;
							RTHOOK(54);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
						} else {
							RTHOOK(55);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
						RTHOOK(56);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
					}
					break;
				default:
					RTEC(EN_WHEN);
			}
		}
		RTHOOK(57);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_1) && (EIF_BOOLEAN) (arg2 < arg3))) {
			RTHOOK(58);
			if (arg4) {
				RTHOOK(59);
				RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
				loc1 = (EIF_INTEGER_32) arg2;
				for (;;) {
					RTHOOK(60);
					ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(Result != ti4_1)) break;
					RTHOOK(61);
					ui4_1 = arg1;
					ub1 = (EIF_BOOLEAN) 0;
					ub2 = (EIF_BOOLEAN) 0;
					ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_2 == ti4_3)) {
						RTHOOK(62);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_2;
					} else {
						RTHOOK(63);
						ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
						ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
						if ((EIF_BOOLEAN) ((EIF_BOOLEAN) (loc1 >= arg3) || (EIF_BOOLEAN) (ti4_2 > ti4_3))) {
							RTHOOK(64);
							RTDBGAL(0, 0x10000000, 1,0); /* Result */
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
							Result = (EIF_INTEGER_32) ti4_2;
						} else {
							RTHOOK(65);
							RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
							tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
							RTNHOOK(65,1);
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ui4_1 = ti4_2;
							ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
							loc4 = (EIF_INTEGER_32) ti4_2;
							RTHOOK(66);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
							RTHOOK(67);
							switch (loc3) {
								case 15L:
									RTHOOK(68);
									tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6769, dtype));
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
									if ((EIF_BOOLEAN) ((EIF_BOOLEAN) !tb1 && (EIF_BOOLEAN)(loc4 == ti4_2))) {
										RTHOOK(69);
										RTDBGAL(0, 0x10000000, 1,0); /* Result */
										ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
										Result = (EIF_INTEGER_32) ti4_2;
									}
									break;
								case 4L:
									RTHOOK(70);
									tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5202, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
									RTNHOOK(70,1);
									tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
									RTNHOOK(70,2);
									ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
									ui4_1 = ti4_2;
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
									ui4_1 = ti4_2;
									tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
									if (tb1) {
										RTHOOK(71);
										RTDBGAL(0, 0x10000000, 1,0); /* Result */
										ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
										Result = (EIF_INTEGER_32) ti4_2;
									}
									break;
								case 5L:
									RTHOOK(72);
									tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5202, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
									RTNHOOK(72,1);
									tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
									RTNHOOK(72,2);
									ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
									ui4_1 = ti4_2;
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
									ui4_1 = ti4_2;
									tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
									if ((EIF_BOOLEAN) !tb1) {
										RTHOOK(73);
										RTDBGAL(0, 0x10000000, 1,0); /* Result */
										ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
										Result = (EIF_INTEGER_32) ti4_2;
									}
									break;
								case 6L:
									RTHOOK(74);
									tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5210, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
									RTNHOOK(74,1);
									tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
									RTNHOOK(74,2);
									ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
									ui4_1 = ti4_2;
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
									ui4_1 = ti4_2;
									tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
									if (tb1) {
										RTHOOK(75);
										RTDBGAL(0, 0x10000000, 1,0); /* Result */
										ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
										Result = (EIF_INTEGER_32) ti4_2;
									}
									break;
								case 7L:
									RTHOOK(76);
									tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5210, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
									RTNHOOK(76,1);
									tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
									RTNHOOK(76,2);
									ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
									ui4_1 = ti4_2;
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
									ui4_1 = ti4_2;
									tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
									if ((EIF_BOOLEAN) !tb1) {
										RTHOOK(77);
										RTDBGAL(0, 0x10000000, 1,0); /* Result */
										ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
										Result = (EIF_INTEGER_32) ti4_2;
									}
									break;
								case 8L:
									RTHOOK(78);
									tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
									RTNHOOK(78,1);
									tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
									RTNHOOK(78,2);
									ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
									ui4_1 = ti4_2;
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
									ui4_1 = ti4_2;
									tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
									if (tb1) {
										RTHOOK(79);
										RTDBGAL(0, 0x10000000, 1,0); /* Result */
										ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
										Result = (EIF_INTEGER_32) ti4_2;
									}
									break;
								case 9L:
									RTHOOK(80);
									tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
									RTNHOOK(80,1);
									tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
									RTNHOOK(80,2);
									ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
									ui4_1 = ti4_2;
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
									ui4_1 = ti4_2;
									tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
									if ((EIF_BOOLEAN) !tb1) {
										RTHOOK(81);
										RTDBGAL(0, 0x10000000, 1,0); /* Result */
										ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
										Result = (EIF_INTEGER_32) ti4_2;
									}
									break;
								default:
									RTEC(EN_WHEN);
							}
							RTHOOK(82);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1++;
						}
					}
				}
			} else {
				RTHOOK(83);
				RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
				ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
				loc2 = (EIF_INTEGER_32) ti4_2;
				RTHOOK(84);
				switch (loc3) {
					case 15L:
						RTHOOK(85);
						tb1 = *(EIF_BOOLEAN *)(Current + RTWA(6769, dtype));
						if (tb1) {
							RTHOOK(86);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg3 - arg2);
							RTHOOK(87);
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							if ((EIF_BOOLEAN) (loc1 > (EIF_INTEGER_32) (ti4_2 - ti4_3))) {
								RTHOOK(88);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
								ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) ((EIF_INTEGER_32) (ti4_2 - ti4_3) + ((EIF_INTEGER_32) 1L));
							}
							RTHOOK(89);
							RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
							(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype))) += loc1;
						} else {
							RTHOOK(90);
							RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
							loc1 = (EIF_INTEGER_32) arg2;
							for (;;) {
								RTHOOK(91);
								if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
								RTHOOK(92);
								tb1 = '\01';
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
								if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
									tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
									RTNHOOK(92,1);
									ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
									ui4_1 = ti4_2;
									ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr1))(tr1, ui4_1x)).it_i4);
									ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
									tb1 = (EIF_BOOLEAN)(ti4_2 == ti4_3);
								}
								if (tb1) {
									RTHOOK(93);
									RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
									loc1 = (EIF_INTEGER_32) arg3;
								} else {
									RTHOOK(94);
									RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
									(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
									RTHOOK(95);
									RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
									loc1++;
								}
							}
						}
						break;
					case 4L:
						RTHOOK(96);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						loc1 = (EIF_INTEGER_32) arg2;
						for (;;) {
							RTHOOK(97);
							if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
							RTHOOK(98);
							tb1 = '\01';
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5202, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(98,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(98,2);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_2;
								tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
								tb1 = tb2;
							}
							if (tb1) {
								RTHOOK(99);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1 = (EIF_INTEGER_32) arg3;
							} else {
								RTHOOK(100);
								RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
								(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
								RTHOOK(101);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1++;
							}
						}
						break;
					case 5L:
						RTHOOK(102);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						loc1 = (EIF_INTEGER_32) arg2;
						for (;;) {
							RTHOOK(103);
							if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
							RTHOOK(104);
							tb1 = '\01';
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5202, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(104,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(104,2);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_2;
								tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
								tb1 = (EIF_BOOLEAN) !tb2;
							}
							if (tb1) {
								RTHOOK(105);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1 = (EIF_INTEGER_32) arg3;
							} else {
								RTHOOK(106);
								RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
								(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
								RTHOOK(107);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1++;
							}
						}
						break;
					case 6L:
						RTHOOK(108);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						loc1 = (EIF_INTEGER_32) arg2;
						for (;;) {
							RTHOOK(109);
							if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
							RTHOOK(110);
							tb1 = '\01';
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5210, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(110,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(110,2);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_2;
								tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
								tb1 = tb2;
							}
							if (tb1) {
								RTHOOK(111);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1 = (EIF_INTEGER_32) arg3;
							} else {
								RTHOOK(112);
								RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
								(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
								RTHOOK(113);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1++;
							}
						}
						break;
					case 7L:
						RTHOOK(114);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						loc1 = (EIF_INTEGER_32) arg2;
						for (;;) {
							RTHOOK(115);
							if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
							RTHOOK(116);
							tb1 = '\01';
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5210, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(116,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(116,2);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_2;
								tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
								tb1 = (EIF_BOOLEAN) !tb2;
							}
							if (tb1) {
								RTHOOK(117);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1 = (EIF_INTEGER_32) arg3;
							} else {
								RTHOOK(118);
								RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
								(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
								RTHOOK(119);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1++;
							}
						}
						break;
					case 8L:
						RTHOOK(120);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						loc1 = (EIF_INTEGER_32) arg2;
						for (;;) {
							RTHOOK(121);
							if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
							RTHOOK(122);
							tb1 = '\01';
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(122,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(122,2);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_2;
								tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
								tb1 = tb2;
							}
							if (tb1) {
								RTHOOK(123);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1 = (EIF_INTEGER_32) arg3;
							} else {
								RTHOOK(124);
								RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
								(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
								RTHOOK(125);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1++;
							}
						}
						break;
					case 9L:
						RTHOOK(126);
						RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
						loc1 = (EIF_INTEGER_32) arg2;
						for (;;) {
							RTHOOK(127);
							if ((EIF_BOOLEAN) (loc1 >= arg3)) break;
							RTHOOK(128);
							tb1 = '\01';
							ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
							ti4_3 = *(EIF_INTEGER_32 *)(Current + RTWA(6564, dtype));
							if (!(EIF_BOOLEAN) (ti4_2 > ti4_3)) {
								tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6693, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
								RTNHOOK(128,1);
								tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6562, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
								RTNHOOK(128,2);
								ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
								ui4_1 = ti4_2;
								ti4_2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", tr2))(tr2, ui4_1x)).it_i4);
								ui4_1 = ti4_2;
								tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6023, "has", tr1))(tr1, ui4_1x)).it_b);
								tb1 = (EIF_BOOLEAN) !tb2;
							}
							if (tb1) {
								RTHOOK(129);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1 = (EIF_INTEGER_32) arg3;
							} else {
								RTHOOK(130);
								RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
								(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))++;
								RTHOOK(131);
								RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
								loc1++;
							}
						}
						break;
					default:
						RTEC(EN_WHEN);
				}
				for (;;) {
					RTHOOK(132);
					ti4_2 = *(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype));
					if ((EIF_BOOLEAN) (ti4_2 < loc2)) break;
					RTHOOK(133);
					ui4_1 = arg1;
					ub1 = (EIF_BOOLEAN) 0;
					ub2 = (EIF_BOOLEAN) 0;
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6788, dtype))(Current, ui4_1x, ub1x, ub2x)).it_i4);
					ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
					if ((EIF_BOOLEAN)(ti4_3 == ti4_4)) {
						RTHOOK(134);
						RTDBGAL(0, 0x10000000, 1,0); /* Result */
						ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
						Result = (EIF_INTEGER_32) ti4_3;
						RTHOOK(135);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)) = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc2 - ((EIF_INTEGER_32) 1L));
					} else {
						RTHOOK(136);
						RTDBGAA(Current, dtype, 6772, 0x10000000, 1); /* eptr */
						(*(EIF_INTEGER_32 *)(Current + RTWA(6772, dtype)))--;
					}
				}
				RTHOOK(137);
				ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
				if ((EIF_BOOLEAN)(Result == ti4_3)) {
					RTHOOK(138);
					RTDBGAL(0, 0x10000000, 1,0); /* Result */
					ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
					Result = (EIF_INTEGER_32) ti4_3;
				}
			}
		}
	}
	if (RTAL & CK_ENSURE) {
		RTHOOK(139);
		RTCT("valid_result", EX_POST);
		ti4_3 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6798, dtype))(Current)).it_i4);
		ti4_4 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6800, dtype))(Current)).it_i4);
		ti4_5 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6799, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) ((EIF_BOOLEAN) ((EIF_BOOLEAN)(Result == ti4_3) || (EIF_BOOLEAN)(Result == ti4_4)) || (EIF_BOOLEAN)(Result == ti4_5))) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(140);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef up1
#undef up2
#undef ui4_1
#undef ub1
#undef ub2
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {RX_PCRE_MATCHER}.return_true */
EIF_TYPED_VALUE F1063_9393 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	return r;
}

/* {RX_PCRE_MATCHER}.return_none */
EIF_TYPED_VALUE F1063_9394 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
	return r;
}

/* {RX_PCRE_MATCHER}.return_false */
EIF_TYPED_VALUE F1063_9395 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) -1L);
	return r;
}

void EIF_Minit1063 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
