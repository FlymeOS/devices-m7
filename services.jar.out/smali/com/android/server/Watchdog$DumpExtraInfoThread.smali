.class final Lcom/android/server/Watchdog$DumpExtraInfoThread;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpExtraInfoThread"
.end annotation


# instance fields
.field private mActivity:Lcom/android/server/am/ActivityManagerService;

.field private mWatchdog:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "watchdog"    # Lcom/android/server/Watchdog;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 729
    iput-object p1, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mWatchdog:Lcom/android/server/Watchdog;

    .line 730
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 736
    :try_start_0
    const-string v1, "Watchdog"

    const-string v2, "Dump CPU"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->batteryNeedsCpuUpdate()V

    .line 738
    const-string v1, "dumpsys cpuinfo"

    invoke-static {v1}, Lcom/htc/profileflag/ProfileConfig;->runCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    iget-object v1, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mWatchdog:Lcom/android/server/Watchdog;

    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->setExtraRunning(Z)V

    .line 744
    iput-object v3, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 745
    iput-object v3, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mWatchdog:Lcom/android/server/Watchdog;

    .line 747
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    iget-object v1, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mWatchdog:Lcom/android/server/Watchdog;

    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->setExtraRunning(Z)V

    .line 744
    iput-object v3, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 745
    iput-object v3, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mWatchdog:Lcom/android/server/Watchdog;

    goto :goto_0

    .line 743
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mWatchdog:Lcom/android/server/Watchdog;

    invoke-virtual {v2, v4}, Lcom/android/server/Watchdog;->setExtraRunning(Z)V

    .line 744
    iput-object v3, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 745
    iput-object v3, p0, Lcom/android/server/Watchdog$DumpExtraInfoThread;->mWatchdog:Lcom/android/server/Watchdog;

    throw v1
.end method
