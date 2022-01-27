const ACCESS_EXEC  1
const ACCESS_WRITE 2
const ACCESS_READ  4

const ACCESS_ALL   (ACCESS_WRITE ACCESS_READ | ACCESS_EXEC |)

const ACCESS_NOINHERIT 0x10000000

const ACCESS_WORLD_EXEC  1
const ACCESS_WORLD_WRITE 2
const ACCESS_WORLD_READ  4

const ACCESS_WORLD_ALL (ACCESS_WORLD_EXEC ACCESS_WORLD_WRITE | ACCESS_WORLD_READ |)

const ACCESS_GROUP_EXEC  8
const ACCESS_GROUP_WRITE 16
const ACCESS_GROUP_READ  32

const ACCESS_GROUP_ALL (ACCESS_GROUP_EXEC ACCESS_GROUP_WRITE | ACCESS_GROUP_READ |)

const ACCESS_OWNER_EXEC  64
const ACCESS_OWNER_WRITE 128
const ACCESS_OWNER_READ  256

const ACCESS_OWNER_ALL (ACCESS_OWNER_EXEC ACCESS_OWNER_WRITE | ACCESS_OWNER_READ |)

const ACCESS_ALL_ALL (ACCESS_WORLD_ALL ACCESS_GROUP_ALL | ACCESS_OWNER_ALL |)

const ACCESS_ANY_EXEC (ACCESS_WORLD_EXEC ACCESS_GROUP_EXEC | ACCESS_OWNER_EXEC |)

const UID_SYSTEM 0
const GID_SYSTEM 0

const SYSTEMPERMISSION_REBOOT      1
const SYSTEMPERMISSION_SHUTDOWN    2
const SYSTEMPERMISSION_SYNC        3
const SYSTEMPERMISSION_ADMIN       4
const SYSTEMPERMISSION_SYSTEM      5
const SYSTEMPERMISSION_MOUNT       6
const SYSTEMPERMISSION_SETCONSOLE  7
const SYSTEMPERMISSION_FORKQUOTA   8
const SYSTEMPERMISSION_DETACHCONSOLE 9
const SYSTEMPERMISSION_SETQUOTA    10