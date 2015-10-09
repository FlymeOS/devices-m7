.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$ProcessListThread;,
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final WIRELESSDISPLAYSERVICE_CLASS:Ljava/lang/String; = "com.htc.server.WirelessDisplayServiceBinder"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeviceManager3LM:Lcom/android/server/DeviceManager3LMService;

.field private mDeviceRootMonitor:Lcom/android/server/HtcDeviceRootMonitor;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSupport3LM:Z

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mSupport3LM:Z

    return v0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 370
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 371
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 372
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 373
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 212
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "cryptState":Ljava/lang/String;
    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    const-string v1, "SystemServer"

    const-string v2, "preParsing package begin..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->preParsing()V

    .line 217
    const-string v1, "SystemServer"

    const-string v2, "preParsing package end..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    new-instance v1, Lcom/android/server/SystemServer;

    invoke-direct {v1}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v1}, Lcom/android/server/SystemServer;->run()V

    .line 226
    return-void

    .line 219
    :cond_0
    const-string v1, "SystemServer"

    const-string v2, "Device encrypted - only parsing core apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_1
    const-string v1, "SystemServer"

    const-string v2, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 353
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 356
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 359
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 360
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 367
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 362
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 329
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 239
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 244
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 254
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 259
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 260
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 269
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 273
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 277
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 281
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 284
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 287
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 290
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 293
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 298
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 301
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 304
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 305
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 310
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 311
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 325
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :catch_0
    move-exception v6

    .line 313
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 386
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 389
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->support3LM()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mSupport3LM:Z

    .line 390
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mSupport3LM:Z

    if-eqz v1, :cond_0

    .line 391
    const-string v1, "SystemServer"

    const-string v3, "DeviceManager3LM"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDeviceManager3LM:Lcom/android/server/DeviceManager3LMService;

    .line 393
    const-string v1, "DeviceManager3LM"

    iget-object v3, p0, Lcom/android/server/SystemServer;->mDeviceManager3LM:Lcom/android/server/DeviceManager3LMService;

    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 400
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 406
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 410
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 414
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 417
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 420
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "cryptState":Ljava/lang/String;
    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    const-string v1, "SystemServer"

    const-string v3, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 430
    :cond_1
    :goto_0
    const-string v1, "SystemServer"

    const-string v3, "Package Manager"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v1, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 433
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 434
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 436
    const-string v1, "SystemServer"

    const-string v2, "User Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v1, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 440
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 443
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 444
    return-void

    .line 424
    :cond_2
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    const-string v1, "SystemServer"

    const-string v3, "Device encrypted - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 431
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 454
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 457
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 458
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 462
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 463
    return-void
.end method

.method private startOtherServices()V
    .locals 112

    .prologue
    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 471
    .local v3, "context":Landroid/content/Context;
    const/16 v32, 0x0

    .line 472
    .local v32, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v52, 0x0

    .line 473
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    const/16 v105, 0x0

    .line 474
    .local v105, "vibrator":Lcom/android/server/VibratorService;
    const/16 v36, 0x0

    .line 475
    .local v36, "alarm":Landroid/app/IAlarmManager;
    const/16 v82, 0x0

    .line 476
    .local v82, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 477
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 478
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v84, 0x0

    .line 479
    .local v84, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v48, 0x0

    .line 480
    .local v48, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v85, 0x0

    .line 481
    .local v85, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v96, 0x0

    .line 482
    .local v96, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v111, 0x0

    .line 483
    .local v111, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v43, 0x0

    .line 484
    .local v43, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v104, 0x0

    .line 485
    .local v104, "usb":Lcom/android/server/usb/UsbService;
    const/16 v94, 0x0

    .line 486
    .local v94, "serial":Lcom/android/server/SerialService;
    const/16 v88, 0x0

    .line 487
    .local v88, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v45, 0x0

    .line 488
    .local v45, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v68, 0x0

    .line 489
    .local v68, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v100, 0x0

    .line 490
    .local v100, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v50, 0x0

    .line 491
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v40, 0x0

    .line 492
    .local v40, "audioService":Landroid/media/AudioService;
    const/16 v81, 0x0

    .line 494
    .local v81, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v64, 0x0

    .line 497
    .local v64, "htchardware":Lcom/android/server/HtcHardwareService;
    const/16 v34, 0x0

    .line 500
    .local v34, "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 501
    .local v60, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 502
    .local v57, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 503
    .local v55, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 504
    .local v62, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 505
    .local v56, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 506
    .local v61, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 507
    .local v59, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 508
    .local v58, "disableNetwork":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v71

    .line 511
    .local v71, "isEmulator":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 514
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 517
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v101, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v101

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_42

    .line 519
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v101

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 521
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 524
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 529
    :try_start_2
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v33, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 531
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v4, "account"

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_43

    move-object/from16 v32, v33

    .line 536
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v52

    .line 540
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 543
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v106, Lcom/android/server/VibratorService;

    move-object/from16 v0, v106

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 545
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    :try_start_5
    const-string v4, "vibrator"

    move-object/from16 v0, v106

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 548
    const-string v4, "SystemServer"

    const-string v5, "Hardware Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v65, Lcom/android/server/HtcHardwareService;

    move-object/from16 v0, v65

    invoke-direct {v0, v3}, Lcom/android/server/HtcHardwareService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_44

    .line 550
    .end local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    .local v65, "htchardware":Lcom/android/server/HtcHardwareService;
    :try_start_6
    const-string v4, "htchardware"

    move-object/from16 v0, v65

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 552
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v51, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v51

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_45

    .line 554
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v51, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string v4, "consumer_ir"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 557
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v36

    .line 560
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v110

    .line 562
    .local v110, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v110

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 564
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v69, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_46

    .line 567
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v42, 0x1

    .line 570
    .local v42, "bShowBootMsg":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->hasDeferredDexOpt()Z

    move-result v42

    .line 574
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2e

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v111

    .line 580
    const-string v4, "window"

    move-object/from16 v0, v111

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 581
    const-string v4, "input"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v4, v111

    invoke-static {v0, v4}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v111

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 585
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 586
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/input/InputManagerService;->start()V

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 592
    const-string v4, "SystemServer"

    const-string v5, "Htc ActiveEngine Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v35, Lcom/android/server/HtcActiveEngineManager;

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Lcom/android/server/HtcActiveEngineManager;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_47

    .line 599
    .end local v34    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .local v35, "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    if-eqz v71, :cond_2f

    .line 600
    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_3
    move-object/from16 v34, v35

    .end local v35    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v34    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    move-object/from16 v64, v65

    .end local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v100, v101

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v105, v106

    .line 618
    .end local v42    # "bShowBootMsg":Z
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .end local v110    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :goto_4
    const/16 v97, 0x0

    .line 619
    .local v97, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v90, 0x0

    .line 620
    .local v90, "notification":Landroid/app/INotificationManager;
    const/16 v66, 0x0

    .line 621
    .local v66, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v108, 0x0

    .line 622
    .local v108, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v72, 0x0

    .line 623
    .local v72, "location":Lcom/android/server/LocationManagerService;
    const/16 v53, 0x0

    .line 624
    .local v53, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v102, 0x0

    .line 625
    .local v102, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v74, 0x0

    .line 626
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v38, 0x0

    .line 627
    .local v38, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v78, 0x0

    .line 630
    .local v78, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 634
    :try_start_a
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v67, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v67

    move-object/from16 v1, v111

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 636
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v67, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_b
    const-string v4, "input_method"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_41

    move-object/from16 v66, v67

    .line 642
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_5
    :try_start_c
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 652
    :cond_1
    :goto_6
    :try_start_d
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 657
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 658
    if-nez v60, :cond_2

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 665
    :try_start_e
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v83, Lcom/android/server/MountService;

    move-object/from16 v0, v83

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 667
    .end local v82    # "mountService":Lcom/android/server/MountService;
    .local v83, "mountService":Lcom/android/server/MountService;
    :try_start_f
    const-string v4, "mount"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_40

    move-object/from16 v82, v83

    .line 675
    .end local v83    # "mountService":Lcom/android/server/MountService;
    .restart local v82    # "mountService":Lcom/android/server/MountService;
    :cond_2
    :goto_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 681
    :goto_9
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040487

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_3f

    .line 688
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    .line 689
    if-nez v59, :cond_4

    .line 691
    :try_start_12
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v75, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v75

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 693
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v75, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_13
    const-string v4, "lock_settings"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3e

    move-object/from16 v74, v75

    .line 698
    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_b
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 704
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 707
    :cond_4
    if-nez v61, :cond_5

    .line 709
    :try_start_14
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v98, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v111

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 711
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v98, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_15
    const-string v4, "statusbar"

    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3d

    move-object/from16 v97, v98

    .line 717
    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_5
    :goto_c
    if-nez v59, :cond_6

    .line 719
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 727
    :cond_6
    :goto_d
    if-nez v58, :cond_7

    .line 729
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 731
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 737
    :cond_7
    :goto_e
    if-nez v59, :cond_8

    .line 739
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v103, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v103

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    .line 741
    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v103, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_19
    const-string v4, "textservices"

    move-object/from16 v0, v103

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3c

    move-object/from16 v102, v103

    .line 747
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_8
    :goto_f
    if-nez v58, :cond_34

    .line 749
    :try_start_1a
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v86, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v86

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .line 751
    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v86, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1b
    const-string v4, "network_score"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3b

    move-object/from16 v85, v86

    .line 757
    .end local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_10
    :try_start_1c
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v87, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v87

    move-object/from16 v1, v36

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 759
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v87, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v4, "netstats"

    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3a

    move-object/from16 v6, v87

    .line 765
    .end local v87    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_11
    :try_start_1e
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .line 770
    .end local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_39

    .line 775
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 787
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePppoeAndSambaService(Lcom/android/server/SystemServer;)V

    :try_start_20
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v49, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 790
    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v49, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_21
    const-string v4, "connectivity"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 791
    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 792
    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_38

    move-object/from16 v48, v49

    .line 798
    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v96

    .line 800
    const-string v4, "servicediscovery"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 810
    :goto_14
    :try_start_23
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v76

    .line 811
    .local v76, "mHtcCustomizationManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_MLHD"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v4, v5, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v91

    .line 812
    .local v91, "reader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "supportMLHD"

    const/4 v5, 0x1

    move-object/from16 v0, v91

    invoke-interface {v0, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 813
    .local v99, "supportMLHD":Z
    const-string v4, "ro.bootmode"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "factory"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v70

    .line 815
    .local v70, "isBootMFG":Z
    if-nez v70, :cond_a

    .line 817
    if-eqz v99, :cond_a

    .line 818
    const-string v4, "ro.sys.medialink"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 820
    .local v77, "mMediaLinkEnabled":Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 821
    const-string v4, "SystemServer"

    const-string v5, "WirelessDisplay Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.htc.server.WirelessDisplayServiceBinder"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 836
    .end local v70    # "isBootMFG":Z
    .end local v76    # "mHtcCustomizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v77    # "mMediaLinkEnabled":Ljava/lang/String;
    .end local v91    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v99    # "supportMLHD":Z
    :cond_a
    :goto_15
    if-nez v59, :cond_b

    .line 838
    :try_start_24
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 851
    :cond_b
    :goto_16
    if-eqz v82, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_c

    .line 852
    invoke-virtual/range {v82 .. v82}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 856
    :cond_c
    if-eqz v32, :cond_d

    .line 857
    :try_start_25
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_14

    .line 863
    :cond_d
    :goto_17
    if-eqz v52, :cond_e

    .line 864
    :try_start_26
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15

    .line 869
    :cond_e
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 870
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v90

    .line 872
    move-object/from16 v0, v90

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 876
    if-nez v56, :cond_f

    .line 878
    :try_start_27
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v73, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16

    .line 880
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .local v73, "location":Lcom/android/server/LocationManagerService;
    :try_start_28
    const-string v4, "location"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_37

    move-object/from16 v72, v73

    .line 886
    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    :goto_19
    :try_start_29
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v54, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v54

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17

    .line 888
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v54, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2a
    const-string v4, "country_detector"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_36

    move-object/from16 v53, v54

    .line 894
    .end local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_1a
    if-nez v59, :cond_10

    .line 896
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_18

    .line 905
    :cond_10
    :goto_1b
    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_19

    .line 912
    :goto_1c
    if-nez v59, :cond_11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 915
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v109, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v109

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 917
    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v109, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2e
    const-string v4, "wallpaper"

    move-object/from16 v0, v109

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_35

    move-object/from16 v108, v109

    .line 923
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_11
    :goto_1d
    if-nez v57, :cond_12

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 925
    :try_start_2f
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v41, Landroid/media/AudioService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1b

    .line 927
    .end local v40    # "audioService":Landroid/media/AudioService;
    .local v41, "audioService":Landroid/media/AudioService;
    :try_start_30
    const-string v4, "audio"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_34

    move-object/from16 v40, v41

    .line 933
    .end local v41    # "audioService":Landroid/media/AudioService;
    .restart local v40    # "audioService":Landroid/media/AudioService;
    :cond_12
    :goto_1e
    if-nez v59, :cond_13

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 937
    :cond_13
    if-nez v57, :cond_14

    .line 939
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v68

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1c

    .line 948
    :cond_14
    :goto_1f
    if-nez v59, :cond_17

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 953
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 957
    :cond_16
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v95, Lcom/android/server/SerialService;

    move-object/from16 v0, v95

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .line 960
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .local v95, "serial":Lcom/android/server/SerialService;
    :try_start_33
    const-string v4, "serial"

    move-object/from16 v0, v95

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_33

    move-object/from16 v94, v95

    .line 966
    .end local v95    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    :cond_17
    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 972
    if-nez v59, :cond_1a

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 977
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 981
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 987
    :cond_1a
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .line 998
    :goto_21
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1f

    .line 1005
    :goto_22
    if-nez v58, :cond_1b

    .line 1007
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v89, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v89

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .end local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v89, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v88, v89

    .line 1014
    .end local v89    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_23
    if-nez v57, :cond_1c

    .line 1016
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v46, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .line 1018
    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v46, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_38
    const-string v4, "commontime_management"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_32

    move-object/from16 v45, v46

    .line 1025
    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1c
    :goto_24
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mSupport3LM:Z

    if-eqz v4, :cond_1d

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDeviceManager3LM:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v4, v3}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 1030
    const-string v4, "ro.3LM.extended"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 1031
    const-string v4, "SystemServer"

    const-string v5, "3LM OEM Extended Api Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v4, "OemExtendedApi3LM"

    new-instance v5, Lcom/android/server/OemExtendedApi3LMService;

    const/4 v8, 0x0

    invoke-direct {v5, v3, v8}, Lcom/android/server/OemExtendedApi3LMService;-><init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1038
    :cond_1d
    if-nez v58, :cond_1e

    .line 1040
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 1047
    :cond_1e
    :goto_25
    if-nez v59, :cond_1f

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1052
    :cond_1f
    if-nez v59, :cond_20

    goto :goto_flyme_0

    .line 1054
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v39, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_23

    .line 1056
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v39, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3b
    const-string v4, "assetatlas"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_31

    move-object/from16 v38, v39

    .line 1062
    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_20
    :goto_26
    :goto_flyme_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1066
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1074
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1078
    :cond_23
    if-nez v59, :cond_24

    .line 1080
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v79, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_24

    .line 1082
    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v79, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3d
    const-string v4, "media_router"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_30

    move-object/from16 v78, v79

    .line 1087
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1092
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 1100
    :cond_24
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1103
    :goto_29
    if-nez v59, :cond_25

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1108
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->supportSprintExtensionApi()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1110
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "Sprint LTE Connection Service for Extension API"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v4, "lte"

    new-instance v5, Lcom/sprint/net/lte/ConnectionService;

    invoke-direct {v5, v3}, Lcom/sprint/net/lte/ConnectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    .line 1118
    :goto_2a
    :try_start_40
    const-string v4, "SystemServer"

    const-string v5, "Sprint CDMA Connection Service for Extension API"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string v4, "cdma"

    new-instance v5, Lcom/sprint/net/cdma/ConnectionService;

    invoke-direct {v5, v3}, Lcom/sprint/net/cdma/ConnectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .line 1129
    :cond_26
    :goto_2b
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v93

    .line 1130
    .local v93, "safeMode":Z
    if-eqz v93, :cond_33

    .line 1131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1133
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1140
    :goto_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v81

    .end local v81    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v81, Lcom/android/server/MmsServiceBroker;

    .line 1145
    .restart local v81    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v4, v111

    move-object/from16 v5, v108

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_41
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .line 1150
    :goto_2d
    if-eqz v74, :cond_27

    .line 1152
    :try_start_42
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    .line 1159
    :cond_27
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1164
    :try_start_43
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2a

    .line 1169
    :goto_2f
    if-eqz v93, :cond_28

    .line 1170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1176
    :cond_28
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v47

    .line 1177
    .local v47, "config":Landroid/content/res/Configuration;
    new-instance v80, Landroid/util/DisplayMetrics;

    invoke-direct/range {v80 .. v80}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1178
    .local v80, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/view/WindowManager;

    .line 1179
    .local v107, "w":Landroid/view/WindowManager;
    invoke-interface/range {v107 .. v107}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1180
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v47

    move-object/from16 v1, v80

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1200
    :try_start_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    .line 1206
    :goto_30
    :try_start_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .line 1213
    :goto_31
    :try_start_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v93

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2d

    .line 1220
    :goto_32
    :try_start_47
    invoke-static {}, Lcom/htc/server/HtcAppWifiOffload;->getInstance()Lcom/htc/server/HtcAppWifiOffload;

    move-result-object v37

    .line 1221
    .local v37, "appwo":Lcom/htc/server/HtcAppWifiOffload;
    if-eqz v37, :cond_29

    .line 1222
    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lcom/htc/server/HtcAppWifiOffload;->SystemReady(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2e

    .line 1230
    .end local v37    # "appwo":Lcom/htc/server/HtcAppWifiOffload;
    :cond_29
    :goto_33
    move-object/from16 v11, v82

    .line 1231
    .local v11, "mountServiceF":Lcom/android/server/MountService;
    move-object v13, v7

    .line 1232
    .local v13, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v14, v6

    .line 1233
    .local v14, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v15, v2

    .line 1234
    .local v15, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v16, v48

    .line 1235
    .local v16, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v12, v85

    .line 1236
    .local v12, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v18, v108

    .line 1237
    .local v18, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v19, v66

    .line 1238
    .local v19, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v21, v72

    .line 1239
    .local v21, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v22, v53

    .line 1240
    .local v22, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v23, v88

    .line 1241
    .local v23, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v24, v45

    .line 1242
    .local v24, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v25, v102

    .line 1243
    .local v25, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v20, v97

    .line 1244
    .local v20, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v26, v38

    .line 1245
    .local v26, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v27, v68

    .line 1246
    .local v27, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v28, v100

    .line 1247
    .local v28, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v29, v78

    .line 1248
    .local v29, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v40

    .line 1249
    .local v17, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v30, v81

    .line 1252
    .local v30, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mDeviceManager3LM:Lcom/android/server/DeviceManager3LMService;

    move-object/from16 v31, v0

    .line 1260
    .local v31, "deviceManagerF":Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v31}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/DeviceManager3LMService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1410
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2a

    .line 1411
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/Binder;->logExecTransact(Z)V

    .line 1417
    :cond_2a
    :try_start_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getRootPeriod()I

    move-result v92

    .line 1419
    .local v92, "root_period":I
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2b

    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Htc Device Root Monitor, root_period: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v92

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_2b
    if-lez v92, :cond_2c

    .line 1421
    new-instance v4, Lcom/android/server/HtcDeviceRootMonitor;

    move/from16 v0, v92

    invoke-direct {v4, v0}, Lcom/android/server/HtcDeviceRootMonitor;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mDeviceRootMonitor:Lcom/android/server/HtcDeviceRootMonitor;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2f

    .line 1427
    .end local v92    # "root_period":I
    :cond_2c
    :goto_34
    return-void

    .line 532
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "mountServiceF":Lcom/android/server/MountService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Landroid/media/AudioService;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v31    # "deviceManagerF":Lcom/android/server/DeviceManager3LMService;
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v80    # "metrics":Landroid/util/DisplayMetrics;
    .end local v90    # "notification":Landroid/app/INotificationManager;
    .end local v93    # "safeMode":Z
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v107    # "w":Landroid/view/WindowManager;
    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v63

    .line 533
    .local v63, "e":Ljava/lang/Throwable;
    :goto_35
    :try_start_49
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_1

    goto/16 :goto_0

    .line 613
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v63

    move-object/from16 v100, v101

    .line 614
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v63, "e":Ljava/lang/RuntimeException;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_36
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 537
    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 574
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "bShowBootMsg":Z
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2e
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 601
    .end local v34    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v35    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    :cond_2f
    :try_start_4a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    .line 602
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 613
    :catch_2
    move-exception v63

    move-object/from16 v34, v35

    .end local v35    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v34    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    move-object/from16 v64, v65

    .end local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v100, v101

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v105, v106

    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_36

    .line 603
    .end local v34    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v35    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    :cond_30
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 605
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 606
    :cond_31
    if-eqz v55, :cond_32

    .line 607
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 609
    :cond_32
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    new-instance v44, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_2

    .line 611
    .end local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v44, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_4b
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_48

    move-object/from16 v43, v44

    .end local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_3

    .line 637
    .end local v35    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v42    # "bShowBootMsg":Z
    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .end local v110    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v34    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v90    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v63

    .line 638
    .local v63, "e":Ljava/lang/Throwable;
    :goto_37
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 645
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v63

    .line 646
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 653
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v63

    .line 654
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 668
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v63

    .line 669
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 676
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v63

    .line 677
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 694
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v63

    .line 695
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 712
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v63

    .line 713
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 722
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v63

    .line 723
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 732
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v63

    .line 733
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 742
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v63

    .line 743
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 752
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v63

    .line 753
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 760
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v63

    .line 761
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 771
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v63

    move-object/from16 v2, v84

    .line 772
    .end local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 793
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v63

    .line 794
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 802
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v63

    .line 803
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 826
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v63

    .line 827
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting WirelessDisplay Service "

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 841
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v63

    .line 842
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 858
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v63

    .line 859
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 865
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v63

    .line 866
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 881
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v63

    .line 882
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 889
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v63

    .line 890
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 899
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v63

    .line 900
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 908
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v63

    .line 909
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 918
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v63

    .line 919
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 928
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v63

    .line 929
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 943
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v63

    .line 944
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 961
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v63

    .line 962
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 989
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v63

    .line 990
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1001
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v63

    .line 1002
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1009
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v63

    .line 1010
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1019
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v63

    .line 1020
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1042
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v63

    .line 1043
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1057
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v63

    .line 1058
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1083
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v63

    .line 1084
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1094
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v63

    .line 1095
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1113
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v63

    .line 1114
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Sprint LTE Connection Service for Extension API"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 1120
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v63

    .line 1121
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Sprint CDMA Connection Service for Extension API"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1136
    .end local v63    # "e":Ljava/lang/Throwable;
    .restart local v93    # "safeMode":Z
    :cond_33
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2c

    .line 1146
    :catch_28
    move-exception v63

    .line 1147
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1153
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v63

    .line 1154
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1165
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v63

    .line 1166
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1201
    .end local v63    # "e":Ljava/lang/Throwable;
    .restart local v47    # "config":Landroid/content/res/Configuration;
    .restart local v80    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v107    # "w":Landroid/view/WindowManager;
    :catch_2b
    move-exception v63

    .line 1202
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1207
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v63

    .line 1208
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1214
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v63

    .line 1215
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1224
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v63

    .line 1225
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making HtcAppWifiOffload ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1423
    .end local v63    # "e":Ljava/lang/Throwable;
    .restart local v11    # "mountServiceF":Lcom/android/server/MountService;
    .restart local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v17    # "audioServiceF":Landroid/media/AudioService;
    .restart local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .restart local v31    # "deviceManagerF":Lcom/android/server/DeviceManager3LMService;
    :catch_2f
    move-exception v63

    .line 1424
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting HtcDeviceRootMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1083
    .end local v11    # "mountServiceF":Lcom/android/server/MountService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Landroid/media/AudioService;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v31    # "deviceManagerF":Lcom/android/server/DeviceManager3LMService;
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v63    # "e":Ljava/lang/Throwable;
    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v80    # "metrics":Landroid/util/DisplayMetrics;
    .end local v93    # "safeMode":Z
    .end local v107    # "w":Landroid/view/WindowManager;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_30
    move-exception v63

    move-object/from16 v78, v79

    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_47

    .line 1057
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_31
    move-exception v63

    move-object/from16 v38, v39

    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_46

    .line 1019
    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_32
    move-exception v63

    move-object/from16 v45, v46

    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_45

    .line 961
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .restart local v95    # "serial":Lcom/android/server/SerialService;
    :catch_33
    move-exception v63

    move-object/from16 v94, v95

    .end local v95    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_44

    .line 928
    .end local v40    # "audioService":Landroid/media/AudioService;
    .restart local v41    # "audioService":Landroid/media/AudioService;
    :catch_34
    move-exception v63

    move-object/from16 v40, v41

    .end local v41    # "audioService":Landroid/media/AudioService;
    .restart local v40    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_43

    .line 918
    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_35
    move-exception v63

    move-object/from16 v108, v109

    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_42

    .line 889
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_36
    move-exception v63

    move-object/from16 v53, v54

    .end local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_41

    .line 881
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v73    # "location":Lcom/android/server/LocationManagerService;
    :catch_37
    move-exception v63

    move-object/from16 v72, v73

    .end local v73    # "location":Lcom/android/server/LocationManagerService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_40

    .line 793
    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_38
    move-exception v63

    move-object/from16 v48, v49

    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3f

    .line 771
    :catch_39
    move-exception v63

    goto/16 :goto_3e

    .line 760
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3a
    move-exception v63

    move-object/from16 v6, v87

    .end local v87    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3d

    .line 752
    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3b
    move-exception v63

    move-object/from16 v85, v86

    .end local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3c

    .line 742
    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3c
    move-exception v63

    move-object/from16 v102, v103

    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3b

    .line 712
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3d
    move-exception v63

    move-object/from16 v97, v98

    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_3a

    .line 694
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3e
    move-exception v63

    move-object/from16 v74, v75

    .end local v75    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_39

    .line 685
    :catch_3f
    move-exception v4

    goto/16 :goto_a

    .line 668
    .end local v82    # "mountService":Lcom/android/server/MountService;
    .restart local v83    # "mountService":Lcom/android/server/MountService;
    :catch_40
    move-exception v63

    move-object/from16 v82, v83

    .end local v83    # "mountService":Lcom/android/server/MountService;
    .restart local v82    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_38

    .line 637
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_41
    move-exception v63

    move-object/from16 v66, v67

    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_37

    .line 613
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v90    # "notification":Landroid/app/INotificationManager;
    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_42
    move-exception v63

    goto/16 :goto_36

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_43
    move-exception v63

    move-object/from16 v100, v101

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v33

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_36

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    :catch_44
    move-exception v63

    move-object/from16 v100, v101

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v105, v106

    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .end local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    :catch_45
    move-exception v63

    move-object/from16 v64, v65

    .end local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    move-object/from16 v100, v101

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v105, v106

    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    :catch_46
    move-exception v63

    move-object/from16 v64, v65

    .end local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v100, v101

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v105, v106

    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "watchdog":Lcom/android/server/Watchdog;
    :catch_47
    move-exception v63

    move-object/from16 v64, v65

    .end local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v100, v101

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v105, v106

    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .end local v34    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .end local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v35    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v42    # "bShowBootMsg":Z
    .restart local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    :catch_48
    move-exception v63

    move-object/from16 v34, v35

    .end local v35    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    .restart local v34    # "activeEngineManager":Lcom/android/server/HtcActiveEngineManager;
    move-object/from16 v64, v65

    .end local v65    # "htchardware":Lcom/android/server/HtcHardwareService;
    .restart local v64    # "htchardware":Lcom/android/server/HtcHardwareService;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v100, v101

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v43, v44

    .end local v44    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v105, v106

    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .line 532
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v42    # "bShowBootMsg":Z
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v110    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_49
    move-exception v63

    move-object/from16 v32, v33

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v90    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_34
    move-object/from16 v2, v84

    .end local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_15

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_35
    move-object/from16 v2, v84

    .end local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_29
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1431
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1434
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1435
    return-void
.end method


# virtual methods
.method getRootPeriod()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1523
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    const-string v2, "Android_Core_Framework"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 1526
    .local v0, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v1, "device_root_monitor_report_period"

    invoke-interface {v0, v1, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method support3LM()Z
    .locals 7

    .prologue
    .line 1532
    const/4 v3, 0x0

    .line 1534
    .local v3, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 1535
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 1536
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "support_3lm"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1540
    .end local v0    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 1537
    :catch_0
    move-exception v2

    .line 1538
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SystemServer"

    const-string v5, "Read customization fail!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method supportSprintExtensionApi()Z
    .locals 7

    .prologue
    .line 335
    const/4 v3, 0x0

    .line 337
    .local v3, "ret":Z
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 338
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_Kernel"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 340
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "support_extension_api"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 341
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support_extension_api = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v0    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot read customization value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
