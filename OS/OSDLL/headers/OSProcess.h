const OSPROCESS_NOINHERIT     1
const OSPROCESS_FORKQUOTA     2
const OSPROCESS_DETACHCONSOLE 4

// userside
const OSPROCESS_NOINHERITENV  8192
const OSPROCESS_SUSPENDED     16384

const OSTHREAD_SUSPENDED 1

extern OSSpawnV { argcn argvt path creationflags creationparams permissions name -- threadhandle processhandle ok }
extern OSSpawn { ... path creationflags creationparams permissions name -- threadhandle processhandle ok }

extern OSExit { status -- }

struct OSCreationParams
	// handles to use as the process's stdio.
	// any not specified will be inherited.
	4 StdIn
	4 StdOut
	4 StdErr

	// inherited if not specified
	4 CurrentDirectoryPath

	48 Reserved
endstruct