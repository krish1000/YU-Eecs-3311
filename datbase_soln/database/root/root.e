note
	description: "[
		This class represents the combination of test cases of units (classes) related to Lab1.
	]"
	author: "Jinho Hwang and Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	ROOT

inherit

	ES_SUITE -- testing via ESpec

create
	make

feature {NONE} -- Initialization

	make
			-- Run app
		do
			add_test (create {STARTER_1}.make)
			add_test (create {STARTER_2}.make)

			add_test (create {DBT_MODEL2}.make)
			add_test (create {DBT_MODEL4}.make)
			add_test (create {DBT_MODEL6}.make)
			add_test (create {DBT_MODEL8}.make)
			add_test (create {DBT_MODEL9}.make)
			add_test (create {DBT_MODEL10}.make)
			add_test (create {DBT_MODEL11}.make)
			add_test (create {DBT_MODEL12}.make)

			add_test (create {DBT_INSERT5}.make)
			add_test (create {DBT_INSERT6}.make)
			add_test (create {DBT_INSERT7}.make)
			add_test (create {DBT_INSERT8}.make)
			add_test (create {DBT_INSERT9}.make)

			add_test (create {DBT_COUNT2}.make)
			add_test (create {DBT_COUNT3}.make)
			add_test (create {DBT_COUNT4}.make)

			add_test (create {DBT_SEARCH3}.make)
			add_test (create {DBT_SEARCH4}.make)
			add_test (create {DBT_SEARCH5}.make)

			add_test (create {DBT_DELETE3}.make)
			add_test (create {DBT_DELETE4}.make)
			add_test (create {DBT_DELETE5}.make)
			add_test (create {DBT_DELETE6}.make)
			add_test (create {DBT_DELETE7}.make)
			add_test (create {DBT_DELETE8}.make)

			add_test (create {DBT_HAS_KEY3}.make)
			add_test (create {DBT_HAS_KEY4}.make)
			add_test (create {DBT_HAS_KEY5}.make)
			add_test (create {DBT_HAS_KEY6}.make)
			add_test (create {DBT_HAS_KEY7}.make)

			add_test (create {DBT_OVERRIDE5}.make)
			add_test (create {DBT_OVERRIDE6}.make)
			add_test (create {DBT_OVERRIDE7}.make)
			add_test (create {DBT_OVERRIDE8}.make)
			add_test (create {DBT_OVERRIDE9}.make)
			add_test (create {DBT_OVERRIDE10}.make)

			add_test (create {DBT_COMMON_KEY_DB5}.make)
			add_test (create {DBT_COMMON_KEY_DB6}.make)
			add_test (create {DBT_COMMON_KEY_DB7}.make)
			add_test (create {DBT_COMMON_KEY_DB8}.make)
			add_test (create {DBT_COMMON_KEY_DB9}.make)

			add_test (create {DBT_INTERVAL_IMAGE4}.make)
			add_test (create {DBT_INTERVAL_IMAGE5}.make)
			add_test (create {DBT_INTERVAL_IMAGE6}.make)
			add_test (create {DBT_INTERVAL_IMAGE7}.make)

			add_test (create {DBT_INNER_JOIN5}.make)
			add_test (create {DBT_INNER_JOIN6}.make)
			add_test (create {DBT_INNER_JOIN7}.make)
			add_test (create {DBT_INNER_JOIN8}.make)

			add_test (create {DBT_ITERATOR2}.make)
			add_test (create {DBT_ITERATOR3}.make)
			add_test (create {DBT_ITERATOR4}.make)
			add_test (create {DBT_ITERATOR6}.make)
			add_test (create {DBT_ITERATOR7}.make)
			add_test (create {DBT_ITERATOR8}.make)

			show_browser
			run_espec
		end

end
