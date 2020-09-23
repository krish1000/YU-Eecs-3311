note
	description: "[
	  			 This class allows you to generate RANDOM_NUMBERs for use in other classes.
				 ]"
	author: "JSO, Revised by AB"
	date: "Aug 8, 05"
	revision: "$1.0$"

class RANDOM_NUMBER

inherit
	RANDOM
		rename
			forth as generate,
			real_item as next_value
		export
			 {NONE} generate
		end

create
	make_real_random,
	make_repeatable,
	make_with_seed

feature -- Creation

		make_real_random
				-- Create a Random Number Generator.
			local
				time_stamp:DATE_TIME
				current_seed:INTEGER
			do
				create time_stamp.make_now
				current_seed := time_stamp.second + time_stamp.day + time_stamp.year
				set_seed (current_seed)
				start
			end

		make_repeatable
				--  Create a Random Number Generator with a repeatable sequence.
			do
				 set_seed(my_seed)
				 start
			ensure
				is_repeatable: seed =  my_seed --default_seed
			end


		make_with_seed(s:INTEGER)
				-- Create a Random Number Generator with a repeatable seed.
			require
				seed_positive: s > 0
			do
				set_seed(s)
				start
			ensure
				seed_set: seed = s
			end

feature -- Basic Operations

			integer_value_between(low_limit:INTEGER;high_limit:INTEGER):INTEGER
		 		 -- This feature allows you to generate a random integer
				 -- between two integers eg. 4 and 8 or 1 and 10.	
			require
					 low_limit >= 0
					 high_limit >= low_limit
			local
					 r: REAL
			do
					generate
					 r := next_value * (high_limit - low_limit + 1)
					 Result := r.truncated_to_integer + low_limit
			ensure
				result_within_bounds : Result >= low_limit AND Result <= high_limit
				index_incremented: index = old index + 1
			end -- feature value_between


		 real_value_between(low_limit:INTEGER;high_limit:INTEGER):REAL
		 		 -- This feature allows you to generate a random real
			  -- between two integers
			require
					 low_limit >= 0
					 high_limit >= low_limit
			local
					 r: REAL
			do
					generate
					 r := next_value * (high_limit - low_limit)
					 Result := r + low_limit
			ensure
     		 result_within_bounds : Result >= low_limit AND Result <= high_limit
     		 index_incremented: index = old index + 1
			end -- feature value_between

feature {NONE}

	my_seed:INTEGER=131313  -- DO NOT CHANGE!

end -- class RANDOM_NUMBER

