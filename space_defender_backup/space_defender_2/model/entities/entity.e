note
	description: "Summary description for {ENTITY}."
	author: ""
	date: "2020-11-21"
	revision: "$Revision$"

deferred class
	ENTITY
	inherit
		ANY
	redefine
		out
		end

feature -- Attributes
	name : STRING
	id : INTEGER
	symbol : STRING
	location : TUPLE[row: INTEGER;col: INTEGER]
--	location_destroyed  : TUPLE[row: INTEGER;col: INTEGER]
	alive : BOOLEAN
	previously_alive : BOOLEAN
	collision_msg : STRING
--	attributes : ATTRIBUTE_VALUES
--	current_attributes : ATTRIBUTE_VALUES

	model : ETF_MODEL
		local
			mda : ETF_MODEL_ACCESS
		do
			Result := mda.m
		end

feature -- Commands

--	move(row: INTEGER; column: INTEGER) deferred end
--	pass deferred end
--	special deferred end
--	fire deferred end
	set_variables
		do
			create name.make_empty
			create symbol.make_empty
			create collision_msg.make_empty
			alive := True
			previously_alive := False
		end

	set_alive(b : BOOLEAN)
		do
			alive := b
			if b = False then
				remove_from_struct -- removed from hashtable
				model.grid[location.row][location.col] := "_" -- removed frmo board
				previously_alive := TRUE
			end
		end

	set_previously_alive(b : BOOLEAN)
		do
			previously_alive := b
		end

	set_location(row: INTEGER; column: INTEGER)
		do
--			location.row := row
--			location.col := column
			location := [row, column]
		end

--	reset_current_attributes
--		do
--			current_attributes := attributes.deep_twin
--		end

--	set_current_attributes(a: ATTRIBUTE_VALUES)
--		do
--			current_attributes := a.deep_twin
--		end

	collision(row : INTEGER; col : INTEGER)
		local
			lower : INTEGER
		do
			----- Reset collision msg
			collision_msg := ""
			----

			from
				lower := location.row
			until
				lower = row
				-- OR IF CURRENT ENTITY GETS DESTROYED!!!!******
				or
				alive = False
			loop

				if lower < row then -- moved above b/c collides with itself
					lower := lower + 1
				else
					lower := lower - 1
				end
				------------------
				model.collision_test_msg.append ("%N CurrentLocation: " + lower.out + "," + location.col.out) -- PRINT TESTING
				------------------
				if model.locations.has_key ([lower, location.col]) then -- goes up or down at current location col

					-- TESTING if it found collision
					model.collision_test_msg.append ("  FOUND: ") -- PRINT TESTING
					if attached model.locations.found_item as l_item then
						model.collision_test_msg.append (l_item.location_out)

						------------------------
						modify_collision (l_item) -- changes values , sets alive n stuff
						------------------------
					end
					---------------------------------------------------
				else
					model.collision_test_msg.append ("  not found ") -- PRINT TESTING
				end

--				if not alive then
--					location_destroyed := [lower, location.col]
--				end
			end

			--------- FOR COLUMNS ----------
			from
				lower := location.col
			until
				lower = col
				-- OR IF CURRENT ENTITY GETS DESTROYED!!!!******
				or
				alive = False
			loop
				if lower < col then -- moving first b/c if u do it after, it will collide with itself
					lower := lower + 1
				else
					lower := lower - 1
				end
				model.collision_test_msg.append ("%N CurrentLocation: " + row.out + "," + lower.out) -- PRINT TESTING
				if model.locations.has_key ([row, lower]) then -- goes up or down at current location col

					-- TESTING if it found collisions
					model.collision_test_msg.append ("  FOUND: ") -- PRINT TESTING
					if attached model.locations.found_item as l_item then
						model.collision_test_msg.append (l_item.location_out + " id:" + l_item.id.out + " symb:" + l_item.symbol )

						------------------------
						modify_collision (l_item) -- changes values , sets alive n stuff
						------------------------
					end
					---------------------------------------------------
				else
					model.collision_test_msg.append ("  not found ") -- PRINT TESTING
				end

--				if not alive then
--					location_destroyed := [row, lower]
--				end
			end
		end

	modify_collision(l_item : ENTITY)
		deferred end


	set_symbol(s: STRING)
		do
			symbol := s
		end

feature -- Updates to model

	put_in_struct
		do
			model.locations.put (Current, location)
		end

	remove_from_struct
		do
			model.locations.remove (location)
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
				if location_out.is_equal (location_string (row, column)) then
					Result.append ("A " + name + "(id:" + id.out + ") stays at: " + location_out)
				else
					Result.append ("A " + name + "(id:" + id.out + ") moves: " + location_out + " -> " + location_string (row, column))
				end

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

	out : STRING -- REDEFINED FROM ANY
		do
			Result := symbol
		end

end
