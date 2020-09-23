/*
 * Code for class UT_STRING_FORMATTER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1059_9105(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1059_9106(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1059_9107(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1059_9108(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1059_9109(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1059_9110(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1059_9111(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1059_9112(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1059_9113(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit1059(void);

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

/* {UT_STRING_FORMATTER}.eiffel_string_out */
EIF_TYPED_VALUE F1059_9105 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "eiffel_string_out";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {{0}, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLR(3,ur1);
	RTLR(4,ur2);
	RTLR(5,Current);
	RTLIU(6);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1058, Current, 0, 1, 15334);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15334);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(0, 0xF80000E8, 0,0); /* Result */
	tr1 = RTLN(eif_new_type(232, 0x01).id);
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(4768, "count", arg1));
	ui4_1 = ti4_1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4642, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	ur1 = RTCCL(Result);
	ur2 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6593, dtype))(Current, ur1x, ur2x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("eiffel_string_out_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ur2
#undef ui4_1
#undef arg1
}

/* {UT_STRING_FORMATTER}.quoted_eiffel_string_out */
EIF_TYPED_VALUE F1059_9106 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "quoted_eiffel_string_out";
	RTEX;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {{0}, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,Result);
	RTLR(3,ur1);
	RTLR(4,ur2);
	RTLR(5,Current);
	RTLIU(6);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1058, Current, 0, 1, 15335);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15335);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	RTDBGAL(0, 0xF80000E8, 0,0); /* Result */
	tr1 = RTLN(eif_new_type(232, 0x01).id);
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(4768, "count", arg1));
	ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 2L));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4642, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(2,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	ur1 = RTCCL(Result);
	ur2 = RTCCL(arg1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6594, dtype))(Current, ur1x, ur2x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(4);
		RTCT("quoted_eiffel_string_out_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ur2
#undef ui4_1
#undef arg1
}

/* {UT_STRING_FORMATTER}.left_padded_string_out */
EIF_TYPED_VALUE F1059_9107 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "left_padded_string_out";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_c1
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {{0}, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_c1 = * (EIF_CHARACTER_8 *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,tr2);
	RTLR(5,Result);
	RTLR(6,ur2);
	RTLIU(7);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_CHAR8,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 1058, Current, 1, 3, 15336);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15336);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_length_positive", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	ti4_1 = *(EIF_INTEGER_32 *)(arg1 + RTVA(4768, "count", arg1));
	loc1 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	if ((EIF_BOOLEAN) (arg2 >= loc1)) {
		RTHOOK(5);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		loc1 = (EIF_INTEGER_32) arg2;
	}
	RTHOOK(6);
	RTDBGAL(0, 0xF80000E8, 0,0); /* Result */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5750, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(6,1);
	ur1 = RTCCL(arg1);
	ui4_1 = loc1;
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5936, "new_empty_string", tr1))(tr1, ur1x, ui4_1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	Result = (EIF_REFERENCE) RTCCL(tr2);
	RTHOOK(7);
	ur1 = RTCCL(Result);
	ur2 = RTCCL(arg1);
	ui4_1 = arg2;
	uc1 = arg3;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6595, dtype))(Current, ur1x, ur2x, ui4_1x, uc1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(8);
		RTCT("left_padded_string_out_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
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
	RTLO(6);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef up1
#undef up2
#undef ur1
#undef ur2
#undef ui4_1
#undef uc1
#undef arg3
#undef arg2
#undef arg1
}

/* {UT_STRING_FORMATTER}.append_eiffel_string */
void F1059_9108 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "append_eiffel_string";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_CHARACTER_8 loc3 = (EIF_CHARACTER_8) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
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
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
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
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_CHAR8, &loc3);
	
	RTEAA(l_feature_name, 1058, Current, 3, 2, 15337);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15337);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTCC(arg2, 1058, l_feature_name, 2, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_target_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	ti4_1 = *(EIF_INTEGER_32 *)(arg2 + RTVA(4768, "count", arg2));
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(4);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(5);
		if ((EIF_BOOLEAN) (loc1 > loc2)) break;
		RTHOOK(6);
		RTDBGAL(3, 0x08000000, 1, 0); /* loc3 */
		ui4_1 = loc1;
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", arg2))(arg2, ui4_1x)).it_c1);
		loc3 = (EIF_CHARACTER_8) tc1;
		RTHOOK(7);
		switch (loc3) {
			case (EIF_CHARACTER_8) ' ':
			case (EIF_CHARACTER_8) '!':
			case (EIF_CHARACTER_8) '#':
			case (EIF_CHARACTER_8) '$':
			case (EIF_CHARACTER_8) '&':
			case (EIF_CHARACTER_8) '(':
			case (EIF_CHARACTER_8) ')':
			case (EIF_CHARACTER_8) '*':
			case (EIF_CHARACTER_8) '+':
			case (EIF_CHARACTER_8) ',':
			case (EIF_CHARACTER_8) '-':
			case (EIF_CHARACTER_8) '.':
			case (EIF_CHARACTER_8) '/':
			case (EIF_CHARACTER_8) '0':
			case (EIF_CHARACTER_8) '1':
			case (EIF_CHARACTER_8) '2':
			case (EIF_CHARACTER_8) '3':
			case (EIF_CHARACTER_8) '4':
			case (EIF_CHARACTER_8) '5':
			case (EIF_CHARACTER_8) '6':
			case (EIF_CHARACTER_8) '7':
			case (EIF_CHARACTER_8) '8':
			case (EIF_CHARACTER_8) '9':
			case (EIF_CHARACTER_8) ':':
			case (EIF_CHARACTER_8) ';':
			case (EIF_CHARACTER_8) '<':
			case (EIF_CHARACTER_8) '=':
			case (EIF_CHARACTER_8) '>':
			case (EIF_CHARACTER_8) '\?':
			case (EIF_CHARACTER_8) '@':
			case (EIF_CHARACTER_8) 'A':
			case (EIF_CHARACTER_8) 'B':
			case (EIF_CHARACTER_8) 'C':
			case (EIF_CHARACTER_8) 'D':
			case (EIF_CHARACTER_8) 'E':
			case (EIF_CHARACTER_8) 'F':
			case (EIF_CHARACTER_8) 'G':
			case (EIF_CHARACTER_8) 'H':
			case (EIF_CHARACTER_8) 'I':
			case (EIF_CHARACTER_8) 'J':
			case (EIF_CHARACTER_8) 'K':
			case (EIF_CHARACTER_8) 'L':
			case (EIF_CHARACTER_8) 'M':
			case (EIF_CHARACTER_8) 'N':
			case (EIF_CHARACTER_8) 'O':
			case (EIF_CHARACTER_8) 'P':
			case (EIF_CHARACTER_8) 'Q':
			case (EIF_CHARACTER_8) 'R':
			case (EIF_CHARACTER_8) 'S':
			case (EIF_CHARACTER_8) 'T':
			case (EIF_CHARACTER_8) 'U':
			case (EIF_CHARACTER_8) 'V':
			case (EIF_CHARACTER_8) 'W':
			case (EIF_CHARACTER_8) 'X':
			case (EIF_CHARACTER_8) 'Y':
			case (EIF_CHARACTER_8) 'Z':
			case (EIF_CHARACTER_8) '[':
			case (EIF_CHARACTER_8) '\\':
			case (EIF_CHARACTER_8) ']':
			case (EIF_CHARACTER_8) '^':
			case (EIF_CHARACTER_8) '_':
			case (EIF_CHARACTER_8) '`':
			case (EIF_CHARACTER_8) 'a':
			case (EIF_CHARACTER_8) 'b':
			case (EIF_CHARACTER_8) 'c':
			case (EIF_CHARACTER_8) 'd':
			case (EIF_CHARACTER_8) 'e':
			case (EIF_CHARACTER_8) 'f':
			case (EIF_CHARACTER_8) 'g':
			case (EIF_CHARACTER_8) 'h':
			case (EIF_CHARACTER_8) 'i':
			case (EIF_CHARACTER_8) 'j':
			case (EIF_CHARACTER_8) 'k':
			case (EIF_CHARACTER_8) 'l':
			case (EIF_CHARACTER_8) 'm':
			case (EIF_CHARACTER_8) 'n':
			case (EIF_CHARACTER_8) 'o':
			case (EIF_CHARACTER_8) 'p':
			case (EIF_CHARACTER_8) 'q':
			case (EIF_CHARACTER_8) 'r':
			case (EIF_CHARACTER_8) 's':
			case (EIF_CHARACTER_8) 't':
			case (EIF_CHARACTER_8) 'u':
			case (EIF_CHARACTER_8) 'v':
			case (EIF_CHARACTER_8) 'w':
			case (EIF_CHARACTER_8) 'x':
			case (EIF_CHARACTER_8) 'y':
			case (EIF_CHARACTER_8) 'z':
			case (EIF_CHARACTER_8) '{':
			case (EIF_CHARACTER_8) '|':
			case (EIF_CHARACTER_8) '}':
			case (EIF_CHARACTER_8) '~':
				RTHOOK(8);
				uc1 = loc3;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\010':
				RTHOOK(9);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(10);
				uc1 = (EIF_CHARACTER_8) 'B';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\014':
				RTHOOK(11);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(12);
				uc1 = (EIF_CHARACTER_8) 'F';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\012':
				RTHOOK(13);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(14);
				uc1 = (EIF_CHARACTER_8) 'N';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\015':
				RTHOOK(15);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(16);
				uc1 = (EIF_CHARACTER_8) 'R';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\011':
				RTHOOK(17);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(18);
				uc1 = (EIF_CHARACTER_8) 'T';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\000':
				RTHOOK(19);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(20);
				uc1 = (EIF_CHARACTER_8) 'U';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '%':
				RTHOOK(21);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(22);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\'':
				RTHOOK(23);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(24);
				uc1 = (EIF_CHARACTER_8) '\'';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\"':
				RTHOOK(25);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(26);
				uc1 = (EIF_CHARACTER_8) '\"';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
			default:
				RTHOOK(27);
				uc1 = (EIF_CHARACTER_8) '%';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(28);
				uc1 = (EIF_CHARACTER_8) '/';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				RTHOOK(29);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5823, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(29,1);
				ui4_1 = loc1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", arg2))(arg2, ui4_1x)).it_i4);
				ui4_1 = ti4_1;
				ur1 = RTCCL(arg1);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5916, "append_decimal_integer", tr1))(tr1, ui4_1x, ur1x);
				RTHOOK(30);
				uc1 = (EIF_CHARACTER_8) '/';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
				break;
		}
		RTHOOK(31);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		loc1++;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(32);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_STRING_FORMATTER}.append_quoted_eiffel_string */
void F1059_9109 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "append_quoted_eiffel_string";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {{0}, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,ur1);
	RTLR(3,ur2);
	RTLR(4,Current);
	RTLIU(5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1058, Current, 0, 2, 15338);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15338);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTCC(arg2, 1058, l_feature_name, 2, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_target_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	uc1 = (EIF_CHARACTER_8) '\"';
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
	RTHOOK(4);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6593, dtype))(Current, ur1x, ur2x);
	RTHOOK(5);
	uc1 = (EIF_CHARACTER_8) '\"';
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ur1
#undef ur2
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_STRING_FORMATTER}.append_left_padded_string */
void F1059_9110 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "append_left_padded_string";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_c1
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {{0}, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_c1 = * (EIF_CHARACTER_8 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(6);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,Current);
	RTLR(3,tr1);
	RTLR(4,ur1);
	RTLR(5,ur2);
	RTLIU(6);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_CHAR8,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1058, Current, 2, 4, 15339);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15339);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
	RTCC(arg2, 1058, l_feature_name, 2, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_target_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(3);
		RTCT("same_type", EX_PRE);
		tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5824, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
		RTNHOOK(3,1);
		ur1 = RTCCL(arg2);
		ur2 = RTCCL(arg1);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5018, "same_types", tr1))(tr1, ur1x, ur2x)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(4);
		RTCT("a_length_positive", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg3 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(5);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	ti4_1 = *(EIF_INTEGER_32 *)(arg2 + RTVA(4768, "count", arg2));
	loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg3 - ti4_1);
	RTHOOK(6);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(7);
		if ((EIF_BOOLEAN) (loc1 > loc2)) break;
		RTHOOK(8);
		uc1 = arg4;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
		RTHOOK(9);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		loc1++;
	}
	RTHOOK(10);
	ur1 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4823, "append_string", arg1))(arg1, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(11);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(8);
	RTEE;
#undef up1
#undef ur1
#undef ur2
#undef uc1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

/* {UT_STRING_FORMATTER}.put_eiffel_string */
void F1059_9111 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put_eiffel_string";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_CHARACTER_8 loc3 = (EIF_CHARACTER_8) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
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
	EIF_CHARACTER_8 tc1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLR(4,Current);
	RTLIU(5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_CHAR8, &loc3);
	
	RTEAA(l_feature_name, 1058, Current, 3, 2, 15340);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15340);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
	RTCC(arg2, 1058, l_feature_name, 2, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_file_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_file_is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5115, "is_open_write", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	ti4_1 = *(EIF_INTEGER_32 *)(arg2 + RTVA(4768, "count", arg2));
	loc2 = (EIF_INTEGER_32) ti4_1;
	RTHOOK(5);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(6);
		if ((EIF_BOOLEAN) (loc1 > loc2)) break;
		RTHOOK(7);
		RTDBGAL(3, 0x08000000, 1, 0); /* loc3 */
		ui4_1 = loc1;
		tc1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(2556, "item", arg2))(arg2, ui4_1x)).it_c1);
		loc3 = (EIF_CHARACTER_8) tc1;
		RTHOOK(8);
		switch (loc3) {
			case (EIF_CHARACTER_8) ' ':
			case (EIF_CHARACTER_8) '!':
			case (EIF_CHARACTER_8) '#':
			case (EIF_CHARACTER_8) '$':
			case (EIF_CHARACTER_8) '&':
			case (EIF_CHARACTER_8) '(':
			case (EIF_CHARACTER_8) ')':
			case (EIF_CHARACTER_8) '*':
			case (EIF_CHARACTER_8) '+':
			case (EIF_CHARACTER_8) ',':
			case (EIF_CHARACTER_8) '-':
			case (EIF_CHARACTER_8) '.':
			case (EIF_CHARACTER_8) '/':
			case (EIF_CHARACTER_8) '0':
			case (EIF_CHARACTER_8) '1':
			case (EIF_CHARACTER_8) '2':
			case (EIF_CHARACTER_8) '3':
			case (EIF_CHARACTER_8) '4':
			case (EIF_CHARACTER_8) '5':
			case (EIF_CHARACTER_8) '6':
			case (EIF_CHARACTER_8) '7':
			case (EIF_CHARACTER_8) '8':
			case (EIF_CHARACTER_8) '9':
			case (EIF_CHARACTER_8) ':':
			case (EIF_CHARACTER_8) ';':
			case (EIF_CHARACTER_8) '<':
			case (EIF_CHARACTER_8) '=':
			case (EIF_CHARACTER_8) '>':
			case (EIF_CHARACTER_8) '\?':
			case (EIF_CHARACTER_8) '@':
			case (EIF_CHARACTER_8) 'A':
			case (EIF_CHARACTER_8) 'B':
			case (EIF_CHARACTER_8) 'C':
			case (EIF_CHARACTER_8) 'D':
			case (EIF_CHARACTER_8) 'E':
			case (EIF_CHARACTER_8) 'F':
			case (EIF_CHARACTER_8) 'G':
			case (EIF_CHARACTER_8) 'H':
			case (EIF_CHARACTER_8) 'I':
			case (EIF_CHARACTER_8) 'J':
			case (EIF_CHARACTER_8) 'K':
			case (EIF_CHARACTER_8) 'L':
			case (EIF_CHARACTER_8) 'M':
			case (EIF_CHARACTER_8) 'N':
			case (EIF_CHARACTER_8) 'O':
			case (EIF_CHARACTER_8) 'P':
			case (EIF_CHARACTER_8) 'Q':
			case (EIF_CHARACTER_8) 'R':
			case (EIF_CHARACTER_8) 'S':
			case (EIF_CHARACTER_8) 'T':
			case (EIF_CHARACTER_8) 'U':
			case (EIF_CHARACTER_8) 'V':
			case (EIF_CHARACTER_8) 'W':
			case (EIF_CHARACTER_8) 'X':
			case (EIF_CHARACTER_8) 'Y':
			case (EIF_CHARACTER_8) 'Z':
			case (EIF_CHARACTER_8) '[':
			case (EIF_CHARACTER_8) '\\':
			case (EIF_CHARACTER_8) ']':
			case (EIF_CHARACTER_8) '^':
			case (EIF_CHARACTER_8) '_':
			case (EIF_CHARACTER_8) '`':
			case (EIF_CHARACTER_8) 'a':
			case (EIF_CHARACTER_8) 'b':
			case (EIF_CHARACTER_8) 'c':
			case (EIF_CHARACTER_8) 'd':
			case (EIF_CHARACTER_8) 'e':
			case (EIF_CHARACTER_8) 'f':
			case (EIF_CHARACTER_8) 'g':
			case (EIF_CHARACTER_8) 'h':
			case (EIF_CHARACTER_8) 'i':
			case (EIF_CHARACTER_8) 'j':
			case (EIF_CHARACTER_8) 'k':
			case (EIF_CHARACTER_8) 'l':
			case (EIF_CHARACTER_8) 'm':
			case (EIF_CHARACTER_8) 'n':
			case (EIF_CHARACTER_8) 'o':
			case (EIF_CHARACTER_8) 'p':
			case (EIF_CHARACTER_8) 'q':
			case (EIF_CHARACTER_8) 'r':
			case (EIF_CHARACTER_8) 's':
			case (EIF_CHARACTER_8) 't':
			case (EIF_CHARACTER_8) 'u':
			case (EIF_CHARACTER_8) 'v':
			case (EIF_CHARACTER_8) 'w':
			case (EIF_CHARACTER_8) 'x':
			case (EIF_CHARACTER_8) 'y':
			case (EIF_CHARACTER_8) 'z':
			case (EIF_CHARACTER_8) '{':
			case (EIF_CHARACTER_8) '|':
			case (EIF_CHARACTER_8) '}':
			case (EIF_CHARACTER_8) '~':
				RTHOOK(9);
				uc1 = loc3;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case (EIF_CHARACTER_8) '\010':
				RTHOOK(10);
				tr1 = RTMS_EX_H("%B",2,9538);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case (EIF_CHARACTER_8) '\014':
				RTHOOK(11);
				tr1 = RTMS_EX_H("%F",2,9542);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case (EIF_CHARACTER_8) '\012':
				RTHOOK(12);
				tr1 = RTMS_EX_H("%N",2,9550);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case (EIF_CHARACTER_8) '\015':
				RTHOOK(13);
				tr1 = RTMS_EX_H("%R",2,9554);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case (EIF_CHARACTER_8) '\011':
				RTHOOK(14);
				tr1 = RTMS_EX_H("%T",2,9556);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case (EIF_CHARACTER_8) '\000':
				RTHOOK(15);
				tr1 = RTMS_EX_H("%U",2,9557);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case (EIF_CHARACTER_8) '%':
				RTHOOK(16);
				tr1 = RTMS_EX_H("%%",2,9509);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case (EIF_CHARACTER_8) '\'':
				RTHOOK(17);
				tr1 = RTMS_EX_H("%\'",2,9511);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			case (EIF_CHARACTER_8) '\"':
				RTHOOK(18);
				tr1 = RTMS_EX_H("%\"",2,9506);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				break;
			default:
				RTHOOK(19);
				tr1 = RTMS_EX_H("%/",2,9519);
				ur1 = tr1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
				RTHOOK(20);
				tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5553, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
				RTNHOOK(20,1);
				ur1 = RTCCL(arg1);
				ui4_1 = loc1;
				ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4745, "item_code", arg2))(arg2, ui4_1x)).it_i4);
				ui4_1 = ti4_1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(6013, "put_decimal_integer", tr1))(tr1, ur1x, ui4_1x);
				RTHOOK(21);
				uc1 = (EIF_CHARACTER_8) '/';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
		}
		RTHOOK(22);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		loc1++;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(23);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_STRING_FORMATTER}.put_quoted_eiffel_string */
void F1059_9112 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put_quoted_eiffel_string";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ur2x = {{0}, SK_REF};
#define ur2 ur2x.it_r
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(5);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,ur1);
	RTLR(3,ur2);
	RTLR(4,Current);
	RTLIU(5);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1058, Current, 0, 2, 15341);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15341);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
	RTCC(arg2, 1058, l_feature_name, 2, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_file_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_file_is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5115, "is_open_write", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	uc1 = (EIF_CHARACTER_8) '\"';
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
	RTHOOK(5);
	ur1 = RTCCL(arg1);
	ur2 = RTCCL(arg2);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6596, dtype))(Current, ur1x, ur2x);
	RTHOOK(6);
	uc1 = (EIF_CHARACTER_8) '\"';
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(7);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ur1
#undef ur2
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_STRING_FORMATTER}.put_left_padded_string */
void F1059_9113 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x, EIF_TYPED_VALUE arg4x)
{
	GTCX
	char *l_feature_name = "put_left_padded_string";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_r
#define arg3 arg3x.it_i4
#define arg4 arg4x.it_c1
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg4x.type & SK_HEAD) == SK_REF) arg4x.it_c1 = * (EIF_CHARACTER_8 *) arg4x.it_r;
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_i4 = * (EIF_INTEGER_32 *) arg3x.it_r;
	
	RTLI(7);
	RTLR(0,arg1);
	RTLR(1,arg2);
	RTLR(2,loc3);
	RTLR(3,Current);
	RTLR(4,tr1);
	RTLR(5,ur1);
	RTLR(6,tr2);
	RTLIU(7);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_REF,&arg2);
	RTLU(SK_INT32,&arg3);
	RTLU(SK_CHAR8,&arg4);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	RTLU(SK_REF, &loc3);
	
	RTEAA(l_feature_name, 1058, Current, 3, 4, 15342);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1058, Current, 15342);
	RTCC(arg1, 1058, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
	RTCC(arg2, 1058, l_feature_name, 2, eif_new_type(232, 0x01), 0x01);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_file_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg1 != NULL), label_1);
		RTCK;
		RTHOOK(2);
		RTCT("a_file_is_open_write", EX_PRE);
		tb1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5115, "is_open_write", arg1))(arg1)).it_b);
		RTTE(tb1, label_1);
		RTCK;
		RTHOOK(3);
		RTCT("a_string_not_void", EX_PRE);
		RTTE((EIF_BOOLEAN)(arg2 != NULL), label_1);
		RTCK;
		RTHOOK(4);
		RTCT("a_length_positive", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg3 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(5);
	RTDBGAL(3, 0xF80000E8, 0, 0); /* loc3 */
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5750, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(5,1);
	ur1 = RTCCL(arg2);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5959, "as_string", tr1))(tr1, ur1x)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	loc3 = (EIF_REFERENCE) RTCCL(tr2);
	RTHOOK(6);
	RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
	ti4_1 = *(EIF_INTEGER_32 *)(loc3 + RTVA(4768, "count", loc3));
	loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg3 - ti4_1);
	RTHOOK(7);
	RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
	loc1 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	for (;;) {
		RTHOOK(8);
		if ((EIF_BOOLEAN) (loc1 > loc2)) break;
		RTHOOK(9);
		uc1 = arg4;
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
		RTHOOK(10);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		loc1++;
	}
	RTHOOK(11);
	ur1 = RTCCL(loc3);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(12);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(9);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef uc1
#undef arg4
#undef arg3
#undef arg2
#undef arg1
}

void EIF_Minit1059 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
