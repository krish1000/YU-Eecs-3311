class
 	 ETF_TYPE_CONSTRAINTS
feature -- list of enumeratd constants
	enum_items : HASH_TABLE[INTEGER, STRING]
		do
			create Result.make (10)
		end

	enum_items_inverse : HASH_TABLE[STRING, INTEGER_32]
		do
			create Result.make (10)
		end
feature -- query on declarations of event parameters
	evt_param_types_table : HASH_TABLE[HASH_TABLE[ETF_PARAM_TYPE, STRING], STRING]
		local
			new_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			deposit_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			withdraw_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
			transfer_param_types: HASH_TABLE[ETF_PARAM_TYPE, STRING]
		do
			create Result.make (10)
			Result.compare_objects
			create new_param_types.make (10)
			new_param_types.compare_objects
			new_param_types.extend (create {ETF_STR_PARAM}, "id")
			Result.extend (new_param_types, "new")
			create deposit_param_types.make (10)
			deposit_param_types.compare_objects
			deposit_param_types.extend (create {ETF_STR_PARAM}, "id")
			deposit_param_types.extend (create {ETF_INT_PARAM}, "amount")
			Result.extend (deposit_param_types, "deposit")
			create withdraw_param_types.make (10)
			withdraw_param_types.compare_objects
			withdraw_param_types.extend (create {ETF_STR_PARAM}, "id")
			withdraw_param_types.extend (create {ETF_INT_PARAM}, "amount")
			Result.extend (withdraw_param_types, "withdraw")
			create transfer_param_types.make (10)
			transfer_param_types.compare_objects
			transfer_param_types.extend (create {ETF_STR_PARAM}, "id1")
			transfer_param_types.extend (create {ETF_STR_PARAM}, "id2")
			transfer_param_types.extend (create {ETF_INT_PARAM}, "amount")
			Result.extend (transfer_param_types, "transfer")
		end
feature -- query on declarations of event parameters
	evt_param_types_list : HASH_TABLE[LINKED_LIST[ETF_PARAM_TYPE], STRING]
		local
			new_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			deposit_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			withdraw_param_types: LINKED_LIST[ETF_PARAM_TYPE]
			transfer_param_types: LINKED_LIST[ETF_PARAM_TYPE]
		do
			create Result.make (10)
			Result.compare_objects
			create new_param_types.make
			new_param_types.compare_objects
			new_param_types.extend (create {ETF_STR_PARAM})
			Result.extend (new_param_types, "new")
			create deposit_param_types.make
			deposit_param_types.compare_objects
			deposit_param_types.extend (create {ETF_STR_PARAM})
			deposit_param_types.extend (create {ETF_INT_PARAM})
			Result.extend (deposit_param_types, "deposit")
			create withdraw_param_types.make
			withdraw_param_types.compare_objects
			withdraw_param_types.extend (create {ETF_STR_PARAM})
			withdraw_param_types.extend (create {ETF_INT_PARAM})
			Result.extend (withdraw_param_types, "withdraw")
			create transfer_param_types.make
			transfer_param_types.compare_objects
			transfer_param_types.extend (create {ETF_STR_PARAM})
			transfer_param_types.extend (create {ETF_STR_PARAM})
			transfer_param_types.extend (create {ETF_INT_PARAM})
			Result.extend (transfer_param_types, "transfer")
		end
feature -- comments for contracts
	comment(etf_s: STRING): BOOLEAN
		do
			Result := TRUE
		end
end