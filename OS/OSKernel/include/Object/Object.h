// An object may be allocated from either paged or nonpaged pool depending on
// what is specified in its type object. It is allocated in two pieces: one is
// an inline allocation from the specified pool, containing the appropriate
// header, the object's name, and the object's body. The other piece contains
// the header for the opposite pool. This attempts to maximize what can be
// placed in paged pool.
//
//
// Inline allocation layout:
//
// Ob[HeapType]Header
// Object Name (w/ null terminator and padding)
// ObCommonHeader (contains pointer to opposite header)
//  <-- object pointer
// Object Body

struct ObCommonHeader
	4 PagedHeader
	4 NonpagedHeader
	4 Name
endstruct

struct ObNonpagedHeader
	4 TypeObject

	4 HandleCount
	4 PointerCount

	4 QuotaBlock
endstruct

struct ObPagedHeader
	4 TypeListNext
	4 TypeListPrev

	4 DirectoryListNext
	4 DirectoryListPrev

	4 DirectoryObject

	4 Flags

	4 UID
	4 GID
	4 Permissions

	4 PagedQuotaCharge
	4 NonpagedQuotaCharge
endstruct

struct ObType
	4 Tag

	4 ObjectListHead

	4 OpenFunction
	4 CloseFunction
	4 DeleteFunction
	4 ParseFunction
	4 SetSecurityFunction

	4 Paged
	4 WaitOffset

	KeMutex_SIZEOF Mutex
endstruct

struct ObTypeInitializer
	4 Name
	4 Tag
	4 BodySize

	4 OpenFunction
	4 CloseFunction
	4 DeleteFunction
	4 ParseFunction
	4 SetSecurityFunction

	4 Paged
	4 WaitOffset
endstruct

struct ObDirectory
	4 ObjectListHead
	4 ChildCount
endstruct

// modify OBHANDLEENTRYSIZELOG if you change the size of this structure
struct ObObjectTableEntry
	4 Object
	4 Access
endstruct

fnptr ObTypeOpenFunction { access object process -- ok }
fnptr ObTypeCloseFunction { access object process -- }
fnptr ObTypeDeleteFunction { object -- }
fnptr ObTypeParseFunction { flags path initialobject process -- reparsepath object ok }
fnptr ObTypeSetSecurityFunction { uid gid permissions object -- ok }

const OBFLAGS_PERMANENT 1

const OBHANDLEENTRYSIZELOG 1 // 4<<1 = 8 bytes

externptr ObTypeObjectType
externptr ObTypeDirectoryType
externptr ObRootDirectoryObject
externptr ObObjectTypesDirectoryObject
externptr ObRootRwLock

extern ObInitPhase0 { -- }
extern ObInitPhase1 { -- }

extern ObHandleDestroyFunction { entryptr handle handletable -- ok }

extern ObObjectCreate { name flags permissions npquotabias pquotabias bodysize type -- object ok }
extern ObObjectFree { object -- ok }
extern ObObjectDeallocate { object -- }

extern ObTypeInitializerInitialize { initializer -- }
extern ObTypeCreate { initializer -- type ok }

extern ObObjectReferenceByHandle { type handle -- access object ok }
extern ObObjectReferenceByHandleProcess { type handle process -- access object ok }

extern ObObjectClose { handle -- ok }
extern ObObjectCloseProcess { handle process -- ok }

extern ObObjectOpen { nocheck access object -- handle ok }
extern ObObjectOpenProcess { nocheck access object process -- handle ok }

extern ObObjectHandleCountIncrement { object -- oldcount }
extern ObObjectHandleCountDecrement { object -- oldcount }

extern ObObjectReferenceByPointerCapturedHeader { npheader -- oldcount }
extern ObObjectReferenceByPointer { object -- oldcount }
extern ObObjectDereferenceByPointer { object -- oldcount }

extern ObObjectNonpagedHeader { object -- npheader }
extern ObObjectPagedHeader { object -- pheader }
extern ObObjectName { object -- name }
extern ObObjectType { object -- type }

extern ObObjectQueryObject { object query -- ok }
extern ObObjectQuery { objecthandle query -- ok }

extern ObHandleDuplicateObject { handle access srcprocessobject destprocessobject -- newhandle ok }
extern ObHandleDuplicate { handle access srcprocesshandle destprocesshandle -- newhandle ok }

extern ObObjectSetUID { uid object -- }
extern ObObjectSetGID { gid object -- }

extern ObSetSecurityObject { uid gid permissions object -- ok }
extern ObSetSecurity { uid gid permissions handle -- ok }