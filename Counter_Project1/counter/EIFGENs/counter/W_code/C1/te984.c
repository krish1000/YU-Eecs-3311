/*
 * Code for class TEST_EXAMPLE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F984_7649(EIF_REFERENCE);
extern EIF_TYPED_VALUE F984_7650(EIF_REFERENCE);
extern EIF_TYPED_VALUE F984_7651(EIF_REFERENCE);
extern EIF_TYPED_VALUE F984_7652(EIF_REFERENCE);
extern EIF_TYPED_VALUE F984_7653(EIF_REFERENCE);
extern void EIF_Minit984(void);
extern EIF_REFERENCE _A984_79();
extern EIF_REFERENCE _A984_78();
extern EIF_REFERENCE _A984_77();
extern EIF_REFERENCE _A984_80();

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

/* {TEST_EXAMPLE}.make */
void F984_7649 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLIU(4);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 983, Current, 0, 0, 13930);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(983, Current, 13930);
	RTIV(Current, RTAL);
	RTHOOK(1);
	{
		EIF_TYPE_INDEX typarr0[] = {0xFFF9,1,186,0xFF01,0,0xFFFF};
		EIF_TYPE typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, typarr0);
		tr1 = RTLNTS(typres0.id, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,899,0xFF01,0xFFF9,0,186,0xFFFF};
		EIF_TYPE typres0;
		static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
		
		typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, typarr0)));
		tr2= RTLNRW(typres0.id, 0, (EIF_POINTER) _A984_77, (EIF_POINTER)(0),5435, 0, 0, 1, -1, tr1, 0);
	}
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5410, dtype))(Current, ur1x);
	RTHOOK(2);
	{
		EIF_TYPE_INDEX typarr0[] = {0xFFF9,1,186,0xFF01,0,0xFFFF};
		EIF_TYPE typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, typarr0);
		tr1 = RTLNTS(typres0.id, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,899,0xFF01,0xFFF9,0,186,0xFFFF};
		EIF_TYPE typres0;
		static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
		
		typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, typarr0)));
		tr2= RTLNRW(typres0.id, 0, (EIF_POINTER) _A984_78, (EIF_POINTER)(0),5436, 0, 0, 1, -1, tr1, 0);
	}
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5410, dtype))(Current, ur1x);
	RTHOOK(3);
	{
		EIF_TYPE_INDEX typarr0[] = {0xFFF9,1,186,0xFF01,0,0xFFFF};
		EIF_TYPE typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, typarr0);
		tr1 = RTLNTS(typres0.id, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,899,0xFF01,0xFFF9,0,186,0xFFFF};
		EIF_TYPE typres0;
		static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
		
		typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, typarr0)));
		tr2= RTLNRW(typres0.id, 0, (EIF_POINTER) _A984_79, (EIF_POINTER)(0),5437, 0, 0, 1, -1, tr1, 0);
	}
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5410, dtype))(Current, ur1x);
	RTHOOK(4);
	{
		EIF_TYPE_INDEX typarr0[] = {0xFFF9,1,186,0xFF01,0,0xFFFF};
		EIF_TYPE typres0;
		typarr0[4] = dftype;
		
		typres0 = eif_compound_id(dftype, typarr0);
		tr1 = RTLNTS(typres0.id, 2, 0);
	}
	((EIF_TYPED_VALUE *)tr1+1)->it_r = Current;
	RTAR(tr1,Current);
	
	{
		static EIF_TYPE_INDEX typarr0[] = {0xFF01,899,0xFF01,0xFFF9,0,186,0xFFFF};
		EIF_TYPE typres0;
		static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
		
		typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, typarr0)));
		tr2= RTLNRW(typres0.id, 0, (EIF_POINTER) _A984_80, (EIF_POINTER)(0),5438, 0, 0, 1, -1, tr1, 0);
	}
	ur1 = RTCCL(tr2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5410, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef ur1
}

/* {TEST_EXAMPLE}.t0 */
EIF_TYPED_VALUE F984_7650 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "t0";
	RTEX;
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,tr1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLIU(3);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 983, Current, 0, 0, 13931);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(983, Current, 13931);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = RTMS_EX_H("t0: First test fails as Result = False",38,324286053);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5415, dtype))(Current, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef ur1
}

/* {TEST_EXAMPLE}.t1 */
EIF_TYPED_VALUE F984_7651 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "t1";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN tb3;
	EIF_CHARACTER_8 tc1;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCFDT;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(7);
	RTLR(0,tr1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,loc1);
	RTLR(4,tr2);
	RTLR(5,loc2);
	RTLR(6,loc3);
	RTLIU(7);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 983, Current, 3, 0, 13932);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(983, Current, 13932);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = RTMS_EX_H("t1: test array of chars",23,1446457459);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5415, dtype))(Current, ur1x);
	RTHOOK(2);
	RTDBGAL(1, 0xF80001FE, 0, 0); /* loc1 */
	ui4_1 = ((EIF_INTEGER_32) 3L);
	{
		static EIF_TYPE_INDEX typarr0[] = {506,197,0xFFFF};
		EIF_TYPE typres0;
		static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
		
		typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, typarr0)));
		tr2 = RTLNSP2(typres0.id,0,ui4_1,sizeof(EIF_CHARACTER_8), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 3L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	*((EIF_CHARACTER_8 *)tr2+0) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) 'a';
	*((EIF_CHARACTER_8 *)tr2+1) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) 'b';
	*((EIF_CHARACTER_8 *)tr2+2) = (EIF_CHARACTER_8) (EIF_CHARACTER_8) 'c';
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(2569, Dtype(tr2)))(tr2).it_r;
	loc1 = (EIF_REFERENCE) tr1;
	RTHOOK(3);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	tb1 = '\0';
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2252, "item", loc1))(loc1, ui4_1x)).it_c1);
	if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) 'a')) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2269, "count", loc1))(loc1)).it_i4);
		tb1 = (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 3L));
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_CHECK) {
		RTHOOK(4);
		RTCT("Result", EX_CHECK);
		if (Result) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(5);
	uc1 = (EIF_CHARACTER_8) 'z';
	ui4_1 = ((EIF_INTEGER_32) 1L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2255, "put", loc1))(loc1, uc1x, ui4_1x);
	RTHOOK(6);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	tb1 = '\0';
	ui4_1 = ((EIF_INTEGER_32) 1L);
	tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2252, "item", loc1))(loc1, ui4_1x)).it_c1);
	if ((EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) 'z')) {
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2269, "count", loc1))(loc1)).it_i4);
		tb1 = (EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 3L));
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_CHECK) {
		RTHOOK(7);
		RTCT("Result", EX_CHECK);
		if (Result) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(8);
	uc1 = (EIF_CHARACTER_8) 'd';
	ui4_1 = ((EIF_INTEGER_32) 4L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(2638, "force", loc1))(loc1, uc1x, ui4_1x);
	RTHOOK(9);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	tb1 = '\0';
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2269, "count", loc1))(loc1)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 4L))) {
		ui4_1 = ((EIF_INTEGER_32) 4L);
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2252, "item", loc1))(loc1, ui4_1x)).it_c1);
		tb1 = (EIF_BOOLEAN)(tc1 == (EIF_CHARACTER_8) 'd');
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_CHECK) {
		RTHOOK(10);
		RTCT("Result", EX_CHECK);
		if (Result) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(11);
	RTDBGAL(2, 0xF8000222, 0, 0); /* loc2 */
	ui4_1 = ((EIF_INTEGER_32) 4L);
	{
		static EIF_TYPE_INDEX typarr0[] = {537,218,0xFFFF};
		EIF_TYPE typres0;
		static EIF_TYPE typcache0 = {INVALID_DTYPE, 0};
		
		typres0 = (typcache0.id != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(dftype, typarr0)));
		tr2 = RTLNSP2(typres0.id,0,ui4_1,sizeof(EIF_INTEGER_32), EIF_TRUE);
		RT_SPECIAL_COUNT(tr2) = 4L;
		memset(tr2, 0, RT_SPECIAL_VISIBLE_SIZE(tr2));
	}
	*((EIF_INTEGER_32 *)tr2+0) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	*((EIF_INTEGER_32 *)tr2+1) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	*((EIF_INTEGER_32 *)tr2+2) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 9L);
	*((EIF_INTEGER_32 *)tr2+3) = (EIF_INTEGER_32) ((EIF_INTEGER_32) 7L);
	tr1 = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE))  RTWF(2569, Dtype(tr2)))(tr2).it_r;
	loc2 = (EIF_REFERENCE) tr1;
	RTHOOK(12);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	RTHOOK(13);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(2163, "new_cursor", loc2))(loc2)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	tb1 = EIF_TRUE;
	for (;;) {
		if (!tb1) break;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3146, "after", loc3))(loc3)).it_b);
		if (tb2) break;
		RTHOOK(14);
		tb3 = '\0';
		ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3145, "item", loc3))(loc3)).it_i4);
		if ((EIF_BOOLEAN) (((EIF_INTEGER_32) 0L) <= ti4_1)) {
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(3145, "item", loc3))(loc3)).it_i4);
			tb3 = (EIF_BOOLEAN) (ti4_1 <= ((EIF_INTEGER_32) 9L));
		}
		tb1 = tb3;
		RTHOOK(15);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(3147, "forth", loc3))(loc3);
	}
	Result = (EIF_BOOLEAN) tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(16);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
#undef uc1
}

/* {TEST_EXAMPLE}.t2 */
EIF_TYPED_VALUE F984_7652 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "t2";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(5);
	RTLR(0,tr1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,loc1);
	RTLR(4,tr2);
	RTLIU(5);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	
	RTEAA(l_feature_name, 983, Current, 1, 0, 13933);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(983, Current, 13933);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = RTMS_EX_H("t2: test regular expression ^[abc]*$",36,1052249124);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5415, dtype))(Current, ur1x);
	RTHOOK(2);
	RTDBGAL(1, 0xF8000427, 0, 0); /* loc1 */
	tr1 = RTLN(eif_new_type(1063, 0x01).id);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(6550, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	tr1 = RTMS_EX_H("^[abc]*$",8,437413924);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6551, "compile", loc1))(loc1, ur1x);
	RTHOOK(4);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(6554, "is_compiled", loc1))(loc1)).it_b);
	if (tb2) {
		tr1 = RTMS_EX_H("aaabbbccc",9,574974307);
		ur1 = tr1;
		tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6560, "recognizes", loc1))(loc1, ur1x)).it_b);
		tb1 = tb2;
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_CHECK) {
		RTHOOK(5);
		RTCT("Result", EX_CHECK);
		if (Result) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(6);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	ui4_1 = ((EIF_INTEGER_32) 0L);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6569, "captured_substring", loc1))(loc1, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	tr2 = RTMS_EX_H("aaabbbccc",9,574974307);
	Result = (EIF_BOOLEAN) RTEQ(tr1, tr2);
	if (RTAL & CK_CHECK) {
		RTHOOK(7);
		RTCT("Result", EX_CHECK);
		if (Result) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(8);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	tr1 = RTMS_EX_H("aaabbbcccddd",12,1736911460);
	ur1 = tr1;
	tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6560, "recognizes", loc1))(loc1, ur1x)).it_b);
	Result = (EIF_BOOLEAN) (EIF_BOOLEAN) !tb1;
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(9);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
}

/* {TEST_EXAMPLE}.t3 */
EIF_TYPED_VALUE F984_7653 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "t3";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_BOOLEAN tb1;
	EIF_BOOLEAN tb2;
	EIF_BOOLEAN Result = ((EIF_BOOLEAN) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(6);
	RTLR(0,tr1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLR(3,loc1);
	RTLR(4,loc2);
	RTLR(5,loc3);
	RTLIU(6);
	RTLU (SK_BOOL, &Result);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 983, Current, 3, 0, 13934);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(983, Current, 13934);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = RTMS_EX_H("t3: test regular expression groups ((.)\\2) repeated letters",59,1896716659);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5415, dtype))(Current, ur1x);
	RTHOOK(2);
	RTDBGAL(1, 0xF8000427, 0, 0); /* loc1 */
	tr1 = RTLN(eif_new_type(1063, 0x01).id);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(6550, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	loc1 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	tr1 = RTMS_EX_H("((.)\\2)",7,1578245417);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6551, "compile", loc1))(loc1, ur1x);
	RTHOOK(4);
	tr1 = RTMS_EX_H("hello eiffelians",16,2110311283);
	ur1 = tr1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6571, "match", loc1))(loc1, ur1x);
	RTHOOK(5);
	RTDBGAL(2, 0xF80000E8, 0, 0); /* loc2 */
	ui4_1 = ((EIF_INTEGER_32) 0L);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6569, "captured_substring", loc1))(loc1, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(6554, "is_compiled", loc1))(loc1)).it_b);
	if (tb2) {
		tb1 = RTEQ(loc2, RTMS_EX_H("ll",2,27756));
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_CHECK) {
		RTHOOK(7);
		RTCT("Result", EX_CHECK);
		if (Result) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(8);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(6766, "next_match", loc1))(loc1);
	RTHOOK(9);
	RTDBGAL(2, 0xF80000E8, 0, 0); /* loc2 */
	ui4_1 = ((EIF_INTEGER_32) 0L);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6569, "captured_substring", loc1))(loc1, ui4_1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc2 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(10);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	tb1 = '\0';
	tb2 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(6554, "is_compiled", loc1))(loc1)).it_b);
	if (tb2) {
		tb1 = RTEQ(loc2, RTMS_EX_H("ff",2,26214));
	}
	Result = (EIF_BOOLEAN) tb1;
	if (RTAL & CK_CHECK) {
		RTHOOK(11);
		RTCT("Result", EX_CHECK);
		if (Result) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTHOOK(12);
	RTDBGAL(3, 0xF80000E8, 0, 0); /* loc3 */
	tr1 = RTMS_EX_H("<\\1\\>",5,1547199550);
	ur1 = tr1;
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(6579, "replace", loc1))(loc1, ur1x)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	loc3 = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(13);
	RTDBGAL(0, 0x04000000, 1,0); /* Result */
	tr1 = RTMS_EX_H("hello ei<ff>elians",18,1218039155);
	Result = (EIF_BOOLEAN) RTEQ(loc3, tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(14);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_BOOL; r.it_b = Result; return r; }
#undef up1
#undef ur1
#undef ui4_1
}

void EIF_Minit984 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
