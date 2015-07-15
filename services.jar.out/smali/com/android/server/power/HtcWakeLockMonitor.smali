.class final Lcom/android/server/power/HtcWakeLockMonitor;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;,
        Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;,
        Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;,
        Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;,
        Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;,
        Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;
    }
.end annotation


# instance fields
.field private ABNORMAL_COUNT:I

.field private final DB_KEY_APP_MONITOR:Ljava/lang/String;

.field private DEBUG_ON:Z

.field private final DUMP_RECORD_INTERVAL:J

.field private final ENABLE_DUMP_RECORD:Z

.field private ENABLE_MONITOR:Z

.field private final MASTER_ENABLE:Z

.field private final MAX_RECORDS:I

.field private final MAX_SCREEN_OFF_COUNT:I

.field private MINIMUM_DURATION:J

.field private final MY_UID:I

.field private final NOTIFY_CONTENT_KEY:Ljava/lang/String;

.field private final NOTIFY_INTENT:Ljava/lang/String;

.field private SCREEN_OFF_MINIMUM:J

.field private SCREEN_OFF_RATIO:I

.field private final SHOW_RECORDS:I

.field private final SYS_PROP_ABNORMAL_COUNT:Ljava/lang/String;

.field private final SYS_PROP_DEBUG_ON:Ljava/lang/String;

.field private final SYS_PROP_MINIMUM_DURATION:Ljava/lang/String;

.field private final SYS_PROP_MONITOR:Ljava/lang/String;

.field private final SYS_PROP_ON:Ljava/lang/String;

.field private final SYS_PROP_SCREEN_OFF_MINIMUM:Ljava/lang/String;

.field private final SYS_PROP_SCREEN_OFF_RATIO:Ljava/lang/String;

.field private final SYS_PROP_UID_CHECK_RANGE:Ljava/lang/String;

.field private final SYS_PROP_WHITELIST_VALID_UID:Ljava/lang/String;

.field private final SYS_PROP_WL_HELD_RATIO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private UID_CHECK_RANGE:I

.field private WHITELIST_VALID_UID:I

.field private WL_HELD_RATIO:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDumpRecordTask:Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;

.field private mLastScanTime:J

.field private final mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

.field private final mMonitorTask:Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mScreenState:Z

.field private mScreenTimeStamp:[[J

.field private mScreenTimeStampIndex:I

.field private mSettingsObserver:Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

.field private mTotalScreenOffTime:J

.field private mTotalTime:J

.field private final mUpdateTask:Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;

.field private final mWLM_Handler:Landroid/os/Handler;

.field private final mWLM_Thread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "pmsUid"    # I

    .prologue
    const/16 v7, 0x28

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v1, "HtcWLM"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->TAG:Ljava/lang/String;

    .line 36
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    .line 39
    iput-boolean v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MASTER_ENABLE:Z

    .line 40
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    .line 45
    iput-boolean v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    .line 48
    const-string v1, "abnormal_app_monitor_enable"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DB_KEY_APP_MONITOR:Ljava/lang/String;

    .line 52
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DUMP_RECORD_INTERVAL:J

    .line 53
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_RECORDS:I

    .line 54
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SHOW_RECORDS:I

    .line 57
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AudioIn_"

    aput-object v3, v2, v6

    const-string v3, "AudioOut_"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;

    .line 59
    const-string v1, "com.htc.htcpowermanager.batterymonitor.APP_LIST_DETECTED"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->NOTIFY_INTENT:Ljava/lang/String;

    .line 60
    const-string v1, "bad_app_list"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->NOTIFY_CONTENT_KEY:Ljava/lang/String;

    .line 62
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    .line 63
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    .line 64
    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    .line 65
    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    .line 66
    iput v7, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    .line 67
    iput v7, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    .line 68
    iput v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    .line 70
    const-string v1, "persist.htc.wlm.sysprop.on"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_ON:Ljava/lang/String;

    .line 71
    const-string v1, "persist.htc.wlm.debug.on"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_DEBUG_ON:Ljava/lang/String;

    .line 72
    const-string v1, "persist.htc.wlm.monitor"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_MONITOR:Ljava/lang/String;

    .line 73
    const-string v1, "persist.htc.wlm.uid.whitelist"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_WHITELIST_VALID_UID:Ljava/lang/String;

    .line 74
    const-string v1, "persist.htc.wlm.uid.range"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_UID_CHECK_RANGE:Ljava/lang/String;

    .line 75
    const-string v1, "persist.htc.wlm.min.duration"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_MINIMUM_DURATION:Ljava/lang/String;

    .line 76
    const-string v1, "persist.htc.wlm.scr.minimum"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_SCREEN_OFF_MINIMUM:Ljava/lang/String;

    .line 77
    const-string v1, "persist.htc.wlm.scr.ratio"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_SCREEN_OFF_RATIO:Ljava/lang/String;

    .line 78
    const-string v1, "persist.htc.wlm.wl.ratio"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_WL_HELD_RATIO:Ljava/lang/String;

    .line 79
    const-string v1, "persist.htc.wlm.an.count"

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SYS_PROP_ABNORMAL_COUNT:Ljava/lang/String;

    .line 93
    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mDumpRecordTask:Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;

    .line 94
    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mMonitorTask:Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;

    .line 95
    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;

    invoke-direct {v1, p0, v5}, Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mUpdateTask:Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;

    .line 97
    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    invoke-direct {v1, p0, v5}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    .line 99
    iput-boolean v6, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    .line 104
    iput v6, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 107
    iput-wide v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J

    .line 109
    iput-wide v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    .line 110
    iput-wide v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    .line 545
    new-instance v1, Lcom/android/server/power/HtcWakeLockMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/HtcWakeLockMonitor$1;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iget-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: (true,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 122
    iput p3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MY_UID:I

    .line 125
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WLM"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    .line 126
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    .line 129
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->readSysProp()V

    .line 131
    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    iget-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    .line 133
    iget-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 134
    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: MAX_SCREEN_OFF_COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->initObserver()V

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/power/HtcWakeLockMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/HtcWakeLockMonitor;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcWakeLockMonitor;->clearRecord(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MY_UID:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/power/HtcWakeLockMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/power/HtcWakeLockMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/power/HtcWakeLockMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/power/HtcWakeLockMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/power/HtcWakeLockMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/power/HtcWakeLockMonitor;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/HtcWakeLockMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/server/power/HtcWakeLockMonitor;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/power/HtcWakeLockMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor;->criteriaToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/ContentQueryMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method private clearRecord(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "clearAll"    # Z

    .prologue
    .line 601
    if-nez p2, :cond_0

    iget v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    if-ge p1, v2, :cond_0

    .line 630
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    monitor-enter v3

    .line 606
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    invoke-virtual {v2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 607
    .local v1, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v2

    if-eq p1, v2, :cond_2

    if-eqz p2, :cond_1

    .line 608
    :cond_2
    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I
    invoke-static {v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1602(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;I)I

    .line 609
    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1302(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;[J)[J

    .line 611
    iget-boolean v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 612
    const-string v2, "HtcWLM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearRecord: Clear record.("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pid:I
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1700(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 629
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 621
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz p2, :cond_4

    .line 622
    const/4 v2, 0x0

    :try_start_1
    check-cast v2, [[J

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    .line 623
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J

    .line 626
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 627
    const-string v2, "HtcWLM"

    const-string v4, "clearRecord: Clear all records."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private criteriaToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal App(s) w/ criteria: UID>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MINIMUM_DURATION>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SCREEN_OFF_MINIMUM>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SCREEN_OFF_RATIO>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WL_HELD_RATIO>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ABNORMAL_COUNT>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getSumByOffset([[JJ)[J
    .locals 26
    .param p1, "timeStamps"    # [[J
    .param p2, "OFFSET"    # J

    .prologue
    .line 485
    const-wide/16 v18, 0x0

    .line 486
    .local v18, "sum":J
    move-wide/from16 v20, p2

    .line 487
    .local v20, "total":J
    const-wide/16 v12, 0x0

    .line 489
    .local v12, "duration":J
    const/16 v17, 0x0

    :try_start_0
    aget-object v17, p1, v17

    move-object/from16 v0, v17

    array-length v8, v0

    .line 491
    .local v8, "SIZE":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 492
    .local v6, "NOW":J
    sub-long v4, v6, p2

    .line 495
    .local v4, "MIN_RANGE":J
    const-wide/16 v22, 0x0

    cmp-long v17, v6, v22

    if-lez v17, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v17, v4, v22

    if-gtz v17, :cond_2

    .line 496
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 497
    const-string v17, "HtcWLM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSumByOffset: Abnormal case found.("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    const/16 v22, 0x0

    aput-wide v18, v17, v22

    const/16 v22, 0x1

    aput-wide v20, v17, v22

    .line 542
    .end local v4    # "MIN_RANGE":J
    .end local v6    # "NOW":J
    .end local v8    # "SIZE":I
    :goto_0
    return-object v17

    .line 505
    .restart local v4    # "MIN_RANGE":J
    .restart local v6    # "NOW":J
    .restart local v8    # "SIZE":I
    :cond_2
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v8, :cond_9

    .line 508
    const/16 v17, 0x1

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    cmp-long v17, v4, v22

    if-gtz v17, :cond_6

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_6

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_6

    .line 509
    const/16 v17, 0x1

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v24, v17, v14

    sub-long v12, v22, v24

    .line 510
    const-wide/16 v22, 0x0

    cmp-long v17, v12, v22

    if-lez v17, :cond_3

    .line 511
    add-long v18, v18, v12

    .line 516
    :cond_3
    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    cmp-long v17, v22, v4

    if-gez v17, :cond_4

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_4

    .line 517
    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    sub-long v10, v6, v22

    .line 520
    .local v10, "diff":J
    cmp-long v17, v20, v10

    if-lez v17, :cond_5

    .line 505
    .end local v10    # "diff":J
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .restart local v10    # "diff":J
    :cond_5
    move-wide/from16 v20, v10

    .line 520
    goto :goto_2

    .line 523
    .end local v10    # "diff":J
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x0

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-lez v17, :cond_7

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aget-wide v22, v17, v14

    const-wide/16 v24, 0x0

    cmp-long v17, v22, v24

    if-eqz v17, :cond_4

    .line 527
    :cond_7
    const/16 v17, 0x0

    aget-object v17, p1, v17

    const-wide/16 v22, 0x0

    aput-wide v22, v17, v14

    .line 528
    const/16 v17, 0x1

    aget-object v17, p1, v17

    const-wide/16 v22, 0x0

    aput-wide v22, v17, v14

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 531
    .local v16, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v17

    if-eqz v17, :cond_8

    .line 532
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v17

    const-wide/16 v22, 0x0

    aput-wide v22, v17, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 537
    .end local v4    # "MIN_RANGE":J
    .end local v6    # "NOW":J
    .end local v8    # "SIZE":I
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :catch_0
    move-exception v9

    .line 538
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 539
    const-string v17, "HtcWLM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSumByTarget: Exception caught. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_9
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    const/16 v22, 0x0

    aput-wide v18, v17, v22

    const/16 v22, 0x1

    aput-wide v20, v17, v22

    goto/16 :goto_0
.end method

.method private initObserver()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 337
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "HtcWLM"

    const-string v1, "initObserver()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    .line 342
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "abnormal_app_monitor_enable"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    .local v6, "systemSettingsCursor":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 351
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    .line 352
    new-instance v0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

    .line 353
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mSettingsObserver:Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 358
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 359
    const-string v0, "HtcWLM"

    const-string v1, "observer added successfully."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v6    # "systemSettingsCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 362
    .restart local v6    # "systemSettingsCursor":Landroid/database/Cursor;
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "HtcWLM"

    const-string v1, "content query map is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v6    # "systemSettingsCursor":Landroid/database/Cursor;
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 368
    const-string v0, "HtcWLM"

    const-string v1, "content resolver is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 6

    .prologue
    .line 1167
    const/4 v2, 0x0

    .line 1169
    .local v2, "result":Z
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1170
    .local v1, "pms":Landroid/os/IPowerManager;
    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1174
    .end local v1    # "pms":Landroid/os/IPowerManager;
    :goto_0
    return v2

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcWLM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenOn: Exception caught. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSysProp()V
    .locals 22

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    .line 284
    .local v7, "old_debug_on":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    .line 285
    .local v8, "old_enable_monitor":Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    .line 286
    .local v15, "old_whitelist_valid_uid":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    .line 287
    .local v14, "old_uid_check_range":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    .line 288
    .local v10, "old_minimum_duration":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    .line 289
    .local v12, "old_screen_off_minimum":J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    .line 290
    .local v9, "old_screen_off_ratio":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    move/from16 v16, v0

    .line 291
    .local v16, "old_wl_held_ratio":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    .line 293
    .local v6, "old_abnormal_count":I
    const/4 v4, 0x0

    .line 295
    .local v4, "PROP_ON":Z
    :try_start_0
    const-string v17, "persist.htc.wlm.sysprop.on"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 297
    if-eqz v4, :cond_0

    .line 298
    const-string v17, "persist.htc.wlm.debug.on"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    .line 299
    const-string v17, "persist.htc.wlm.monitor"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    .line 301
    const-string v17, "persist.htc.wlm.uid.whitelist"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    .line 302
    const-string v17, "persist.htc.wlm.uid.range"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    .line 304
    const-string v17, "persist.htc.wlm.min.duration"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    .line 306
    const-string v17, "persist.htc.wlm.scr.minimum"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    .line 307
    const-string v17, "persist.htc.wlm.scr.ratio"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    .line 309
    const-string v17, "persist.htc.wlm.wl.ratio"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    .line 311
    const-string v17, "persist.htc.wlm.an.count"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 320
    const-string v17, "HtcWLM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readSysProp: PROP_ON=false->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", DEBUG_ON="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", MONITOR="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v17, "HtcWLM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readSysProp: WHITELIST_VALID_UID="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", UID_CHECK_RANGE="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v17, "HtcWLM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readSysProp: MINIMUM_DURATION="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", SCREEN_OFF_MINIMUM="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", SCREEN_OFF_RATIO="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", WL_HELD_RATIO="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", ABNORMAL_COUNT="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    return-void

    .line 313
    :catch_0
    move-exception v5

    .line 314
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 315
    const-string v17, "HtcWLM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readSysProp: Unable to get SystemProperties. "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private saveScreenTimeStamp(Z)V
    .locals 14
    .param p1, "on"    # Z

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 402
    iput-boolean p1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    .line 404
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    if-nez v8, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 411
    .local v0, "INDEX":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    if-nez v8, :cond_2

    .line 412
    const/4 v8, 0x2

    iget v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    filled-new-array {v8, v10}, [I

    move-result-object v8

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    iput-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    .line 416
    :cond_2
    if-nez p1, :cond_3

    .line 417
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/power/HtcWakeLockMonitor;->getSumByOffset([[JJ)[J

    .line 420
    :cond_3
    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    add-int/lit8 v6, v8, 0x1

    .line 421
    .local v6, "next_index":I
    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    add-int/lit8 v8, v8, -0x1

    if-le v6, v8, :cond_4

    move v6, v9

    .line 423
    :cond_4
    if-nez p1, :cond_7

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    aget-wide v10, v8, v6

    cmp-long v8, v10, v12

    if-nez v8, :cond_7

    .line 426
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    aput-wide v10, v8, v6

    .line 427
    iput v6, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 429
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    .line 430
    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp: mScreenTimeStamp[0]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-wide v12, v11, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_5
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mUpdateTask:Lcom/android/server/power/HtcWakeLockMonitor$UpdateTask;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    .end local v6    # "next_index":I
    :catch_0
    move-exception v4

    .line 472
    .local v4, "e":Ljava/lang/Exception;
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_6

    .line 473
    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp: on="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", INDEX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mScreenTimeStampIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MAX_SCREEN_OFF_COUNT="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_6
    iput v9, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    goto/16 :goto_0

    .line 433
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "next_index":I
    :cond_7
    if-eqz p1, :cond_5

    :try_start_1
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    .line 437
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    aput-wide v10, v8, v0

    .line 439
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    aget-wide v10, v8, v0

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v12, 0x0

    aget-object v8, v8, v12

    aget-wide v12, v8, v0

    sub-long v2, v10, v12

    .line 440
    .local v2, "OFF_DURATION":J
    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    cmp-long v8, v2, v10

    if-ltz v8, :cond_a

    .line 442
    .local v1, "VALID":Z
    :goto_1
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_8

    .line 443
    const-string v10, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveScreenTimeStamp:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v1, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " off duration "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms ("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aget-wide v12, v12, v0

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "~"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-wide v12, v12, v0

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", INDEX="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_8
    if-nez v1, :cond_5

    .line 451
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x0

    aget-object v8, v8, v10

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    .line 452
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    const/4 v10, 0x1

    aget-object v8, v8, v10

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    .line 455
    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 456
    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    if-gez v8, :cond_c

    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I

    add-int/lit8 v8, v8, -0x1

    :goto_3
    iput v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I

    .line 459
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    invoke-virtual {v8}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .line 460
    .local v7, "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v8

    if-eqz v8, :cond_9

    .line 461
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v8

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v0

    goto :goto_4

    .end local v1    # "VALID":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "record":Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    :cond_a
    move v1, v9

    .line 440
    goto/16 :goto_1

    .line 443
    .restart local v1    # "VALID":Z
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " off duration "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms less than "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_MINIMUM:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "ms. Skip."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 456
    :cond_c
    iget v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method protected addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    .line 223
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "HtcWLM"

    const-string v1, "addRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$500(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;ILjava/lang/String;IILandroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected bootCompleted()V
    .locals 4

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mDumpRecordTask:Lcom/android/server/power/HtcWakeLockMonitor$DumpRecordTask;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    :cond_0
    return-void
.end method

.method protected screenState(Z)V
    .locals 14
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 161
    iget-boolean v9, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z

    if-nez v9, :cond_1

    .line 162
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    .line 163
    const-string v8, "HtcWLM"

    const-string v9, "screenState: wake lock monitoring is disabled."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v9, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    monitor-enter v9

    .line 170
    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    if-eqz v10, :cond_3

    if-nez p1, :cond_3

    iget-object v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z
    invoke-static {v10}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$400(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 171
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    .line 218
    :cond_2
    :goto_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 173
    :cond_3
    if-eqz p1, :cond_2

    .line 176
    :try_start_1
    iget-boolean v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z

    if-nez v10, :cond_4

    .line 178
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V

    .line 181
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 182
    .local v4, "NOW":J
    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J

    sub-long v2, v4, v10

    .line 183
    .local v2, "ELAPSED":J
    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v10, v2, v10

    if-ltz v10, :cond_8

    .line 186
    :try_start_2
    iget-object v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-direct {p0, v10, v12, v13}, Lcom/android/server/power/HtcWakeLockMonitor;->getSumByOffset([[JJ)[J

    move-result-object v7

    .line 187
    .local v7, "result":[J
    const/4 v10, 0x0

    aget-wide v10, v7, v10

    iput-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    .line 188
    const/4 v10, 0x1

    aget-wide v10, v7, v10

    iput-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    .line 191
    iget-wide v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    div-long/2addr v10, v12

    long-to-int v1, v10

    .line 192
    .local v1, "RATIO":I
    iget v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    if-lt v1, v10, :cond_6

    .line 194
    .local v0, "ASSIGN":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    .line 195
    const-string v10, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: monitoring task "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v0, :cond_7

    const-string v8, "assigned."

    :goto_3
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " ratio="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "ms/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "ms="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", SCREEN_OFF_RATIO="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p0, Lcom/android/server/power/HtcWakeLockMonitor;->SCREEN_OFF_RATIO:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_5
    if-eqz v0, :cond_2

    .line 203
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mWLM_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mMonitorTask:Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 205
    .end local v0    # "ASSIGN":Z
    .end local v1    # "RATIO":I
    .end local v7    # "result":[J
    :catch_0
    move-exception v6

    .line 206
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    .line 207
    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: Exception caught. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "RATIO":I
    .restart local v7    # "result":[J
    :cond_6
    move v0, v8

    .line 192
    goto/16 :goto_2

    .line 195
    .restart local v0    # "ASSIGN":Z
    :cond_7
    :try_start_4
    const-string v8, "not assigned."
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 211
    .end local v0    # "ASSIGN":Z
    .end local v1    # "RATIO":I
    .end local v7    # "result":[J
    :cond_8
    :try_start_5
    iget-boolean v8, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    .line 212
    const-string v8, "HtcWLM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenState: monitoring task skipped.("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method protected stopDeadRecord(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    .line 243
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "HtcWLM"

    const-string v1, "stopDeadRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->stopDeadRecord(Landroid/os/IBinder;)V
    invoke-static {v0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$700(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_DUMP_RECORD:Z

    if-nez v0, :cond_1

    .line 233
    iget-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "HtcWLM"

    const-string v1, "stopRecord: wake lock monitoring is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$600(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method
