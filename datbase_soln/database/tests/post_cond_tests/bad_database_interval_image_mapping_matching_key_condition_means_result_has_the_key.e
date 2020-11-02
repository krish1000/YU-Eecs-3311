note
	description: "DATABASE.interval_image, mapping_matching_key_condition_means_result_has_the_key"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_DATABASE_INTERVAL_IMAGE_MAPPING_MATCHING_KEY_CONDITION_MEANS_RESULT_HAS_THE_KEY

inherit
	LINEAR_DB[STRING, STRING]
		redefine
			interval_image
		end

create
	make

feature

	interval_image (p_first, p_finish: STRING): LIST[STRING]
		do
			create {ARRAYED_LIST[STRING]} Result.make (count)
			Result.compare_objects

			across
				Current is i_item
			loop
				if
					p_first < i_item.key and then
					i_item.key < p_finish
				then
					Result.force(i_item.value)
				end
			end

		end

end
