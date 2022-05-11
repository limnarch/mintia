struct IODriver
	4 VersionMajor
	4 VersionMinor

	4 Name
	4 DeviceType
	4 DispatchTable
	4 ExtensionSize
	4 BlockLog

	4 Reserved1
	4 Reserved2
	4 Reserved3
	4 Reserved4
	4 Reserved5
	4 Reserved6
	4 Reserved7
endstruct

struct IODevice
	4 Driver
	4 Extension
	4 FileControlBlock
	4 BlockLog
	4 IsAConsole

	4 Reserved1
	4 Reserved2
	4 Reserved3
	4 Reserved4
	4 Reserved5
	4 Reserved6
	4 Reserved7
endstruct

extern IODeviceDirectoryInsert { deviceobject -- ok }

extern IODeviceDeleteObject { object -- ok }

extern IODeviceGetExtension { deviceobject -- extension }
extern IODeviceSetBlockLog { blocklog deviceobject -- }
extern IODeviceGetBlockLog { deviceobject -- blocklog }