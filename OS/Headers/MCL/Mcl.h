fnptr MclBuiltinF { argvt argcn machine -- value ok }

extern MclMachineCreate { -- machine ok }
extern MclMachineFree { machine -- }
extern MclMachineParseFile { filename interactive streamhandle machine -- rootblock ok }

extern MclMachineEvaluateNode { capture node machine -- value ok }
extern MclMachineRegisterBuiltin { func name machine -- ok }

extern MclParseSubtreeFree { node -- }
extern MclFreeValue { value -- }

extern MclDiagnostic { ... fmt machine -- }