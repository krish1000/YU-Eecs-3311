/*
 * Code for class UT_CHARACTER_FORMATTER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1047_8899(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1047_8900(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void F1047_8901(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1047_8902(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1047_8903(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1047_8904(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit1047(void);

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

/* {UT_CHARACTER_FORMATTER}.eiffel_character_out */
EIF_TYPED_VALUE F1047_8899 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "eiffel_character_out";
	RTEX;
#define arg1 arg1x.it_c1
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_c1 = * (EIF_CHARACTER_8 *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLIU(4);
	RTLU (SK_REF, &Result);
	RTLU(SK_CHAR8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1046, Current, 0, 1, 15132);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1046, Current, 15132);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(0, 0xF80000E8, 0,0); /* Result */
	tr1 = RTLN(eif_new_type(232, 0x01).id);
	ui4_1 = ((EIF_INTEGER_32) 1L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4642, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	ur1 = RTCCL(Result);
	uc1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6408, dtype))(Current, ur1x, uc1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("eiffel_character_out_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uc1
#undef arg1
}

/* {UT_CHARACTER_FORMATTER}.quoted_eiffel_character_out */
EIF_TYPED_VALUE F1047_8900 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "quoted_eiffel_character_out";
	RTEX;
#define arg1 arg1x.it_c1
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_c1 = * (EIF_CHARACTER_8 *) arg1x.it_r;
	
	RTLI(4);
	RTLR(0,tr1);
	RTLR(1,Result);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLIU(4);
	RTLU (SK_REF, &Result);
	RTLU(SK_CHAR8,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1046, Current, 0, 1, 15133);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1046, Current, 15133);
	RTIV(Current, RTAL);
	RTHOOK(1);
	RTDBGAL(0, 0xF80000E8, 0,0); /* Result */
	tr1 = RTLN(eif_new_type(232, 0x01).id);
	ui4_1 = ((EIF_INTEGER_32) 3L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(4642, Dtype(tr1)))(tr1, ui4_1x);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(2);
	ur1 = RTCCL(Result);
	uc1 = arg1;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6409, dtype))(Current, ur1x, uc1x);
	if (RTAL & CK_ENSURE) {
		RTHOOK(3);
		RTCT("quoted_eiffel_character_out_not_void", EX_POST);
		if ((EIF_BOOLEAN)(Result != NULL)) {
			RTCK;
		} else {
			RTCF;
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(4);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef ui4_1
#undef uc1
#undef arg1
}

/* {UT_CHARACTER_FORMATTER}.append_eiffel_character */
void F1047_8901 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "append_eiffel_character";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_c1
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
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_c1 = * (EIF_CHARACTER_8 *) arg2x.it_r;
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,Current);
	RTLR(2,tr1);
	RTLR(3,ur1);
	RTLIU(4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_CHAR8,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1046, Current, 0, 2, 15134);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1046, Current, 15134);
	RTCC(arg1, 1046, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
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
	switch (arg2) {
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
			RTHOOK(3);
			uc1 = arg2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\010':
			RTHOOK(4);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(5);
			uc1 = (EIF_CHARACTER_8) 'B';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\014':
			RTHOOK(6);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(7);
			uc1 = (EIF_CHARACTER_8) 'F';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\012':
			RTHOOK(8);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(9);
			uc1 = (EIF_CHARACTER_8) 'N';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\015':
			RTHOOK(10);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(11);
			uc1 = (EIF_CHARACTER_8) 'R';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\011':
			RTHOOK(12);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(13);
			uc1 = (EIF_CHARACTER_8) 'T';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\000':
			RTHOOK(14);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(15);
			uc1 = (EIF_CHARACTER_8) 'U';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '%':
			RTHOOK(16);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(17);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\'':
			RTHOOK(18);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(19);
			uc1 = (EIF_CHARACTER_8) '\'';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\"':
			RTHOOK(20);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(21);
			uc1 = (EIF_CHARACTER_8) '\"';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
		default:
			RTHOOK(22);
			uc1 = (EIF_CHARACTER_8) '%';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(23);
			uc1 = (EIF_CHARACTER_8) '/';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			RTHOOK(24);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5823, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(24,1);
			ti4_1 = (EIF_INTEGER_32) (arg2);
			ui4_1 = ti4_1;
			ur1 = RTCCL(arg1);
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(5916, "append_decimal_integer", tr1))(tr1, ui4_1x, ur1x);
			RTHOOK(25);
			uc1 = (EIF_CHARACTER_8) '/';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
			break;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(26);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_CHARACTER_FORMATTER}.append_quoted_eiffel_character */
void F1047_8902 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "append_quoted_eiffel_character";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_c1
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_c1 = * (EIF_CHARACTER_8 *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_CHAR8,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1046, Current, 0, 2, 15135);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1046, Current, 15135);
	RTCC(arg1, 1046, l_feature_name, 1, eif_new_type(232, 0x01), 0x01);
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
	uc1 = (EIF_CHARACTER_8) '\'';
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
	RTHOOK(3);
	ur1 = RTCCL(arg1);
	uc1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6408, dtype))(Current, ur1x, uc1x);
	RTHOOK(4);
	uc1 = (EIF_CHARACTER_8) '\'';
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(4825, "append_character", arg1))(arg1, uc1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(5);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ur1
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_CHARACTER_FORMATTER}.put_eiffel_character */
void F1047_8903 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put_eiffel_character";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_c1
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
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_c1 = * (EIF_CHARACTER_8 *) arg2x.it_r;
	
	RTLI(4);
	RTLR(0,arg1);
	RTLR(1,tr1);
	RTLR(2,ur1);
	RTLR(3,Current);
	RTLIU(4);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_CHAR8,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1046, Current, 0, 2, 15136);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1046, Current, 15136);
	RTCC(arg1, 1046, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
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
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	switch (arg2) {
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
			RTHOOK(4);
			uc1 = arg2;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
			break;
		case (EIF_CHARACTER_8) '\010':
			RTHOOK(5);
			tr1 = RTMS_EX_H("%B",2,9538);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		case (EIF_CHARACTER_8) '\014':
			RTHOOK(6);
			tr1 = RTMS_EX_H("%F",2,9542);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		case (EIF_CHARACTER_8) '\012':
			RTHOOK(7);
			tr1 = RTMS_EX_H("%N",2,9550);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		case (EIF_CHARACTER_8) '\015':
			RTHOOK(8);
			tr1 = RTMS_EX_H("%R",2,9554);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		case (EIF_CHARACTER_8) '\011':
			RTHOOK(9);
			tr1 = RTMS_EX_H("%T",2,9556);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		case (EIF_CHARACTER_8) '\000':
			RTHOOK(10);
			tr1 = RTMS_EX_H("%U",2,9557);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		case (EIF_CHARACTER_8) '%':
			RTHOOK(11);
			tr1 = RTMS_EX_H("%%",2,9509);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		case (EIF_CHARACTER_8) '\'':
			RTHOOK(12);
			tr1 = RTMS_EX_H("%\'",2,9511);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		case (EIF_CHARACTER_8) '\"':
			RTHOOK(13);
			tr1 = RTMS_EX_H("%\"",2,9506);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			break;
		default:
			RTHOOK(14);
			tr1 = RTMS_EX_H("%/",2,9519);
			ur1 = tr1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5751, "put_string", arg1))(arg1, ur1x);
			RTHOOK(15);
			tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5553, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
			RTNHOOK(15,1);
			ur1 = RTCCL(arg1);
			ti4_1 = (EIF_INTEGER_32) (arg2);
			ui4_1 = ti4_1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(6013, "put_decimal_integer", tr1))(tr1, ur1x, ui4_1x);
			RTHOOK(16);
			uc1 = (EIF_CHARACTER_8) '/';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
			break;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(17);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef up1
#undef ur1
#undef ui4_1
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_CHARACTER_FORMATTER}.put_quoted_eiffel_character */
void F1047_8904 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put_quoted_eiffel_character";
	RTEX;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_c1
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_c1 = * (EIF_CHARACTER_8 *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_CHAR8,&arg2);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1046, Current, 0, 2, 15137);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1046, Current, 15137);
	RTCC(arg1, 1046, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
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
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(3);
	uc1 = (EIF_CHARACTER_8) '\'';
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
	RTHOOK(4);
	ur1 = RTCCL(arg1);
	uc1 = arg2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6410, dtype))(Current, ur1x, uc1x);
	RTHOOK(5);
	uc1 = (EIF_CHARACTER_8) '\'';
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(4);
	RTEE;
#undef ur1
#undef uc1
#undef arg2
#undef arg1
}

void EIF_Minit1047 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
