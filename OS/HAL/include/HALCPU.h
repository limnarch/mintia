extern HALCPUHalt { -- }

extern HALCPUInterruptDisable { -- rs }

extern HALCPUInterruptRestore { rs -- }

extern HALCPUInterruptEnable { -- }

extern HALCPUContextInit { context1 context2 startfunc kstack -- ctx }

extern HALCPUContextSwitch { old new -- }

extern HALCPURunInContext { int handler stack -- }

extern HALCPUMapSwitch { asid pgtb -- oldasid oldpgtb }

extern HALCPURunInContextNoInterrupts { handler stack arg1 arg0 -- ret0 ret1 }