const OSCONSOLEMODE_NOECHO 1
const OSCONSOLEMODE_RAW    2

const OSCONSOLEIOCONTROL_QUERY     1
const OSCONSOLEIOCONTROL_SETMODE   2
const OSCONSOLEIOCONTROL_RESETMODE 3

struct OSConsoleQuery
	4 Columns
	4 Rows
	4 Mode

	24 Reserved
endstruct