--note
--	description: "[
--		A database storing key-value entries.
--		Abstractly, a database is viewed as a mathematical relation where:
--		  - Domain is the set of search keys.
--		  - Range is the set of data values.
--		Informally, one may also consider a relation as a set of key-value pairs or mappings.
--	]"
--	author: "Jinho Hwang"
--	date: "$Date$"
--	revision: "$Revision$"

--deferred class
--	DATABASE[K -> COMPARABLE, V -> attached ANY]

---- spec: comment out ITERABLE declaration

---- In order to make DATABASE and all its descendants iterable,
---- we must inherit it from ITERABLE[...] where ... is the correct instantiation of G.
---- Remove comments from the inherit clause below to start implementing the iterator pattern.
--inherit
--	ITERABLE[TUPLE[key: K; value: V]]

--feature -- Abstraction Function

--	model: REL[K, V]
--			-- Return the `Current` database as a relation between keys and data values.
--			-- This is the so-called `abstraction function`, used to specify mathematical contracts.
--			-- There are two ways for understanding each member in the relation:
--			--    1. A tuple `[k, v]` that maps from a key `k` to a value `v`.
--			--    2. An instance of`PAIR[K, V]`, where K is the type of key and V the type of value.
--		deferred
--			-- Implementation of this abstraction function is deferred to its descendant classes, i.e.,
--			-- TREE_DB and LINEAR_DB.
--		ensure
--			unchanged_count:
--				-- This postcondition is given to you. Do not modify.
--				count = old count
--			unchanged_implementation:
--				-- TODO: Complete this postcondition.
--				-- Hint: All the key-value entry before calling `model` should match
--				--       all the key-value entry after calling `model`.
--				across
--					old Current.deep_twin is i_item
--				all
--					has_key(i_item.key)
--					and
--					search(i_item.key) ~ i_item.value
--				end
--			all_key_value_tuples_exist_as_model_pairs:
--				-- TODO: Complete this postcondition.
--				-- Hints: 1. First implement the current DATABSE so that it is iteratble.
--				--           2. Each key-value entry in the `Current` database exists as a corresponding pair in the `Result` relation.
--				across
--					Current is i_item
--				all
--					Result.has (create {PAIR[K, V]}.make(i_item.key, i_item.value))
--				end

--			all_model_pairs_exist_as_key_value_tuples:
--				-- TODO: Complete this postcondition.
--				-- Hints: 1. `Result` relation is already iterable.
--				--           2. Each key-value pair in the `Result` relation exists as a corresponding entry in `Current` database.
--				across
--					Result is i_pair
--				all
--					attached search(i_pair.first) as a_search_result and then
--					a_search_result ~ i_pair.second
--				end
--		end

---- spec: comment out ITERABLE declaration

---- Remove comments from the inherit clause below to start implementing the iterator pattern.
--feature -- Iteration Cursor

--	new_cursor: ITERATION_CURSOR [TUPLE[key: K; value: V]]
--			-- Returns a cursor to iterate through database.
--		deferred
--			-- Implementation of this abstraction function is deferred to its descendant classes, i.e.,
--			-- TREE_DB and LINEAR_DB.
--		end

--feature -- Deferred Routines

--	count: INTEGER
--			-- Returns the number of mappings in the current database.
--		deferred
--			-- Implementation of this routine is deferred to its descendant classes.
--		ensure
--			nothing_changed:
--				-- TODO: Complete this postcondition.
--				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
--				model ~ (old model.deep_twin)
--			consistent_counts:
--				-- TODO: Compelete this postcondition.
--				-- Hint: The result should be consistent with the model's size.
--				Result ~ model.count
--		end

--	has_key(p_key: K): BOOLEAN
--			-- Returns true if a mapping with key `p_key` exists. False otherwise.
--		deferred
--			-- Implementation of this routine is deferred to its descendant classes.
--		ensure
--			nothing_changed:
--				-- TODO: Complete this postcondition.
--				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
--				model ~ (old model.deep_twin)
--			key_exists:
--				-- TODO: Complete this postcondition.
--				-- Hint: Result is true if and only if `p_key` is a valid domain value of the model.
--				Result = model.domain.has (p_key)
--		end

--	search(p_key: K): detachable V
--			-- Returns the matching value given a key `p_key`.
--			-- If `p_key` does not exist, return `Void`.
--			-- Note. There is no precondition for this query.
--		deferred
--			-- Implementation of this routine is deferred to its descendant classes.
--		ensure
--			nothing_changed:
--				-- TODO: Complete this postcondition.
--				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
--				model ~ (old model.deep_twin)
--			case_of_key_found:
--				-- TODO: Complete this postcondition.
--				-- Hint: `p_key` being a valid domain value of the model means that
--				--				the model relation uniquely maps`p_key` to the result.
--				model.domain.has (p_key)
--				implies
--				attached Result as a_res and then
--				model.domain_restricted_by (p_key).range.has (a_res)
--				and
--				model.domain_restricted_by (p_key).range.count = 1
--		end

--	insert(p_key: K; p_value: V)
--			-- Inserts a new mapping [`p_key`, `p_value`] into the database.
--		require
--			no_previous_entry:
--				-- TODO: Complete this precondition.
--				-- This precondition is inherited to `TREE_DB` and `LINEAR_DB`.
--				-- Hint: Check whether the current database has an entry with key `p_key`.
--				not has_key(p_key)
--		deferred
--			-- Implementation of this routine is deferred to its descendant classes.
--		ensure
--			entry_added:
--				-- TODO: Complete this postcondition.
--				-- Hint: How do you compare the models before and after insertion?
--				model ~ (old model.deep_twin).extended ([p_key, p_value])
--		end

--	delete(p_key: K)
--			-- Deletes the mapping whose key is `p_key`.
--			-- This precondition is inherited to `TREE_DB` and `LINEAR_DB`.
--		require
--			existing_entry:
--				-- TODO: Complete this precondition.
--				-- Hint: The model already has an entry with key `p_key`.
--				has_key(p_key)
--		deferred
--		ensure
--			entry_deleted:
--				-- TODO: Complete this postcondition.
--				-- Hint: How do you compare the models before and after deletion?
--				model ~ (old model.deep_twin).domain_subtracted_by (p_key)
--		end

--feature -- Basic

--	override(p_key: K; p_value: V)
--			-- Updates the entry with key `p_key` so that `p_key` maps to `p_value`.
--			-- If `p_key` is not an existing key, then add a new entry [ `p_key`, `p_value` ].
--		do
--			-- TODO: Complete this implementation.

--			if
--				has_key(p_key)
--			then
--				delete(p_key)
--			end
--			insert(p_key, p_value)
--		ensure
--			overriden_result:
--				-- TODO: Complete this postcondition.
--				-- Hint: How do you compare the models before and after overriding?
--				model ~ (old model.deep_twin).overriden_by ([p_key, p_value])
--		end

--	common_key_db (p_second: DATABASE[K, V]): DATABASE[K, V]
--			-- Returns an intersection of `Current` and `p_second`.
--			-- That is, a key-value entry is in `Result` if and only if
--			-- it is in both `Current` and `p_second` (compared by objects, not references).
--			-- The dynamic type of `Result` follows the dynamic type of `Current`.
--		do
--			-- TODO: Complete this implementation.
--			-- Hint: The result database should have the union of the entries
--			--       with same keys and values from current database and the 'p_second'.
--			Result := (Current.deep_twin)

--			across
--				Current is i_item
--			loop
--				if
--					not p_second.has_key(i_item.key)
--					or else
--					attached p_second.search(i_item.key) as a_seond_value and then
--					attached search(i_item.key) as a_value and then
--					a_seond_value /~ a_value
--				then
--					Result.delete(i_item.key)
--				end
--			end
--		ensure
--			nothing_changed:
--				-- TOFIX:
--				-- TODO: Complete this postcondition.
--				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
--				model ~ (old model.deep_twin)
--			result_has_common_key_mappings_from_current_database_and_p_second:
--				-- TOFIX:
--				-- TODO: Complete this postcondition.
--				-- Hint: How should the result database look like compared with `Current` and `p_second`?
--				(old model.deep_twin).intersected (p_second.model) ~ Result.model
--		end

--feature -- Intermediate

--	interval_image (p_first, p_finish: K): LIST[V]
--			-- Returns a list of values mapped from
--			-- keys which are within the interval of [`p_first`, `p_finish`).
--			-- Note. `[` means inclusive, `)` means exclusive.
--			-- e.g., [1, 100) denotes a range of 99 numbers.
--		require
--			p_first_smaller_than_p_finish:
--				-- This precondition is given to you. Do not modify it.
--				p_first < p_finish
--		do
--			-- TODO: Complete this implementation.

--			create {ARRAYED_LIST[V]} Result.make (count)
--			Result.compare_objects

--			across
--				Current is i_item
--			loop
--				if
--					p_first <= i_item.key and then
--					i_item.key < p_finish
--				then
--					Result.force(i_item.value)
--				end
--			end
--		ensure
--			nothing_changed:
--				-- TODO: Complete this postcondition.
--				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
--				model ~ (old model.deep_twin)

--			correct_values_are_included_in_result:
--				-- TODO: Complete this postcondition.
--				-- Hint: The value of each pair in the model, whose key is within the interval, is included in the result.
--				across
--					model is i_pair
--				all
--					(
--						p_first <= i_pair.first
--						and
--						i_pair.first < p_finish
--					)
--					implies
--					(
--						Result.has(i_pair.second)
--					)
--				end

--			result_includes_correct_values_only:
--				-- TODO: Complete this postcondition.
--				-- Hint: Every value in the result has its associated key, within the interval, in model.
--				across
--					Result is i_value
--				all
--					across
--						model.domain is i_key
--					some
--						p_first <= i_key and i_key < p_finish
--						and
--						model.image (i_key).has (i_value)
--					end
--				end
--		end


--feature -- Advanced

--	inner_join (other: DATABASE[K, STRING]): REL[K, PAIR[V, STRING]]
-- 			-- Returns a relation consisting of mappings [k, (v, s)],
-- 			-- where [k, v] is a valid entry in the `Current` database,
-- 			-- and [k, s] is a valid entry in the `other` database.
--		do
--			-- TODO: Complete this implementation.

--			create Result.make_empty

--			across
--				Current is i_current_item
--			loop
--				across
--					other is i_other_item
--				loop
--					if
--						i_current_item.key ~ i_other_item.key
--					then
--						Result.extend ([i_current_item.key, create {PAIR[V, STRING]}.make (i_current_item.value, i_other_item.value)])
--					end
--				end
--			end
--		ensure
--			nothing_changed:
--				-- TODO: Complete this postcondition.
--				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.s
--				model ~ (old model.deep_twin)

--			result_exists_in_current_database:
--				-- TODO: Complete this postcondition.
--				-- Hint: Each entry [k, (v, s)] in the result relation should have
--				--			[k, v] a valid entry in the `Current` database.
--				across
--					Result is i_item
--				all
--					has_key(i_item.first)
--					and
--					attached search(i_item.first) as a_search_result
--					and then
--					i_item.second.first ~ a_search_result
--				end

--			result_exists_in_other_database:
--				-- TODO: Complete this postcondition.
--				-- Hint: Each entry [k, (v, s)] in the result relation should have
--				--			[k, s] a valid entry in the `other` database.
--				across
--					Result is i_item
--				all
--					other.has_key (i_item.first)
--					and
--					attached other.search(i_item.first) as a_search_result
--					and then
--					i_item.second.second ~ a_search_result
--				end

--			common_key_mapping_exists_in_result:
--				-- TODO: Complete this postcondition.
--				-- Hint: For each common key `k` between the `Current` and `other` databases,
--				-- 		 	the result relation has an entry whose
--				-- 				+ key is `k`
--				-- 				+ value is a pair consisting of `k`'s associated values in `Current` and `other`.
--				across
--					Current is i_current_item
--				all
--					across
--						other is i_other_item
--					all
--						i_current_item.key ~ i_other_item.key
--						implies
--						(
--							attached Result.domain_restricted_by (i_current_item.key) as i_res
--							and then
--							(
--								i_res.count = 1
--								and then
--								i_res.domain.has(i_current_item.key)
--								and then
--								i_res.range.has(create {PAIR[V, STRING]}.make (i_current_item.value, i_other_item.value))
--							)
--						)
--					end
--				end
--		end

--end
note
	description: "[
		A database storing key-value entries.
		Abstractly, a database is viewed as a mathematical relation where:
		  - Domain is the set of search keys.
		  - Range is the set of data values.
		Informally, one may also consider a relation as a set of key-value pairs or mappings.
	]"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	DATABASE[K -> COMPARABLE, V -> attached ANY]


-- In order to make DATABASE and all its descendants iterable,
-- we must inherit it from ITERABLE[...] where ... is the correct instantiation of G.
-- TODO: Remove comments from the inherit clause below to start implementing the iterator pattern.
inherit
	ITERABLE[TUPLE[key: K; value: V]]

feature -- Abstraction Function

	model: REL[K, V]
			-- Return the `Current` database as a relation between keys and data values.
			-- This is the so-called `abstraction function`, used to specify mathematical contracts.
			-- There are two ways for understanding each member in the relation:
			--    1. A tuple `[k, v]` that maps from a key `k` to a value `v`.
			--    2. An instance of`PAIR[K, V]`, where K is the type of key and V the type of value.
		deferred
			-- Implementation of this abstraction function is deferred to its descendant classes, i.e.,
			-- TREE_DB and LINEAR_DB.
		ensure
			unchanged_count:
				-- This postcondition is given to you. Do not modify.
				count = old count
			unchanged_implementation:
				-- TODO: Complete this postcondition.
				-- Hint: All the key-value entry before calling `model` should match
				--       all the key-value entry after calling `model`.
				-- ********* CHANGED `2020-10-03`
--				across  -- this also works
--					1 |..| count is l_i
--				all
--					(old model.as_array.deep_twin)[l_i] ~ model.as_array[l_i]
--				end
				(old model.deep_twin) ~ model -- still passes

			all_key_value_tuples_exist_as_model_pairs:
				-- TODO: Complete this postcondition.
				-- Hints: 1. First implement the current DATABSE so that it is iteratble.
				--           2. Each key-value entry in the `Current` database exists as a corresponding pair in the `Result` relation.
				--
				across
					Current is l_entry
				all
					model.has (l_entry)
				end
			all_model_pairs_exist_as_key_value_tuples:
				-- TODO: Complete this postcondition.
				-- Hints: 1. `Result` relation is already iterable.
				--           2. Each key-value pair in the `Result` relation exists as a corresponding entry in `Current` database.
				across
					Result is l_tuple
				all
					Current.has_key (l_tuple.first) and then
					Current.search (l_tuple.first) ~ l_tuple.second
				end
		end

-- Remove comments from the inherit clause below to start implementing the iterator pattern.
feature -- Iteration Cursor

	new_cursor: ITERATION_CURSOR [TUPLE[key: K; value: V]]
			-- Returns a cursor to iterate through database.
		deferred
			-- Implementation of this abstraction function is deferred to its descendant classes, i.e.,
			-- TREE_DB and LINEAR_DB.
		end

feature -- Deferred Routines

	count: INTEGER
			-- Returns the number of mappings in the current database.
		deferred
			-- Implementation of this routine is deferred to its descendant classes.
		ensure
			nothing_changed:
				-- TODO: Complete this postcondition.
				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
				(old model.deep_twin) ~ model -- UNSURE IF THIS IS CORRECT CHANGED `2020-10-03`
			consistent_counts:
				-- TODO: Compelete this postcondition.
				-- Hint: The result should be consistent with the model's size.
			 model.count = model.as_array.count -- UNSURE IF THIS IS CORRECT CHANGED `2020-10-03`
		end

	has_key(p_key: K): BOOLEAN
			-- Returns true if a mapping with key `p_key` exists. False otherwise.
		deferred
			-- Implementation of this routine is deferred to its descendant classes.
		ensure
			nothing_changed:
				-- TODO: Complete this postcondition.
				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
				(old model.deep_twin) ~ model -- UNSURE IF THIS IS CORRECT CHANGED `2020-10-03`
			key_exists:
				-- TODO: Complete this postcondition.
				-- Hint: Result is true if and only if `p_key` is a valid domain value of the model.
				-- CHANGED `2020-10-03`
--				Result implies -- works as well
--				across
--					model.as_array is l_tuple
--				some
--					l_tuple[1] ~ p_key
--				end
				Result implies model.domain_restricted_by (p_key).count > 0
		end

	search(p_key: K): detachable V
			-- Returns the matching value given a key `p_key`.
			-- If `p_key` does not exist, return `Void`.
			-- Note. There is no precondition for this query.
		deferred
			-- Implementation of this routine is deferred to its descendant classes.
		ensure
			nothing_changed:
				-- TODO: Complete this postcondition.
				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
				(old model.deep_twin) ~ model -- UNSURE IF THIS IS CORRECT CHANGED `2020-10-03`
			case_of_key_found:
				-- TODO: Complete this postcondition.
				-- Hint: `p_key` being a valid domain value of the model means that
				--				the model relation uniquely maps`p_key` to the result.
				-- CHANGED `2020-10-03`
				attached Result and model.domain_restricted_by (p_key).count > 0 implies
					(across
						model.as_array is l_tuple
					some
						if l_tuple[1] ~ p_key then
							l_tuple[2] ~ Result
						else
							False
						end
					end)
		end

	insert(p_key: K; p_value: V)
			-- Inserts a new mapping [`p_key`, `p_value`] into the database.
		require
			no_previous_entry:
				-- TODO: Complete this precondition.
				-- This precondition is inherited to `TREE_DB` and `LINEAR_DB`.
				-- Hint: Check whether the current database has an entry with key `p_key`.
				-- CHANGED `2020-10-03`
				not has_key (p_key) -- hopefully this is allowed
		deferred
			-- Implementation of this routine is deferred to its descendant classes.
		ensure
			entry_added:
				-- TODO: Complete this postcondition.
				-- Hint: How do you compare the models before and after insertion?
				-- CHANGED `2020-10-03`


--				(old model.count) + 1 = model.count and then
--				model.has([p_key, p_value]) and then
--					across
--						(old model.as_array.deep_twin) is l_tuple
--					all
--						model.has (l_tuple)
--					end
				-- possibly NOOOOOOT Complete
				(old model.deep_twin) ~ model.domain_subtracted_by (p_key) and then
				model.has ([p_key,p_value])
		end

	delete(p_key: K)
			-- Deletes the mapping whose key is `p_key`.
			-- This precondition is inherited to `TREE_DB` and `LINEAR_DB`.
		require
			existing_entry:
				-- TODO: Complete this precondition.
				-- Hint: The model already has an entry with key `p_key`.
				-- CHANGED `2020-10-03`
				has_key(p_key) -- hopefullyallowed, if i have time make across loop and go thru tuples
		deferred
			-- Implementation of this routine is deferred to its descendant classes.
		ensure
			entry_deleted:
				-- TODO: Complete this postcondition.
				-- Hint: How do you compare the models before and after deletion?
				-- CHANGED `2020-10-03`
--				(old model.count) - 1 = model.count and then -- works
--				not has_key(p_key) and then -- hopefully allowed
--					across -- nothing else changed
--						model.as_array is l_tuple
--					all
--						(old model.deep_twin).has (l_tuple)
--					end
				model ~ (old model.deep_twin).domain_subtracted_by (p_key)

		end

feature -- Basic

	override(p_key: K; p_value: V)
			-- Updates the entry with key `p_key` so that `p_key` maps to `p_value`.
			-- If `p_key` is not an existing key, then add a new entry [ `p_key`, `p_value` ].
		do
			-- TODO: Complete this implementation.
			-- 2020-10-05 `CHANGED`

			if has_key (p_key) then -- if key exists, override
--				if attached search(p_key) as p_value1 then
--					model.remove_item([p_key, p_value1]) -- remove the previous mapping in model
					delete(p_key) -- removal of key
					insert(p_key, p_value)

--				end
			else
				insert(p_key, p_value) -- not working for 2 post cond, whenever key doesnt exist
			end

		ensure
			overriden_result:
				-- TODO: Complete this postcondition.
				-- Hint: How do you compare the models before and after overriding?
--				if model.has ([p_key, p_value]) then
--					if (old model.deep_twin).domain_restricted_by(p_key).count = 0 then -- insert new
--						if
--							(old model.deep_twin).count + 1 = model.count
--						then
--							across
--								(old model.deep_twin).as_array is l_tuple
--							all
--								model.has (l_tuple)
--							end -- if this passes then nothing else changed,
--							--and the final new tuple is the one inserted (we checked this via first if statement)
--						else
--							False
--						end
--					else -- override the key with the new val
--						if
--							(old model.deep_twin).count = model.count -- nothing new added
--						then
--							across
--								(old model.deep_twin).as_array is l_tuple
--							all
--								if model.has (l_tuple) then
--									True
--								elseif l_tuple[1] ~ p_key then -- overriden key
--									True
--								else
--									False
--								end
--							end -- if this passes then nothing else changed,
--							--and the final new tuple is the one inserted (we checked this via first if statement)
--						else
--							False
--						end
--					end
--				else
--					False -- key is not inside, on both cases there should exist that key with that entry
--				end -- THIS WORKS
				model ~ (old model.deep_twin).overriden_by ([p_key, p_value]) -- shorter version
		end

	common_key_db (p_second: DATABASE[K, V]): DATABASE[K, V]
			-- Returns an intersection of `Current` and `p_second`.
			-- That is, a key-value entry is in `Result` if and only if
			-- it is in both `Current` and `p_second` (compared by objects, not references).
			-- The dynamic type of `Result` follows the dynamic type of `Current`.
--		local -- I ADDED THIS `2020-10-08`
--			return_db1: DATABASE[K,V]
		do
			-- TODO: Complete this implementation.
			-- Hint: The result database should have the union of the entries
			--       with same keys and values from current database and the 'p_second'. CHANGED `2020-10-08`
--			create {TREE_DB[K, V]} Result.make  -- given
--			return_db1 := Current.deep_twin -- this way we have same dynamic type of Current
			Result := Current.deep_twin -- this way we have same dynamic type of Current
			across
				Current is l_tuple
			loop
				if p_second.has_key (l_tuple.key) and then
					l_tuple.value ~ p_second.search (l_tuple.key)
				then
					-- do nothing (keep it)
				else
					Result.delete (l_tuple.key)
				end
			end

--			Result := return_db1
		ensure
			nothing_changed:
				-- TODO: Complete this postcondition.
				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
				(old model.deep_twin) ~ model -- UNSURE IF THIS IS CORRECT CHANGED `2020-10-08`
			result_has_common_key_mappings_from_current_database_and_p_second:
				-- TODO: Complete this postcondition.
				-- Hint: How should the result database look like compared with `Current` and `p_second`?
--				across
--					Result is l_tuple1
--				all
--					Current.has_key (l_tuple1.key) and p_second.has_key (l_tuple1.key)
--					and then
--					Current.search (l_tuple1.key) ~ p_second.search (l_tuple1.key)
--					and then
--					l_tuple1.value ~ Current.search (l_tuple1.key)
--				end -- DOESNT ACCOUNT FOR BAD IMPLEMENTATION WHERE RESULT IS EMPTY SET*** FIX THIS
				Result.model.is_subset_of(model) and Result.model.is_subset_of(p_second.model) and then
				across
					model is l_pair
				all
					if p_second.model.has (l_pair) then
						Result.model.has(l_pair)
					else
						not Result.model.has (l_pair)
					end
				end
		end

feature -- Intermediate

	interval_image (p_first, p_finish: K): LIST[V]
			-- Returns a list of values mapped from
			-- keys which are within the interval of [`p_first`, `p_finish`).
			-- Note. `[` means inclusive, `)` means exclusive.
			-- e.g., [1, 100) denotes a range of 99 numbers.
		require
			p_first_smaller_than_p_finish:
				-- This precondition is given to you. Do not modify it.
				p_first < p_finish
		do
			-- TODO: Complete this implementation.
			create {ARRAYED_LIST[V]} Result.make (1)
			across
				Current is l_tuple
			loop
				if
					p_first <= l_tuple.key
				 	and then
				 	l_tuple.key < p_finish
				then
					Result.extend(l_tuple.value)
				end -- else do nothing
			end
		ensure
			nothing_changed:
				-- TODO: Complete this postcondition.
				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.
				(old model.deep_twin) ~ model -- UNSURE IF THIS IS CORRECT CHANGED `2020-10-08`

			correct_values_are_included_in_result:
				-- TODO: Complete this postcondition.
				-- Hint: The value of each pair in the model, whose key is within the interval, is included in the result.
				across -- works
					model is l_pair
				all
					if
						p_first <= l_pair.first
					 	and then
					 	l_pair.first < p_finish
					then
						Result.has(l_pair.second)
					else
						not Result.has(l_pair.second) -- shouldn't exist
					end
				end
			result_includes_correct_values_only:
				-- TODO: Complete this postcondition.
				-- Hint: Every value in the result has its associated key, within the interval, in model.
				-- not sure how to do this properly*************8 2020-10-08
				-- maybe O(N^2)? nested for loop for some exist, (meaning 1) key has that value
				across
					Result is l_value
				all

					across
						model is l_pair
					some
						if l_pair.second ~ l_value then -- atleast 1 value should be the same
							-- key has to be within interval
							p_first <= l_pair.first
						 	and then
						 	l_pair.first < p_finish
						else
							False -- not a key with that value
						end
					end

				end
		end


feature -- Advanced

	inner_join (other: DATABASE[K, STRING]): REL[K, PAIR[V, STRING]]
 			-- Returns a relation consisting of mappings [k, (v, s)],
 			-- where [k, v] is a valid entry in the `Current` database,
 			-- and [k, s] is a valid entry in the `other` database. CHANGED `2020-10-08`
 		local -- I MADE THISSSS
 			tuple1: TUPLE[K, PAIR[V, STRING]]
 			pair1: PAIR[V, STRING]
		do
			-- TODO: Complete this implementation.
			create Result.make_empty -- given
--			create pair1.make (g: G, h: H)
			create tuple1
			across
				Current is l_tuple
			loop
				if other.has_key (l_tuple.key) then -- put into relation
					if attached other.search (l_tuple.key) as l_string then
--						pair1 := [l_tuple.value, l_string] -- this works as well
						create pair1.make (l_tuple.value, l_string)
						tuple1 := [l_tuple.key, pair1]
						Result.extend(tuple1)
					end

				end
			end
		ensure
			nothing_changed:
				-- TODO: Complete this postcondition.
				-- Hint: Abstract views of the database as relations before and after the routine call should be the same.s
				(old model.deep_twin) ~ model -- UNSURE IF THIS IS CORRECT CHANGED `2020-10-08`

			result_exists_in_current_database:
				-- TODO: Complete this postcondition.
				-- Hint: Each entry [k, (v, s)] in the result relation should have
				--			[k, v] a valid entry in the `Current` database.
				across
					Result is l_pair
				all
					if Current.has_key (l_pair.first) then
						Current.search (l_pair.first) ~ l_pair.second.first -- l_pair.second.first is Pair[V]
					else
						False
					end
				end

			result_exists_in_other_database:
				-- TODO: Complete this postcondition.
				-- Hint: Each entry [k, (v, s)] in the result relation should have
				--			[k, s] a valid entry in the `other` database.
				across
					Result is l_pair
				all
					if other.has_key (l_pair.first) then
						other.search (l_pair.first) ~ l_pair.second.second -- l_pair.second.second is Pair[String]
					else
						False -- key doesnt exist so false
					end
				end

			common_key_mapping_exists_in_result:
				-- TODO: Complete this postcondition.
				-- Hint: For each common key `k` between the `Current` and `other` databases,
				-- 		 	the result relation has an entry whose
				-- 				+ key is `k`
				-- 				+ value is a pair consisting of `k`'s associated values in `Current` and `other`.
--				across
--					Current is l_tuple
--				all
--					if
--						other.has_key (l_tuple.key)
--					then
--						if attached other.search (l_tuple.key) as l_string then
----							Result.has(create {PAIR}.make_from_tuple ([l_tuple.key, create {PAIR}.make_from_tuple([l_tuple.value, l_string])]))
----							Result.has(create {PAIR}.make(l_tuple.key, create {PAIR}.make (l_tuple.value, l_string)))
--							True -- CANT FIGRUE OTUTOUTTTU
--						else
--							False
--						end
--					else
--						-- if it doesnt exist in other then it shouldnt exist in result
--						True

--					end
--				end
				--cant figure out
				across
					other.model.domain_restricted (Current.model.domain) is l_pair
				all
					if attached Current.search (l_pair.first) as l_value
					 and attached other.search (l_pair.first) as l_string
					then
						Result.has (create {PAIR[K,PAIR[V, STRING]]}.make (l_pair.first, create {PAIR[V, STRING]}.make (l_value, l_string)))
					else --REL[K, PAIR[V, STRING]]
						False
					end


				end

		end

end
