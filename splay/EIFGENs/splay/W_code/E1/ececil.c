#include "eif_eiffel.h"
#include "eif_rout_obj.h"
#include "eaddress.h"

#ifdef __cplusplus
extern "C" {
#endif

	/* TRACING_HANDLER per_thread_trace */
void A32_36 (EIF_REFERENCE Current, EIF_INTEGER_32 arg1, EIF_POINTER arg2, EIF_POINTER arg3, EIF_INTEGER_32 arg4, EIF_BOOLEAN arg5)
{
	EIF_TYPED_VALUE u [5];
	GTCX
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(864, "per_thread_trace", Current))(Current, ((u [0].type = SK_INT32), (u [0].it_i4 = arg1), u [0]), ((u [1].type = SK_POINTER), (u [1].it_p = arg2), u [1]), ((u [2].type = SK_POINTER), (u [2].it_p = arg3), u [2]), ((u [3].type = SK_INT32), (u [3].it_i4 = arg4), u [3]), ((u [4].type = SK_BOOL), (u [4].it_b = arg5), u [4]));
}

	/* RT_DBG_CALL_RECORD inline-agent#1 of record_fields */
void _A139_159_2 ( void(*f_ptr) (EIF_REFERENCE, EIF_TYPED_VALUE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) F139_7136)(closed [1].it_r, open [1]);
}

	/* MISMATCH_INFORMATION wipe_out */
void A159_97 (EIF_REFERENCE Current)
{
	GTCX
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(2226, "wipe_out", Current))(Current);
}

	/* MISMATCH_INFORMATION internal_put */
void A159_161 (EIF_REFERENCE Current, EIF_REFERENCE arg1, EIF_POINTER arg2)
{
	EIF_TYPED_VALUE u [2];
	GTCX
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(3070, "internal_put", Current))(Current, ((u [0].type = SK_REF), (u [0].it_r = arg1), u [0]), ((u [1].type = SK_POINTER), (u [1].it_p = arg2), u [1]));
}

	/* MISMATCH_INFORMATION set_string_versions */
void A159_162 (EIF_REFERENCE Current, EIF_POINTER arg1, EIF_POINTER arg2)
{
	EIF_TYPED_VALUE u [2];
	GTCX
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE, EIF_TYPED_VALUE)) RTVF(3071, "set_string_versions", Current))(Current, ((u [0].type = SK_POINTER), (u [0].it_p = arg1), u [0]), ((u [1].type = SK_POINTER), (u [1].it_p = arg2), u [1]));
}

	/* STARTER_TESTS splay_relink4 */
EIF_TYPED_VALUE _A969_147 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5183, "splay_relink4", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_relink5 */
EIF_TYPED_VALUE _A969_146 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5182, "splay_relink5", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_is_empty1 */
EIF_TYPED_VALUE _A969_144 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5180, "splay_is_empty1", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_count1 */
EIF_TYPED_VALUE _A969_142 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5178, "splay_count1", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_count2 */
EIF_TYPED_VALUE _A969_141 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5177, "splay_count2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_count3 */
EIF_TYPED_VALUE _A969_140 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5176, "splay_count3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_has_node1 */
EIF_TYPED_VALUE _A969_138 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5174, "splay_has_node1", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_has_node2 */
EIF_TYPED_VALUE _A969_137 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5173, "splay_has_node2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_has_node3 */
EIF_TYPED_VALUE _A969_136 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5172, "splay_has_node3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_has_node4 */
EIF_TYPED_VALUE _A969_135 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5171, "splay_has_node4", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_has1 */
EIF_TYPED_VALUE _A969_133 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5169, "splay_has1", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_has2 */
EIF_TYPED_VALUE _A969_132 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5168, "splay_has2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_has3 */
EIF_TYPED_VALUE _A969_131 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5167, "splay_has3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS splay_has4 */
EIF_TYPED_VALUE _A969_130 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5166, "splay_has4", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_is_same_tree1 */
EIF_TYPED_VALUE _A969_128 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5164, "tn_is_same_tree1", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_is_same_tree2 */
EIF_TYPED_VALUE _A969_127 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5163, "tn_is_same_tree2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_is_same_tree3 */
EIF_TYPED_VALUE _A969_126 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5162, "tn_is_same_tree3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_is_same_tree4 */
EIF_TYPED_VALUE _A969_125 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5161, "tn_is_same_tree4", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_nodes3 */
EIF_TYPED_VALUE _A969_123 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5159, "tn_nodes3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_has_node2 */
EIF_TYPED_VALUE _A969_121 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5157, "tn_has_node2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_has_node3 */
EIF_TYPED_VALUE _A969_120 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5156, "tn_has_node3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_has2 */
EIF_TYPED_VALUE _A969_118 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5154, "tn_has2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_has3 */
EIF_TYPED_VALUE _A969_117 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5153, "tn_has3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_value_search2 */
EIF_TYPED_VALUE _A969_115 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5151, "tn_value_search2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_value_search3 */
EIF_TYPED_VALUE _A969_114 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5150, "tn_value_search3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_tree_search3 */
EIF_TYPED_VALUE _A969_112 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5148, "tn_tree_search3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_tree_search4 */
EIF_TYPED_VALUE _A969_111 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5147, "tn_tree_search4", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_tree_search5 */
EIF_TYPED_VALUE _A969_110 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5146, "tn_tree_search5", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_tree_search6 */
EIF_TYPED_VALUE _A969_109 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5145, "tn_tree_search6", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_tree_search7 */
EIF_TYPED_VALUE _A969_108 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5144, "tn_tree_search7", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_max_node2 */
EIF_TYPED_VALUE _A969_106 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5142, "tn_max_node2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_min_node2 */
EIF_TYPED_VALUE _A969_104 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5140, "tn_min_node2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_count2 */
EIF_TYPED_VALUE _A969_102 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5138, "tn_count2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_count3 */
EIF_TYPED_VALUE _A969_101 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5137, "tn_count3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_insert_right1 */
void _A969_99 ( void(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(5135, "tn_insert_right1", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_insert_right4 */
EIF_TYPED_VALUE _A969_98 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5134, "tn_insert_right4", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_insert_left1 */
void _A969_96 ( void(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTVF(5132, "tn_insert_left1", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_insert_left4 */
EIF_TYPED_VALUE _A969_95 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5131, "tn_insert_left4", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_set_to_internal1 */
EIF_TYPED_VALUE _A969_93 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5129, "tn_set_to_internal1", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_make_internal3 */
EIF_TYPED_VALUE _A969_91 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5127, "tn_make_internal3", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_make_external2 */
EIF_TYPED_VALUE _A969_89 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5125, "tn_make_external2", closed [1].it_r))(closed [1].it_r);
}

	/* STARTER_TESTS tn_make_external3 */
EIF_TYPED_VALUE _A969_88 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5124, "tn_make_external3", closed [1].it_r))(closed [1].it_r);
}

	/* EXAMPLE_TESTS splay_delete1 */
EIF_TYPED_VALUE _A970_96 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5193, "splay_delete1", closed [1].it_r))(closed [1].it_r);
}

	/* EXAMPLE_TESTS splay_delete2 */
EIF_TYPED_VALUE _A970_97 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5194, "splay_delete2", closed [1].it_r))(closed [1].it_r);
}

	/* EXAMPLE_TESTS splay_insert1 */
EIF_TYPED_VALUE _A970_94 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5191, "splay_insert1", closed [1].it_r))(closed [1].it_r);
}

	/* EXAMPLE_TESTS splay_search1 */
EIF_TYPED_VALUE _A970_92 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5189, "splay_search1", closed [1].it_r))(closed [1].it_r);
}

	/* EXAMPLE_TESTS splay_splay1 */
EIF_TYPED_VALUE _A970_90 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5187, "splay_splay1", closed [1].it_r))(closed [1].it_r);
}

	/* EXAMPLE_TESTS splay_rotate1 */
EIF_TYPED_VALUE _A970_88 ( EIF_TYPED_VALUE(*f_ptr) (EIF_REFERENCE), EIF_TYPED_VALUE * closed, EIF_TYPED_VALUE * open)
{
	GTCX
	return (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(5185, "splay_rotate1", closed [1].it_r))(closed [1].it_r);
}


static fnptr feif_address_table[] = {
(fnptr)0,
(fnptr)A32_36,
(fnptr)A159_97,
(fnptr)A159_161,
(fnptr)A159_162,
};

fnptr *egc_address_table_init = feif_address_table;



#ifdef __cplusplus
}
#endif
