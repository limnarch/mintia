extern HALPlatformMapKernelSwitch { -- asid oldpgtb }

extern HALPlatformMapRestore { asid oldpgtb -- }

externptr HALPlatformKernelPageDirectory

const KERNELSPACE 0x80000000
const IDENTITYSPACE 0xD0000000

const IDENTITYSPACEMASK (IDENTITYSPACE ~)

// platform independent page flags
// (which happen to line up with limn2500 pte flags)

const PTE_V  1
const PTE_W  2
const PTE_K  4
const PTE_NC 8
const PTE_G  16