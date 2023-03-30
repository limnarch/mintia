; AUTOMATICALLY GENERATED -- DO NOT EDIT

.section text

OSConsolePutCharacter:
.global OSConsolePutCharacter
	mov  t1, a0

	mov  t0, 1
	int  0x30

	mov  a0, t1

	ret

OSSystemAbort:
.global OSSystemAbort
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 2
	int  0x30

	mov  a0, t1

	ret

OSGetSystemConsoleName:
.global OSGetSystemConsoleName
	mov  t1, a0

	mov  t0, 3
	int  0x30

	mov  a0, t1

	ret

OSGetBootFlags:
.global OSGetBootFlags

	mov  t0, 4
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSContinue:
.global OSContinue
	mov  t1, a0
	mov  t2, a1

	mov  t0, 5
	int  0x30


	ret

OSQueryTime:
.global OSQueryTime

	mov  t0, 6
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSQueryUptime:
.global OSQueryUptime

	mov  t0, 7
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSTimeZoneGet:
.global OSTimeZoneGet

	mov  t0, 8
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSTimeZoneSet:
.global OSTimeZoneSet
	mov  t1, a0

	mov  t0, 9
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSTimeSet:
.global OSTimeSet
	mov  t1, a0
	mov  t2, a1

	mov  t0, 10
	int  0x30

	mov  a0, t1

	ret

OSShutdownSystem:
.global OSShutdownSystem
	mov  t1, a0

	mov  t0, 11
	int  0x30

	mov  a0, t1

	ret

OSVersion:
.global OSVersion
	mov  t1, a0

	mov  t0, 12
	int  0x30

	mov  a0, t1

	ret

OSEventCreate:
.global OSEventCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 13
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSEventReset:
.global OSEventReset
	mov  t1, a0

	mov  t0, 14
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSEventSignal:
.global OSEventSignal
	mov  t1, a0

	mov  t0, 15
	int  0x30

	mov  a0, t1

	ret

OSEventPulse:
.global OSEventPulse
	mov  t1, a0

	mov  t0, 16
	int  0x30

	mov  a0, t1

	ret

OSEventReadState:
.global OSEventReadState
	mov  t1, a0

	mov  t0, 17
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSSemaphoreCreate:
.global OSSemaphoreCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 18
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSSemaphoreRelease:
.global OSSemaphoreRelease
	mov  t1, a0
	mov  t2, a1

	mov  t0, 19
	int  0x30

	mov  a0, t1

	ret

OSSemaphoreReadState:
.global OSSemaphoreReadState
	mov  t1, a0

	mov  t0, 20
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSMutexCreate:
.global OSMutexCreate
	mov  t1, a0
	mov  t2, a1

	mov  t0, 21
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSMutexRelease:
.global OSMutexRelease
	mov  t1, a0

	mov  t0, 22
	int  0x30

	mov  a0, t1

	ret

OSMutexReadState:
.global OSMutexReadState
	mov  t1, a0

	mov  t0, 23
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSTimerCreate:
.global OSTimerCreate
	mov  t1, a0
	mov  t2, a1

	mov  t0, 24
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSTimerReset:
.global OSTimerReset
	mov  t1, a0

	mov  t0, 25
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSTimerEnqueue:
.global OSTimerEnqueue
	mov  t1, a0
	mov  t2, a1

	mov  t0, 26
	int  0x30

	mov  a0, t1

	ret

OSTimerDequeue:
.global OSTimerDequeue
	mov  t1, a0

	mov  t0, 27
	int  0x30

	mov  a0, t1

	ret

OSTimerReadState:
.global OSTimerReadState
	mov  t1, a0

	mov  t0, 28
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSGetStatistics:
.global OSGetStatistics
	mov  t1, a0

	mov  t0, 29
	int  0x30

	mov  a0, t1

	ret

OSNvramVariableQuery:
.global OSNvramVariableQuery
	mov  t1, a0

	mov  t0, 30
	int  0x30

	mov  a0, t1

	ret

OSNvramVariableSet:
.global OSNvramVariableSet
	mov  t1, a0
	mov  t2, a1

	mov  t0, 31
	int  0x30

	mov  a0, t1

	ret

OSNvramVariableRead:
.global OSNvramVariableRead
	mov  t1, a0
	mov  t2, a1

	mov  t0, 32
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSIsComputerOn:
.global OSIsComputerOn

	mov  t0, 33
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSIsComputerOnFire:
.global OSIsComputerOnFire

	mov  t0, 34
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectOpen:
.global OSObjectOpen
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 35
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSQuery:
.global OSQuery
	mov  t1, a0
	mov  t2, a1

	mov  t0, 36
	int  0x30

	mov  a0, t1

	ret

OSClose:
.global OSClose
	mov  t1, a0

	mov  t0, 37
	int  0x30

	mov  a0, t1

	ret

OSWaitForMultipleObjects:
.global OSWaitForMultipleObjects
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 38
	int  0x30

	mov  a0, t1

	ret

OSWaitForObject:
.global OSWaitForObject
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 39
	int  0x30

	mov  a0, t1

	ret

OSHandleDuplicate:
.global OSHandleDuplicate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 40
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectDirectoryCountQuery:
.global OSObjectDirectoryCountQuery
	mov  t1, a0

	mov  t0, 41
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectDirectoryQueryAll:
.global OSObjectDirectoryQueryAll
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 42
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectDirectoryCreate:
.global OSObjectDirectoryCreate
	mov  t1, a0
	mov  t2, a1

	mov  t0, 43
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSObjectDirectoryInsert:
.global OSObjectDirectoryInsert
	mov  t1, a0
	mov  t2, a1

	mov  t0, 44
	int  0x30

	mov  a0, t1

	ret

OSObjectDirectoryRemove:
.global OSObjectDirectoryRemove
	mov  t1, a0

	mov  t0, 45
	int  0x30

	mov  a0, t1

	ret

OSSetSecurity:
.global OSSetSecurity
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 46
	int  0x30

	mov  a0, t1

	ret

OSFileQuery:
.global OSFileQuery
	mov  t1, a0
	mov  t2, a1

	mov  t0, 47
	int  0x30

	mov  a0, t1

	ret

OSFileTruncate:
.global OSFileTruncate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 48
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSFileSeek:
.global OSFileSeek
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 49
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSFileRead:
.global OSFileRead
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 50
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSFileWrite:
.global OSFileWrite
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 51
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSFileFlush:
.global OSFileFlush
	mov  t1, a0
	mov  t2, a1

	mov  t0, 52
	int  0x30

	mov  a0, t1

	ret

OSFileSetInformation:
.global OSFileSetInformation
	mov  t1, a0
	mov  t2, a1

	mov  t0, 53
	int  0x30

	mov  a0, t1

	ret

OSFileReadAsync:
.global OSFileReadAsync
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 54
	int  0x30

	mov  a0, t1

	ret

OSFileWriteAsync:
.global OSFileWriteAsync
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 55
	int  0x30

	mov  a0, t1

	ret

OSFileCancelIO:
.global OSFileCancelIO
	mov  t1, a0
	mov  t2, a1

	mov  t0, 56
	int  0x30

	mov  a0, t1

	ret

OSDirectoryRename:
.global OSDirectoryRename
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 57
	int  0x30

	mov  a0, t1

	ret

OSDirectoryUnlink:
.global OSDirectoryUnlink
	mov  t1, a0
	mov  t2, a1

	mov  t0, 58
	int  0x30

	mov  a0, t1

	ret

OSDirectoryRead:
.global OSDirectoryRead
	mov  t1, a0
	mov  t2, a1

	mov  t0, 59
	int  0x30

	mov  a0, t1

	ret

OSPageFileCreate:
.global OSPageFileCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 60
	int  0x30

	mov  a0, t1

	ret

OSPageFileQuery:
.global OSPageFileQuery
	mov  t1, a0
	mov  t2, a1

	mov  t0, 61
	int  0x30

	mov  a0, t1

	ret

OSIOControl:
.global OSIOControl
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 62
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSGetBootDevicePath:
.global OSGetBootDevicePath
	mov  t1, a0

	mov  t0, 63
	int  0x30

	mov  a0, t1

	ret

OSFilesystemMount:
.global OSFilesystemMount
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 64
	int  0x30

	mov  a0, t1

	ret

OSFilesystemUnmount:
.global OSFilesystemUnmount
	mov  t1, a0

	mov  t0, 65
	int  0x30

	mov  a0, t1

	ret

OSMountQueryAll:
.global OSMountQueryAll
	mov  t1, a0
	mov  t2, a1

	mov  t0, 66
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSMountCountQuery:
.global OSMountCountQuery

	mov  t0, 67
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSMountUpdateFlags:
.global OSMountUpdateFlags
	mov  t1, a0
	mov  t2, a1

	mov  t0, 68
	int  0x30

	mov  a0, t1

	ret

OSMountGetFilesystemName:
.global OSMountGetFilesystemName
	mov  t1, a0
	mov  t2, a1

	mov  t0, 69
	int  0x30

	mov  a0, t1

	ret

OSMountSet:
.global OSMountSet
	mov  t1, a0
	mov  t2, a1

	mov  t0, 70
	int  0x30

	mov  a0, t1

	ret

OSFlushModifiedPages:
.global OSFlushModifiedPages

	mov  t0, 71
	int  0x30

	mov  a0, t1

	ret

OSSectionCreate:
.global OSSectionCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 72
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSMapView:
.global OSMapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  a0, [r31]
	add  r31, 4
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 73
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSUnmapView:
.global OSUnmapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 74
	int  0x30

	mov  a0, t1

	ret

OSRemapView:
.global OSRemapView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 75
	int  0x30

	mov  a0, t1

	ret

OSFlushView:
.global OSFlushView
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 76
	int  0x30

	mov  a0, t1

	ret

OSAllocate:
.global OSAllocate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 77
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSMemoryQuery:
.global OSMemoryQuery
	mov  t1, a0

	mov  t0, 78
	int  0x30

	mov  a0, t1

	ret

OSWorkingSetPurge:
.global OSWorkingSetPurge

	mov  t0, 79
	int  0x30

	mov  a0, t1

	ret

OSSynchronizeIcache:
.global OSSynchronizeIcache

	mov  t0, 80
	int  0x30


	ret

OSProcessCreate:
.global OSProcessCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 81
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessSignal:
.global OSProcessSignal
	mov  t1, a0
	mov  t2, a1

	mov  t0, 82
	int  0x30

	mov  a0, t1

	ret

OSProcessOpenByPID:
.global OSProcessOpenByPID
	mov  t1, a0
	mov  t2, a1

	mov  t0, 83
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessQuery:
.global OSProcessQuery
	mov  t1, a0
	mov  t2, a1

	mov  t0, 84
	int  0x30

	mov  a0, t1

	ret

OSProcessQueryByPID:
.global OSProcessQueryByPID
	mov  t1, a0
	mov  t2, a1

	mov  t0, 85
	int  0x30

	mov  a0, t1

	ret

OSProcessReadStatus:
.global OSProcessReadStatus
	mov  t1, a0

	mov  t0, 86
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessSetConsoleGroup:
.global OSProcessSetConsoleGroup
	mov  t1, a0
	mov  t2, a1

	mov  t0, 87
	int  0x30

	mov  a0, t1

	ret

OSProcessBasePrioritySet:
.global OSProcessBasePrioritySet
	mov  t1, a0
	mov  t2, a1

	mov  t0, 88
	int  0x30

	mov  a0, t1

	ret

OSProcessSignalActivation:
.global OSProcessSignalActivation
	mov  t1, a0

	mov  t0, 89
	int  0x30

	mov  a0, t1

	ret

OSProcessWaitForActivation:
.global OSProcessWaitForActivation
	mov  t1, a0
	mov  t2, a1

	mov  t0, 90
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessExit:
.global OSProcessExit
	mov  t1, a0

	mov  t0, 91
	int  0x30


	ret

OSProcessCountQuery:
.global OSProcessCountQuery

	mov  t0, 92
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSProcessQueryAll:
.global OSProcessQueryAll
	mov  t1, a0
	mov  t2, a1

	mov  t0, 93
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSSetQuota:
.global OSSetQuota
	mov  t1, a0
	mov  t2, a1

	mov  t0, 94
	int  0x30

	mov  a0, t1

	ret

OSQuotaQuery:
.global OSQuotaQuery
	mov  t1, a0
	mov  t2, a1

	mov  t0, 95
	int  0x30

	mov  a0, t1

	ret

OSThreadSetFilePermissions:
.global OSThreadSetFilePermissions
	mov  t1, a0

	mov  t0, 96
	int  0x30

	mov  a0, t1

	ret

OSThreadGetFilePermissions:
.global OSThreadGetFilePermissions

	mov  t0, 97
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSThreadSleep:
.global OSThreadSleep
	mov  t1, a0

	mov  t0, 98
	int  0x30

	mov  a0, t1

	ret

OSThreadCreate:
.global OSThreadCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  t6, [r31]
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 99
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSThreadTerminate:
.global OSThreadTerminate
	mov  t1, a0
	mov  t2, a1

	mov  t0, 100
	int  0x30

	mov  a0, t1

	ret

OSThreadSuspend:
.global OSThreadSuspend
	mov  t1, a0

	mov  t0, 101
	int  0x30

	mov  a0, t1

	ret

OSThreadResume:
.global OSThreadResume
	mov  t1, a0

	mov  t0, 102
	int  0x30

	mov  a0, t1

	ret

OSThreadReadStatus:
.global OSThreadReadStatus
	mov  t1, a0

	mov  t0, 103
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSThreadQuery:
.global OSThreadQuery
	mov  t1, a0
	mov  t2, a1

	mov  t0, 104
	int  0x30

	mov  a0, t1

	ret

OSThreadSignal:
.global OSThreadSignal
	mov  t1, a0
	mov  t2, a1

	mov  t0, 105
	int  0x30

	mov  a0, t1

	ret

OSThreadMaskSignal:
.global OSThreadMaskSignal
	mov  t1, a0
	mov  t2, a1

	mov  t0, 106
	int  0x30

	mov  a0, t1

	ret

OSThreadDeliverOnWaitSignal:
.global OSThreadDeliverOnWaitSignal
	mov  t1, a0
	mov  t2, a1

	mov  t0, 107
	int  0x30

	mov  a0, t1

	ret

OSJobCreate:
.global OSJobCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3
	mov  r31, sp
	add  r31, 4
	mov  t5, [r31]
	add  r31, 4

	mov  t0, 108
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSJobAddProcess:
.global OSJobAddProcess
	mov  t1, a0
	mov  t2, a1

	mov  t0, 109
	int  0x30

	mov  a0, t1

	ret

OSJobRemoveProcess:
.global OSJobRemoveProcess
	mov  t1, a0

	mov  t0, 110
	int  0x30

	mov  a0, t1

	ret

OSJobSignal:
.global OSJobSignal
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 111
	int  0x30

	mov  a0, t1

	ret

OSSetSystemConsole:
.global OSSetSystemConsole
	mov  t1, a0

	mov  t0, 112
	int  0x30

	mov  a0, t1

	ret

OSConsoleSignal:
.global OSConsoleSignal
	mov  t1, a0
	mov  t2, a1

	mov  t0, 113
	int  0x30

	mov  a0, t1

	ret

OSIsAConsole:
.global OSIsAConsole
	mov  t1, a0

	mov  t0, 114
	int  0x30

	mov  a0, t1

	ret

OSDuplexCreate:
.global OSDuplexCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 115
	int  0x30

	mov  a2, t3
	mov  a1, t2
	mov  a0, t1

	ret

OSCheckPermission:
.global OSCheckPermission
	mov  t1, a0
	mov  t2, a1

	mov  t0, 116
	int  0x30

	mov  a0, t1

	ret

OSGrantPermission:
.global OSGrantPermission
	mov  t1, a0
	mov  t2, a1

	mov  t0, 117
	int  0x30

	mov  a0, t1

	ret

OSPortCreate:
.global OSPortCreate
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 118
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSPortConnect:
.global OSPortConnect
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 119
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

OSPortAccept:
.global OSPortAccept
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 120
	int  0x30

	mov  a0, t1

	ret

OSPortSendAndWaitReceive:
.global OSPortSendAndWaitReceive
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 121
	int  0x30

	mov  a0, t1

	ret

OSPortSendAndWaitReply:
.global OSPortSendAndWaitReply
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2
	mov  t4, a3

	mov  t0, 122
	int  0x30

	mov  a0, t1

	ret

OSPortOpenProcessByClientID:
.global OSPortOpenProcessByClientID
	mov  t1, a0
	mov  t2, a1
	mov  t3, a2

	mov  t0, 123
	int  0x30

	mov  a1, t2
	mov  a0, t1

	ret

