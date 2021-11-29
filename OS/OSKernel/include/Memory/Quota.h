struct MmQuotaBlock
	4 References

	4 HeapUsed
	4 HeapMax

	4 VMUsed
	4 VMMax

	4 WorkingSetUsed
	4 WorkingSetMax

	4 ModifiedPagesUsed
	4 ModifiedPagesMax
endstruct

const MMQUOTAINFINITE -1

extern MmQuotaBlockCreate { modmax wsmax vmmax heapmax -- quotablock ok }
extern MmQuotaBlockInitialize { modmax wsmax vmmax heapmax quotablock -- ok }
extern MmQuotaBlockReference { quotablock -- }
extern MmQuotaBlockDereference { quotablock -- }

extern MmQuotaBlockCharge { charge quotablock -- ok }
extern MmQuotaBlockUncharge { charge quotablock -- }
extern MmQuotaBlockChargeVM { charge quotablock -- ok }
extern MmQuotaBlockUnchargeVM { charge quotablock -- }
extern MmQuotaBlockChargeWorkingSet { charge quotablock -- ok }
extern MmQuotaBlockUnchargeWorkingSet { charge quotablock -- }
extern MmQuotaBlockChargeModifiedPages { charge quotablock -- ok }
extern MmQuotaBlockUnchargeModifiedPages { charge quotablock -- }
extern MmQuotaBlockPrint { quotablock -- }

externptr MmQuotaSystem