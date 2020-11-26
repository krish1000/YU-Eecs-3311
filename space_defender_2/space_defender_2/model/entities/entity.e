note
	description: "Summary description for {ENTITY}."
	author: ""
	date: "2020-11-21"
	revision: "$Revision$"

deferred class
	ENTITY

feature -- Attributes
	name : STRING
	id : INTEGER
	symbol : STRING
	location : TUPLE[row: INTEGER;col: INTEGER]
	attributes : ATTRIBUTE_VALUES
	current_attributes : ATTRIBUTE_VALUES

	model : ETF_MODEL
		local
			mda : ETF_MODEL_ACCESS
		do
			Result := mda.m
		end

feature -- Commands

--	move(row: INTEGER; column: INTEGER) deferred end
	pass deferred end
--	special deferred end
--	fire deferred end

	set_location(row: INTEGER; column: INTEGER)
		do
			location.row := row
			location.col := column
		end

	reset_current_attributes
		do
			current_attributes := attributes.deep_twin
		end

--	set_current_attributes(a: ATTRIBUTE_VALUES)
--		do
--			current_attributes := a.deep_twin
--		end

	set_symbol(s: STRING)
		do
			symbol := s
		end

feature -- Queries
	-- Outputs string format of current location for entity as [row,col]
	location_out : STRING
		do
			create Result.make_empty
			Result.append("[" + model.letter[location.row] + "," + location.col.out + "]")
		end

	moves_msg(row : INTEGER; column : INTEGER) : STRING
		do
			create Result.make_empty
			if column > 0 then
				Result.append ("A " + name + "(id:" + id.out + ") moves: " + location_out + " -> " + location_string (row, column))
			else
				Result.append ("A " + name + "(id:" + id.out + ") moves: " + location_out + " -> out of board")
			end

		end

	-- Given row column, outputs string format [row,col]
	location_string(row : INTEGER; column : INTEGER) : STRING
		do
			create Result.make_empty
			Result.append("[" + model.letter[row] + "," + column.out + "]")
		end

	outside_board : BOOLEAN
		do
			Result := False -- Projectile is inside board
			if
				location.row < 1 OR
				location.row > model.grid.count OR
				location.col < 1 OR
				location.col > model.grid[1].count
			then
				Result := TRUE -- Projectile is outside of the board
			end
		end

end
