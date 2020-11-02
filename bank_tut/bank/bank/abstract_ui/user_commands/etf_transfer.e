note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_TRANSFER
inherit 
	ETF_TRANSFER_INTERFACE
create
	make
feature -- command 
	transfer(id1: STRING ; id2: STRING ; amount: INTEGER_32)
    	do
			-- perform some update on the model state
			model.default_update
			etf_cmd_container.on_change.notify ([Current])
    	end

end
