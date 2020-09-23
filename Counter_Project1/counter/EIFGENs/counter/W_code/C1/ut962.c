/*
 * Code for class UT_ARRAY_FORMATTER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F962_7218(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F962_7219(EIF_REFERENCE);
extern EIF_TYPED_VALUE F962_7220(EIF_REFERENCE);
extern EIF_TYPED_VALUE F962_7221(EIF_REFERENCE);
extern EIF_TYPED_VALUE F962_7222(EIF_REFERENCE);
extern EIF_TYPED_VALUE F962_7223(EIF_REFERENCE);
extern EIF_TYPED_VALUE F962_7224(EIF_REFERENCE);
extern void EIF_Minit962(void);

#ifdef __cplusplus
}
#endif

#include "eif_out.h"

#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {UT_ARRAY_FORMATTER}.put_integer_array */
void F962_7218 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "put_integer_array";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc3 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc4 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_i4
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_i4 = * (EIF_INTEGER_32 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLIU(5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_INT32,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_INT32, &loc3);
	RTLU(SK_INT32, &loc4);
	
	RTEAA(l_feature_name, 961, Current, 4, 4, 13522);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(961, Current, 13522);
	RTCC(arg1, 961, l_feature_name, 1, eif_new_type(1014, 0x01), 0x01);
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,546,218,0xFFFF};
		EIF_TYPE typres0;
		static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
		
		typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), typarr0)));
		RTCC(arg2, 961, l_feature_name, 2, typres0, 0x01);
	}
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("an_array_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("start_pos_large_enough", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(arg2 + RTVA(2664, "lower", arg2));
		RTTE((EIF_BOOLEAN) (arg3 >= ti4_1), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("end_pos_small_enough", EX_PRE);
		ti4_1 = *(EIF_INTEGER_32 *)(arg2 + RTVA(2663, "upper", arg2));
		RTTE((EIF_BOOLEAN) (arg4 <= ti4_1), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("valid_bounds", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg3 <= (EIF_INTEGER_32) (arg4 + ((EIF_INTEGER_32) 1L))), label_1);
		RTCK;
		RTHOOK(5);
		RTCT("a_file_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(6);
		RTCT("a_file_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5115, "is_open_write", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(7);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5013, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
	RTHOOK(8);
	RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
	loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	RTHOOK(9);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) arg3;
	for (;;) {
		RTHOOK(10);
		if ((EIF_BOOLEAN) (loc1 > arg4)) break;
		RTHOOK(11);
		RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
		loc4++;
		RTHOOK(12);
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5015, dtype))(Current)).it_i4);
		if ((EIF_BOOLEAN) (loc4 > ti4_1)) {
			RTHOOK(13);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(5767, "put_new_line", arg1))(arg1);
			RTHOOK(14);
			RTDBGAL(4, 0x10000000, 1, 0); /* loc4 */
			loc4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			RTHOOK(15);
			RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
			loc3++;
			RTHOOK(16);
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5014, dtype))(Current)).it_i4);
			if ((EIF_BOOLEAN) (loc3 > ti4_1)) {
				RTHOOK(17);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(5767, "put_new_line", arg1))(arg1);
				RTHOOK(18);
				RTDBGAL(3, 0x10000000, 1, 0); /* loc3 */
				loc3 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
			}
			RTHOOK(19);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5013, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			ur1 = RTCCL(tr1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
		}
		RTHOOK(20);
		RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
		ui4_1 = loc1;
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2252, "item", arg2))(arg2, ui4_1x)).it_i4);
		loc2 = (EIF_INTEGER_32) ti4_1;
		RTHOOK(21);
		tr1 = c_outi(loc2);
		RTNHOOK(21,1);
		ti4_1 = *(EIF_INTEGER_32 *)(tr1 + RTVA(4768, "count", tr1));
		switch (ti4_1) {
			case 1L:
				RTHOOK(22);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5012, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				ur1 = RTCCL(tr1);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case 2L:
				RTHOOK(23);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5011, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				ur1 = RTCCL(tr1);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case 3L:
				RTHOOK(24);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5010, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				ur1 = RTCCL(tr1);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			default:
				RTHOOK(25);
				uc1 = (EIF_CHARACTER_8) ' ';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
		}
		RTHOOK(26);
		ui4_1 = loc2;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5753, "put_integer", arg1))(arg1, ui4_1x);
		RTHOOK(27);
		if ((EIF_BOOLEAN) (loc1 < arg4)) {
			RTHOOK(28);
			uc1 = (EIF_CHARACTER_8) ',';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
		}
		RTHOOK(29);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		loc1++;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(30);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(10);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef uc1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {UT_ARRAY_FORMATTER}.two_spaces */
RTOID (F962_7219)


EIF_TYPED_VALUE F962_7219 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F962_7219,13524,RTMS_EX_H("  ",2,8224));
}

/* {UT_ARRAY_FORMATTER}.three_spaces */
RTOID (F962_7220)


EIF_TYPED_VALUE F962_7220 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F962_7220,13525,RTMS_EX_H("   ",3,2105376));
}

/* {UT_ARRAY_FORMATTER}.four_spaces */
RTOID (F962_7221)


EIF_TYPED_VALUE F962_7221 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F962_7221,13526,RTMS_EX_H("    ",4,538976288));
}

/* {UT_ARRAY_FORMATTER}.indentation */
RTOID (F962_7222)


EIF_TYPED_VALUE F962_7222 (EIF_REFERENCE Current)
{
	GTCX
	RTOTC (F962_7222,13527,RTMS_EX_H("\011\011\011",3,592137));
}

/* {UT_ARRAY_FORMATTER}.max_nb_line */
EIF_TYPED_VALUE F962_7223 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 10L);
	return r;
}

/* {UT_ARRAY_FORMATTER}.max_nb_colon */
EIF_TYPED_VALUE F962_7224 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 10L);
	return r;
}

void EIF_Minit962 (void)
{
	GTCX
	RTOTS (7219,F962_7219)
	RTOTS (7220,F962_7220)
	RTOTS (7221,F962_7221)
	RTOTS (7222,F962_7222)
}


#ifdef __cplusplus
}
#endif
