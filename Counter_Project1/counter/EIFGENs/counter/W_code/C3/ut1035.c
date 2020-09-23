/*
 * Code for class UT_INTEGER_FORMATTER
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F1035_8356(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1035_8357(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1035_8358(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void F1035_8359(EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE);
extern void EIF_Minit1035(void);

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

/* {UT_INTEGER_FORMATTER}.put_decimal_integer */
void F1035_8356 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put_decimal_integer";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
	EIF_INTEGER_32 loc2 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	RTLU(SK_INT32, &loc2);
	
	RTEAA(l_feature_name, 1034, Current, 2, 2, 14632);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1034, Current, 14632);
	RTCC(arg1, 1034, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
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
	if ((EIF_BOOLEAN)(arg2 == ((EIF_INTEGER_32) 0L))) {
		RTHOOK(4);
		uc1 = (EIF_CHARACTER_8) '0';
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
	} else {
		RTHOOK(5);
		if ((EIF_BOOLEAN) (arg2 < ((EIF_INTEGER_32) 0L))) {
			RTHOOK(6);
			uc1 = (EIF_CHARACTER_8) '-';
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
			RTHOOK(7);
			RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
			loc2 = (EIF_INTEGER_32) (EIF_INTEGER_32) -(EIF_INTEGER_32) (arg2 + ((EIF_INTEGER_32) 1L));
			RTHOOK(8);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc2 / ((EIF_INTEGER_32) 10L));
			RTHOOK(9);
			switch ((EIF_INTEGER_32) (loc2 % ((EIF_INTEGER_32) 10L))) {
				case 0L:
					RTHOOK(10);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(11);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(12);
					uc1 = (EIF_CHARACTER_8) '1';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 1L:
					RTHOOK(13);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(14);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(15);
					uc1 = (EIF_CHARACTER_8) '2';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 2L:
					RTHOOK(16);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(17);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(18);
					uc1 = (EIF_CHARACTER_8) '3';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 3L:
					RTHOOK(19);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(20);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(21);
					uc1 = (EIF_CHARACTER_8) '4';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 4L:
					RTHOOK(22);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(23);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(24);
					uc1 = (EIF_CHARACTER_8) '5';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 5L:
					RTHOOK(25);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(26);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(27);
					uc1 = (EIF_CHARACTER_8) '6';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 6L:
					RTHOOK(28);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(29);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(30);
					uc1 = (EIF_CHARACTER_8) '7';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 7L:
					RTHOOK(31);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(32);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(33);
					uc1 = (EIF_CHARACTER_8) '8';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 8L:
					RTHOOK(34);
					if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
						RTHOOK(35);
						ur1 = RTCCL(arg1);
						ui4_1 = loc1;
						(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					}
					RTHOOK(36);
					uc1 = (EIF_CHARACTER_8) '9';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 9L:
					RTHOOK(37);
					ur1 = RTCCL(arg1);
					ui4_1 = (EIF_INTEGER_32) (loc1 + ((EIF_INTEGER_32) 1L));
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
					RTHOOK(38);
					uc1 = (EIF_CHARACTER_8) '0';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				default:
					RTEC(EN_WHEN);
			}
		} else {
			RTHOOK(39);
			RTDBGAL(2, 0x10000000, 1, 0); /* loc2 */
			loc2 = (EIF_INTEGER_32) arg2;
			RTHOOK(40);
			RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
			loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (loc2 / ((EIF_INTEGER_32) 10L));
			RTHOOK(41);
			if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
				RTHOOK(42);
				ur1 = RTCCL(arg1);
				ui4_1 = loc1;
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6013, dtype))(Current, ur1x, ui4_1x);
			}
			RTHOOK(43);
			switch ((EIF_INTEGER_32) (loc2 % ((EIF_INTEGER_32) 10L))) {
				case 0L:
					RTHOOK(44);
					uc1 = (EIF_CHARACTER_8) '0';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 1L:
					RTHOOK(45);
					uc1 = (EIF_CHARACTER_8) '1';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 2L:
					RTHOOK(46);
					uc1 = (EIF_CHARACTER_8) '2';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 3L:
					RTHOOK(47);
					uc1 = (EIF_CHARACTER_8) '3';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 4L:
					RTHOOK(48);
					uc1 = (EIF_CHARACTER_8) '4';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 5L:
					RTHOOK(49);
					uc1 = (EIF_CHARACTER_8) '5';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 6L:
					RTHOOK(50);
					uc1 = (EIF_CHARACTER_8) '6';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 7L:
					RTHOOK(51);
					uc1 = (EIF_CHARACTER_8) '7';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 8L:
					RTHOOK(52);
					uc1 = (EIF_CHARACTER_8) '8';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				case 9L:
					RTHOOK(53);
					uc1 = (EIF_CHARACTER_8) '9';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
					break;
				default:
					RTEC(EN_WHEN);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(54);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef ur1
#undef ui4_1
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_INTEGER_FORMATTER}.put_decimal_natural_32 */
void F1035_8357 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put_decimal_natural_32";
	RTEX;
	EIF_NATURAL_32 loc1 = (EIF_NATURAL_32) 0;
	EIF_NATURAL_32 loc2 = (EIF_NATURAL_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_n4
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE uu4_1x = {{0}, SK_UINT32};
#define uu4_1 uu4_1x.it_n4
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_n4 = * (EIF_NATURAL_32 *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_UINT32,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_UINT32, &loc1);
	RTLU(SK_UINT32, &loc2);
	
	RTEAA(l_feature_name, 1034, Current, 2, 2, 14633);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1034, Current, 14633);
	RTCC(arg1, 1034, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
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
	if ((EIF_BOOLEAN)(arg2 == (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L))) {
		RTHOOK(4);
		uc1 = (EIF_CHARACTER_8) '0';
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
	} else {
		RTHOOK(5);
		RTDBGAL(2, 0x38000000, 1, 0); /* loc2 */
		loc2 = (EIF_NATURAL_32) arg2;
		RTHOOK(6);
		RTDBGAL(1, 0x38000000, 1, 0); /* loc1 */
		loc1 = (EIF_NATURAL_32) (EIF_NATURAL_32) (loc2 / (EIF_NATURAL_32) ((EIF_INTEGER_32) 10L));
		RTHOOK(7);
		if ((EIF_BOOLEAN)(loc1 != (EIF_NATURAL_32) ((EIF_INTEGER_32) 0L))) {
			RTHOOK(8);
			ur1 = RTCCL(arg1);
			uu4_1 = loc1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6014, dtype))(Current, ur1x, uu4_1x);
		}
		RTHOOK(9);
		switch ((EIF_NATURAL_32) (loc2 % (EIF_NATURAL_32) ((EIF_INTEGER_32) 10L))) {
			case 0U:
				RTHOOK(10);
				uc1 = (EIF_CHARACTER_8) '0';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 1U:
				RTHOOK(11);
				uc1 = (EIF_CHARACTER_8) '1';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 2U:
				RTHOOK(12);
				uc1 = (EIF_CHARACTER_8) '2';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 3U:
				RTHOOK(13);
				uc1 = (EIF_CHARACTER_8) '3';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 4U:
				RTHOOK(14);
				uc1 = (EIF_CHARACTER_8) '4';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 5U:
				RTHOOK(15);
				uc1 = (EIF_CHARACTER_8) '5';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 6U:
				RTHOOK(16);
				uc1 = (EIF_CHARACTER_8) '6';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 7U:
				RTHOOK(17);
				uc1 = (EIF_CHARACTER_8) '7';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 8U:
				RTHOOK(18);
				uc1 = (EIF_CHARACTER_8) '8';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 9U:
				RTHOOK(19);
				uc1 = (EIF_CHARACTER_8) '9';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			default:
				RTEC(EN_WHEN);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(20);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef ur1
#undef uu4_1
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_INTEGER_FORMATTER}.put_octal_integer */
void F1035_8358 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x)
{
	GTCX
	char *l_feature_name = "put_octal_integer";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 1034, Current, 1, 2, 14634);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1034, Current, 14634);
	RTCC(arg1, 1034, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
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
		RTCT("an_int_positive", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	if ((EIF_BOOLEAN)(arg2 == ((EIF_INTEGER_32) 0L))) {
		RTHOOK(5);
		uc1 = (EIF_CHARACTER_8) '0';
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
	} else {
		RTHOOK(6);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 / ((EIF_INTEGER_32) 8L));
		RTHOOK(7);
		if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
			RTHOOK(8);
			ur1 = RTCCL(arg1);
			ui4_1 = loc1;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6015, dtype))(Current, ur1x, ui4_1x);
		}
		RTHOOK(9);
		switch ((EIF_INTEGER_32) (arg2 % ((EIF_INTEGER_32) 8L))) {
			case 0L:
				RTHOOK(10);
				uc1 = (EIF_CHARACTER_8) '0';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 1L:
				RTHOOK(11);
				uc1 = (EIF_CHARACTER_8) '1';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 2L:
				RTHOOK(12);
				uc1 = (EIF_CHARACTER_8) '2';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 3L:
				RTHOOK(13);
				uc1 = (EIF_CHARACTER_8) '3';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 4L:
				RTHOOK(14);
				uc1 = (EIF_CHARACTER_8) '4';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 5L:
				RTHOOK(15);
				uc1 = (EIF_CHARACTER_8) '5';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 6L:
				RTHOOK(16);
				uc1 = (EIF_CHARACTER_8) '6';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 7L:
				RTHOOK(17);
				uc1 = (EIF_CHARACTER_8) '7';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			default:
				RTEC(EN_WHEN);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(18);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(5);
	RTEE;
#undef ur1
#undef ui4_1
#undef uc1
#undef arg2
#undef arg1
}

/* {UT_INTEGER_FORMATTER}.put_hexadecimal_integer */
void F1035_8359 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x, EIF_TYPED_VALUE arg2x, EIF_TYPED_VALUE arg3x)
{
	GTCX
	char *l_feature_name = "put_hexadecimal_integer";
	RTEX;
	EIF_INTEGER_32 loc1 = (EIF_INTEGER_32) 0;
#define arg1 arg1x.it_r
#define arg2 arg2x.it_i4
#define arg3 arg3x.it_b
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_TYPED_VALUE ub1x = {{0}, SK_BOOL};
#define ub1 ub1x.it_b
	EIF_TYPED_VALUE uc1x = {{0}, SK_CHAR8};
#define uc1 uc1x.it_c1
	EIF_BOOLEAN tb1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg3x.type & SK_HEAD) == SK_REF) arg3x.it_b = * (EIF_BOOLEAN *) arg3x.it_r;
	if ((arg2x.type & SK_HEAD) == SK_REF) arg2x.it_i4 = * (EIF_INTEGER_32 *) arg2x.it_r;
	
	RTLI(3);
	RTLR(0,arg1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU(SK_REF,&arg1);
	RTLU(SK_INT32,&arg2);
	RTLU(SK_BOOL,&arg3);
	RTLU (SK_REF, &Current);
	RTLU(SK_INT32, &loc1);
	
	RTEAA(l_feature_name, 1034, Current, 1, 3, 14635);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1034, Current, 14635);
	RTCC(arg1, 1034, l_feature_name, 1, eif_new_type(1013, 0x01), 0x01);
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
		RTCT("an_int_positive", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg2 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(4);
	if ((EIF_BOOLEAN)(arg2 == ((EIF_INTEGER_32) 0L))) {
		RTHOOK(5);
		uc1 = (EIF_CHARACTER_8) '0';
		(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
	} else {
		RTHOOK(6);
		RTDBGAL(1, 0x10000000, 1, 0); /* loc1 */
		loc1 = (EIF_INTEGER_32) (EIF_INTEGER_32) (arg2 / ((EIF_INTEGER_32) 16L));
		RTHOOK(7);
		if ((EIF_BOOLEAN)(loc1 != ((EIF_INTEGER_32) 0L))) {
			RTHOOK(8);
			ur1 = RTCCL(arg1);
			ui4_1 = loc1;
			ub1 = arg3;
			(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTWF(6016, dtype))(Current, ur1x, ui4_1x, ub1x);
		}
		RTHOOK(9);
		switch ((EIF_INTEGER_32) (arg2 % ((EIF_INTEGER_32) 16L))) {
			case 0L:
				RTHOOK(10);
				uc1 = (EIF_CHARACTER_8) '0';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 1L:
				RTHOOK(11);
				uc1 = (EIF_CHARACTER_8) '1';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 2L:
				RTHOOK(12);
				uc1 = (EIF_CHARACTER_8) '2';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 3L:
				RTHOOK(13);
				uc1 = (EIF_CHARACTER_8) '3';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 4L:
				RTHOOK(14);
				uc1 = (EIF_CHARACTER_8) '4';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 5L:
				RTHOOK(15);
				uc1 = (EIF_CHARACTER_8) '5';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 6L:
				RTHOOK(16);
				uc1 = (EIF_CHARACTER_8) '6';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 7L:
				RTHOOK(17);
				uc1 = (EIF_CHARACTER_8) '7';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 8L:
				RTHOOK(18);
				uc1 = (EIF_CHARACTER_8) '8';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 9L:
				RTHOOK(19);
				uc1 = (EIF_CHARACTER_8) '9';
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				break;
			case 10L:
				RTHOOK(20);
				if (arg3) {
					RTHOOK(21);
					uc1 = (EIF_CHARACTER_8) 'A';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				} else {
					RTHOOK(22);
					uc1 = (EIF_CHARACTER_8) 'a';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				}
				break;
			case 11L:
				RTHOOK(23);
				if (arg3) {
					RTHOOK(24);
					uc1 = (EIF_CHARACTER_8) 'B';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				} else {
					RTHOOK(25);
					uc1 = (EIF_CHARACTER_8) 'b';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				}
				break;
			case 12L:
				RTHOOK(26);
				if (arg3) {
					RTHOOK(27);
					uc1 = (EIF_CHARACTER_8) 'C';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				} else {
					RTHOOK(28);
					uc1 = (EIF_CHARACTER_8) 'c';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				}
				break;
			case 13L:
				RTHOOK(29);
				if (arg3) {
					RTHOOK(30);
					uc1 = (EIF_CHARACTER_8) 'D';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				} else {
					RTHOOK(31);
					uc1 = (EIF_CHARACTER_8) 'd';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				}
				break;
			case 14L:
				RTHOOK(32);
				if (arg3) {
					RTHOOK(33);
					uc1 = (EIF_CHARACTER_8) 'E';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				} else {
					RTHOOK(34);
					uc1 = (EIF_CHARACTER_8) 'e';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				}
				break;
			case 15L:
				RTHOOK(35);
				if (arg3) {
					RTHOOK(36);
					uc1 = (EIF_CHARACTER_8) 'F';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				} else {
					RTHOOK(37);
					uc1 = (EIF_CHARACTER_8) 'f';
					(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(5113, "put_character", arg1))(arg1, uc1x);
				}
				break;
			default:
				RTEC(EN_WHEN);
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(38);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(6);
	RTEE;
#undef ur1
#undef ui4_1
#undef ub1
#undef uc1
#undef arg3
#undef arg2
#undef arg1
}

void EIF_Minit1035 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
