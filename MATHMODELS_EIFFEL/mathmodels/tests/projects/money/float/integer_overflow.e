note
	description: "[
		Detect Integer Overflow
		debug
			ToDo: Pre/Post-conditions
		end
		ToDo: multiply and divide
		]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTEGER_OVERFLOW

feature

	max_int: INTEGER_64
		once
			Result := Result.max_value
		end

	min_int: INTEGER_64
		once
			Result := Result.min_value
		end


	safe_plus (left, right: INTEGER_64): BOOLEAN
		do
			if right > 0 then
				Result := (left <= max_int - right)
			else
				Result := (left >= min_int - right)
			end
		ensure
			right >= 0 implies Result = (left <= max_int - right)
			right <= 0 implies Result = (left >= min_int - right)

		end

	safe_minus (left, right: INTEGER_64): BOOLEAN
		do
			if right > 0 then
				Result := (left >= min_int + right)
			else
				Result := (left <= max_int + right)
			end
		ensure
			right >= 0 implies Result = (left >= min_int + right)
			right <= 0 implies Result = (left <= max_int + right)

		end

	-- ToDo add for multiply and divides

end

