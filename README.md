# MINTIA

MINTIA is an overengineered operating system written in a custom programming
language. It implements a robust virtual memory system, inspired by that of
Windows NT and OpenVMS.

It is an attempt at a better-designed sibling of the [AISIX](http://github.com/limnarch/aisix) project, which has been
relegated to proof-of-concept status.

WIP: MINTIA is not currently in an even minimally usable state.

## Implemented features

1. Dynamically-linked kernel modules.
2. Priority-based preemptive multitasking with wait boosting.
3. Nested interrupts.
4. IPLs (analogous to Windows IRQLs) and DPCs.
5. Waiting on multiple events at once.
6. An Object Manager for centralized resource tracking and IPC.
7. Unix-like permissions model.
8. Loadable kernel-mode debugger with stack tracing.
9. NT-like (filestream) cache.
10. AisixFS read-only support.
11. Demand paging, memory-mapped files, etc.
12. Userspace dynamic linking.
13. Swapping and working set management.
14. Minimal command-line interface over TTY.

## Planned features (in rough descending order of priority)

1. AisixFS write support. (in progress)
2. Useful command-line interface.
3. MBR partition table support; FAT32 driver
4. Mac OS 9-lookalike window system.

![Running](https://raw.githubusercontent.com/limnarch/mintia/main/screenshot.png)
