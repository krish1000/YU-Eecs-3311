note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ETF_DEPOSIT_INTERFACE
inherit
	ETF_COMMAND
		redefine 
			make 
		end

feature {NONE} -- Initialization

	make(an_etf_cmd_name: STRING; etf_cmd_args: TUPLE; an_etf_cmd_container: ETF_ABSTRACT_UI_INTERFACE)
		do
			Precursor(an_etf_cmd_name,etf_cmd_args,an_etf_cmd_container)
			etf_cmd_routine := agent deposit(? , ?)
			etf_cmd_routine.set_operands (etf_cmd_args)
			if
				attached {STRING} etf_cmd_args[1] as id and then attached {INTEGER_32} etf_cmd_args[2] as amount
			then
				out := "deposit(" + etf_event_argument_out("deposit", "id", id) + "," + etf_event_argument_out("deposit", "amount", amount) + ")"
			else
				etf_cmd_error := True
			end
		end

feature -- command 
	deposit(id: STRING ; amount: INTEGER_32)
    	deferred
    	end
end
