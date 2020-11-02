note
	description: "DATABASE.interval_image, value_exists_in_result_mean_model_should_have_it"
	author: "Jinho Hwang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_DATABASE_INTERVAL_IMAGE_VALUE_EXISTS_IN_RESULT_MEAN_MODEL_SHOULD_HAVE_IT

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
					p_first <= i_item.key and then
					i_item.key <= p_finish
				then
					Result.force(i_item.value)
				end
			end

		end

end
