/*
 * Code for class RX_PCRE_ESCAPE_CONSTANTS
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F1044_8477(EIF_REFERENCE, EIF_TYPED_VALUE);
extern EIF_TYPED_VALUE F1044_8478(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8479(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8480(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8481(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8482(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8483(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8484(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8485(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8486(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8487(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8488(EIF_REFERENCE);
extern EIF_TYPED_VALUE F1044_8489(EIF_REFERENCE);
extern void EIF_Minit1044(void);

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

/* {RX_PCRE_ESCAPE_CONSTANTS}.escape_character */
EIF_TYPED_VALUE F1044_8477 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "escape_character";
	RTEX;
#define arg1 arg1x.it_i4
	EIF_INTEGER_32 ti4_1;
	EIF_INTEGER_32 Result = ((EIF_INTEGER_32) 0);
	
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	if ((arg1x.type & SK_HEAD) == SK_REF) arg1x.it_i4 = * (EIF_INTEGER_32 *) arg1x.it_r;
	
	RTLI(1);
	RTLR(0,Current);
	RTLIU(1);
	RTLU (SK_INT32, &Result);
	RTLU(SK_INT32,&arg1);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 1043, Current, 0, 1, 14761);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(1043, Current, 14761);
	RTIV(Current, RTAL);
	if ((RTAL & CK_REQUIRE) || RTAC) {
		RTHOOK(1);
		RTCT("a_code_positive", EX_PRE);
		RTTE((EIF_BOOLEAN) (arg1 >= ((EIF_INTEGER_32) 0L)), label_1);
		RTCK;
		RTJB;
label_1:
		RTCF;
	}
body:;
	RTHOOK(2);
	switch (arg1) {
		case 58L:
			RTHOOK(3);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5632, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 59L:
			RTHOOK(4);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5633, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 60L:
			RTHOOK(5);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5629, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 61L:
			RTHOOK(6);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5631, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 62L:
			RTHOOK(7);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5630, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 63L:
			RTHOOK(8);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5638, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 64L:
			RTHOOK(9);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5648, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 65L:
			RTHOOK(10);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6136, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 66L:
			RTHOOK(11);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6137, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 68L:
			RTHOOK(12);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6139, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 83L:
			RTHOOK(13);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6141, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 87L:
			RTHOOK(14);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6143, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 90L:
			RTHOOK(15);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6145, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 91L:
			RTHOOK(16);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5643, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 92L:
			RTHOOK(17);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5625, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 93L:
			RTHOOK(18);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5644, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 94L:
			RTHOOK(19);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5626, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 95L:
			RTHOOK(20);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5627, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 96L:
			RTHOOK(21);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5628, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 97L:
			RTHOOK(22);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			Result = (EIF_INTEGER_32) ((EIF_INTEGER_32) 7L);
			break;
		case 98L:
			RTHOOK(23);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6138, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 100L:
			RTHOOK(24);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6140, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 101L:
			RTHOOK(25);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			Result = (EIF_INTEGER_32) ((EIF_INTEGER_32) 27L);
			break;
		case 102L:
			RTHOOK(26);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5655, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 110L:
			RTHOOK(27);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5653, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 114L:
			RTHOOK(28);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5654, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 115L:
			RTHOOK(29);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6142, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 116L:
			RTHOOK(30);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(5652, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) ti4_1;
			break;
		case 119L:
			RTHOOK(31);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6144, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		case 122L:
			RTHOOK(32);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(6146, dtype))(Current)).it_i4);
			Result = (EIF_INTEGER_32) (EIF_INTEGER_32) -ti4_1;
			break;
		default:
			RTHOOK(33);
			RTDBGAL(0, 0x10000000, 1,0); /* Result */
			Result = (EIF_INTEGER_32) ((EIF_INTEGER_32) 0L);
			break;
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(34);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(3);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_INT32; r.it_i4 = Result; return r; }
#undef arg1
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_uca */
EIF_TYPED_VALUE F1044_8478 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 1L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_ucb */
EIF_TYPED_VALUE F1044_8479 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 2L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_lcb */
EIF_TYPED_VALUE F1044_8480 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 3L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_ucd */
EIF_TYPED_VALUE F1044_8481 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 4L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_lcd */
EIF_TYPED_VALUE F1044_8482 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 5L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_ucs */
EIF_TYPED_VALUE F1044_8483 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 6L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_lcs */
EIF_TYPED_VALUE F1044_8484 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 7L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_ucw */
EIF_TYPED_VALUE F1044_8485 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 8L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_lcw */
EIF_TYPED_VALUE F1044_8486 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 9L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_ucz */
EIF_TYPED_VALUE F1044_8487 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 10L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_lcz */
EIF_TYPED_VALUE F1044_8488 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 11L);
	return r;
}

/* {RX_PCRE_ESCAPE_CONSTANTS}.esc_ref */
EIF_TYPED_VALUE F1044_8489 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_INT32;
	r.it_i4 = (EIF_INTEGER_32) ((EIF_INTEGER_32) 12L);
	return r;
}

void EIF_Minit1044 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
