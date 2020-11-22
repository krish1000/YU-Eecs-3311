note
	description: "Summary description for {STATES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	STATES

feature -- attributes
	select_value : INTEGER -- used for SETUP_SELECT, default val is 1


	state_name : STRING
	types_string_format : ARRAY[STRING]

	model : ETF_MODEL
		local
			mda : ETF_MODEL_ACCESS
		do
			Result := mda.m
		end

feature -- deferred features
	execute deferred end
--	setup_s(setup_select: INTEGER) deferred end

	output : STRING deferred end

feature -- implemented features
	setup_s(setup_select: INTEGER)
		do
			select_value := setup_select
		end

feature -- Queries
	get_type : STRING
		do
			create Result.make_empty
			Result.append (types_string_format[select_value])
		end

	get_attributes : ATTRIBUTE_VALUES deferred end
feature {NONE} -- Implementation

invariant
	invariant_clause: True -- Your invariant here

end
