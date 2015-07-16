.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$BootCompletedReceiver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$omadmSettingsObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final DATA_PATH:Ljava/io/File;

.field static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_CRITICAL_THRESHOLD_MAX_BYTES:I = 0x1400000

.field private static final DEFAULT_CRITICAL_THRESHOLD_MAX_BYTES_FOR_FUSE:I = 0x7800000

.field private static final DEFAULT_CRITICAL_THRESHOLD_PERCENTAGE:I = 0x5

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final HTC_CUST_DEVICE_TYPE_PHONE:I = 0x1

.field private static final HTC_CUST_DEVICE_TYPE_TABLET:I = 0x2

.field private static final HTC_CUST_KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final HTC_CUST_KEY_HAS_LMW:Ljava/lang/String; = "storage_has_lmw"

.field private static final HTC_CUST_NAME_CORE_FRAMEWORK:Ljava/lang/String; = "Android_Core_Framework"

.field private static final HTC_CUST_NAME_SYSTEM:Ljava/lang/String; = "System"

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field private static final NO_MORE_SMS_NOTIFICATION_ID:I = 0x2

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SETTING_KEY_OMADM_THRESHOLD:Ljava/lang/String; = "omadm.fumo.storage.cap"

.field private static final SMS_AVAILABLE_THRESHOLD:J = 0x80000L

.field private static final SYSTEM_PATH:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field static final localLOGV:Z

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static mSmsStorageBootCheck:I


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private final mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

.field mClearSucceeded:Z

.field mClearingCache:Z

.field private mCriticalMemFlag:Z

.field private final mDataFileStats:Landroid/os/StatFs;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field private final mHandler:Landroid/os/Handler;

.field private final mIsBootImageOnDisk:Z

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field mLowMemFlag:Z

.field private mLowOmaDmMemFlag:Z

.field private mLowOmaDmMemThreshold:J

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemCriticalThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field mMemLowThreshold:J

.field private mMemNotifyTipsThreshold:J

.field private mNewLowOmaDmMemThreshold:J

.field private mNoSmsMemFlag:Z

.field private mOmaDmStorageOKIntent:Landroid/content/Intent;

.field private final mRemoteService:Landroid/os/IBinder;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSmsStorageLowIntent:Landroid/content/Intent;

.field private mSmsStorageOkIntent:Landroid/content/Intent;

.field private mStorageEnterCriticalIntent:Landroid/content/Intent;

.field private final mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLeaveCriticalIntent:Landroid/content/Intent;

.field private final mStorageLowIntent:Landroid/content/Intent;

.field private final mStorageNotFullIntent:Landroid/content/Intent;

.field private final mStorageOkIntent:Landroid/content/Intent;

.field private final mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private final mTotalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    .line 145
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    .line 146
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    .line 195
    const/4 v0, 0x3

    sput v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v4, 0x4000000

    const/4 v2, 0x0

    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 127
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    .line 140
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    .line 141
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    .line 148
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 149
    iput-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 218
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 583
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 601
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    .line 509
    iput-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    .line 511
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    .line 513
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    .line 514
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    .line 515
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    .line 517
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    .line 521
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->prepareStorageCriticalIntent()V

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    .line 525
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    .line 527
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    .line 529
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    .line 531
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 532
    return-void
.end method

.method private InitialForOmaDm()V
    .locals 5

    .prologue
    .line 489
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.OMA_DM_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    .line 491
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "omadm.fumo.storage.cap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    .line 493
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "omadm.fumo.storage.cap"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/storage/DeviceStorageMonitorService$omadmSettingsObserver;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/storage/DeviceStorageMonitorService$omadmSettingsObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 496
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/storage/DeviceStorageMonitorService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    return v0
.end method

.method private final cancelCriticalNotification()V
    .locals 4

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 900
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending leave critical memory Intent, freeMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMemCriticalThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 903
    return-void
.end method

.method private cancelFullNotification()V
    .locals 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 737
    return-void
.end method

.method private cancelNotification()V
    .locals 5

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 710
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 714
    .local v1, "mNotificationMgr":Landroid/app/NotificationManager;
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->hasLowMemoryWizardApp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 718
    :cond_0
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 719
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 720
    return-void
.end method

.method private final cancelSmsStorageNotification()V
    .locals 3

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 814
    .local v0, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 816
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 817
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 818
    return-void
.end method

.method private final checkAvailableOmaDmMemory()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "bThresholdChange":Z
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    .line 441
    .local v4, "remainMem":J
    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J

    mul-long/2addr v6, v8

    mul-long v2, v6, v8

    .line 445
    .local v2, "nThreshold":J
    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_0

    .line 446
    const/4 v0, 0x1

    .line 447
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    .line 448
    const-string v1, "DeviceStorageMonitorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMA DM Low Memory threshold = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_2

    .line 452
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 456
    :cond_2
    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemThreshold:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 457
    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 458
    :cond_3
    const-string v1, "DeviceStorageMonitorService"

    const-string v6, "Running out of memory for OMA DM."

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    .line 461
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 466
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_1

    .line 467
    :cond_5
    const-string v1, "DeviceStorageMonitorService"

    const-string v6, "OMA DM Memory available. send Intents.ACTION_OMA_DM_STORAGE_OK"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mOmaDmStorageOKIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 469
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowOmaDmMemFlag:Z

    goto :goto_0
.end method

.method private final checkAvailableSmsMemory(Z)V
    .locals 4
    .param p1, "checkCache"    # Z

    .prologue
    .line 408
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 409
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v0, :cond_2

    .line 410
    :cond_0
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "Running out of memory for SMS. Sending notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v0, :cond_1

    .line 412
    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendSmsStorageNotification()V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    .line 431
    :cond_2
    :goto_0
    return-void

    .line 420
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    if-nez v0, :cond_4

    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v0, :cond_2

    .line 422
    :cond_4
    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    if-lez v0, :cond_5

    .line 423
    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageBootCheck:I

    .line 424
    :cond_5
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelSmsStorageNotification()V

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNoSmsMemFlag:Z

    goto :goto_0
.end method

.method private final checkEnterCriticalMemory()V
    .locals 4

    .prologue
    .line 906
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 908
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    if-nez v0, :cond_0

    .line 909
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendCriticalNotification()V

    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    .line 915
    :cond_0
    return-void
.end method

.method private final checkLeaveCriticalMemory()V
    .locals 4

    .prologue
    .line 918
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 920
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelCriticalNotification()V

    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCriticalMemFlag:Z

    .line 925
    :cond_0
    return-void
.end method

.method private final checkToNotifyTipsApp()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 931
    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemNotifyTipsThreshold:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 932
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "IS_NOTIFIED_HTCTIPS_MAXIMIZE_STORAGE"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 933
    .local v0, "isNotifiedBefore":Z
    :cond_0
    const-string v3, "com.htc.showme"

    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    .line 938
    .local v1, "isShowmeInstalled":Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 939
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotifyToTipsApp()V

    .line 940
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "IS_NOTIFIED_HTCTIPS_MAXIMIZE_STORAGE"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    .end local v0    # "isNotifiedBefore":Z
    .end local v1    # "isShowmeInstalled":Z
    :cond_1
    return-void
.end method

.method private clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    .line 295
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 297
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 300
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-boolean v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 305
    iput-boolean v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private getCriticalMemThreshold()J
    .locals 2

    .prologue
    .line 871
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7800000

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1400000

    goto :goto_0
.end method

.method private static getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 972
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    .line 973
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    .line 974
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 978
    :goto_0
    return-object v0

    .line 976
    :cond_0
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    goto :goto_0

    .line 978
    :cond_1
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method private final hasLowMemoryWizardApp()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 849
    const-string v1, "Android_Core_Framework"

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 850
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v1, :cond_0

    .line 851
    sget-object v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "storage_has_lmw"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 853
    :cond_0
    return v0
.end method

.method private static isBootImageOnDisk()Z
    .locals 5

    .prologue
    .line 535
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 536
    .local v2, "instructionSet":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 537
    const/4 v4, 0x0

    .line 540
    .end local v2    # "instructionSet":Ljava/lang/String;
    :goto_1
    return v4

    .line 535
    .restart local v2    # "instructionSet":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "instructionSet":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 946
    const/4 v1, 0x0

    .line 948
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    const/4 v1, 0x1

    .line 953
    :goto_0
    return v1

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Package %s is not installed"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareStorageCriticalIntent()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000000

    .line 876
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.DEVICE_STORAGE_CRITICAL_ENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    .line 877
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.DEVICE_STORAGE_CRITICAL_LEAVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    .line 879
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLeaveCriticalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 880
    return-void
.end method

.method private restatDataDir()V
    .locals 22

    .prologue
    .line 242
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 249
    :goto_0
    const-string v7, "debug.freemem"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "debugFreeMem":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 251
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v18, "sys_free_storage_log_interval"

    const-wide/16 v20, 0x2d0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x3c

    mul-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v10, v18, v20

    .line 258
    .local v10, "freeMemLogInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 259
    .local v4, "currTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    cmp-long v7, v18, v10

    if-ltz v7, :cond_2

    .line 261
    :cond_1
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 262
    const-wide/16 v14, -0x1

    .local v14, "mFreeSystem":J
    const-wide/16 v12, -0x1

    .line 264
    .local v12, "mFreeCache":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v14, v18, v20

    .line 271
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    sget-object v18, Lcom/android/server/storage/DeviceStorageMonitorService;->CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v12, v18, v20

    .line 277
    :goto_2
    const/16 v7, 0xaba

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 281
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;

    const-string v18, "disk_free_change_reporting_threshold"

    const-wide/32 v20, 0x200000

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 285
    .local v16, "threshold":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 286
    .local v8, "delta":J
    cmp-long v7, v8, v16

    if-gtz v7, :cond_3

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v7, v8, v18

    if-gez v7, :cond_4

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    .line 288
    const/16 v7, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v7, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 290
    :cond_4
    return-void

    .line 274
    .end local v8    # "delta":J
    .end local v16    # "threshold":J
    .restart local v12    # "mFreeCache":J
    .restart local v14    # "mFreeSystem":J
    :catch_0
    move-exception v7

    goto :goto_2

    .line 267
    :catch_1
    move-exception v7

    goto/16 :goto_1

    .line 245
    .end local v4    # "currTime":J
    .end local v6    # "debugFreeMem":Ljava/lang/String;
    .end local v10    # "freeMemLogInterval":J
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method private final sendCriticalNotification()V
    .locals 4

    .prologue
    .line 889
    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending enter critical memory Intent, freeMemory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMemCriticalThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageEnterCriticalIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 892
    return-void
.end method

.method private sendFullNotification()V
    .locals 3

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 728
    return-void
.end method

.method private sendNotification()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 659
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 662
    .local v0, "context":Landroid/content/Context;
    const/16 v3, 0xab9

    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v3, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 664
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string v3, "memory"

    iget-wide v12, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 668
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 672
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    sget v3, Lcom/flyme/internal/R$string;->low_internal_storage_view_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 674
    .local v10, "title":Ljava/lang/CharSequence;
    iget-boolean v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    if-eqz v3, :cond_2

    const v3, #android:string@low_internal_storage_view_text#t

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 677
    .local v6, "details":Ljava/lang/CharSequence;
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 680
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, #android:drawable@stat_notify_disk_full#t

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, #android:color@system_notification_accent_color#t

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v3, "sys"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 693
    .local v9, "notification":Landroid/app/Notification;
    const-wide/16 v12, 0x0

    iput-wide v12, v9, Landroid/app/Notification;->when:J

    .line 694
    iget v1, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v9, Landroid/app/Notification;->flags:I

    .line 695
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->hasLowMemoryWizardApp()Z

    move-result v1

    if-nez v1, :cond_3

    .line 696
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v11, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 701
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 702
    return-void

    .line 664
    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto/16 :goto_0

    .line 674
    .restart local v2    # "lowMemIntent":Landroid/content/Intent;
    .restart local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_2
    const v3, #android:string@low_internal_storage_view_text_no_boot#t

    goto :goto_1

    .line 699
    .restart local v6    # "details":Ljava/lang/CharSequence;
    .restart local v7    # "intent":Landroid/app/PendingIntent;
    .restart local v9    # "notification":Landroid/app/Notification;
    :cond_3
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "DeviceStorageMonitorService"

    const-string v3, "Not to issue Low Memory Notification, due to LMW app will do it"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sendNotifyToTipsApp()V
    .locals 3

    .prologue
    .line 957
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 958
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.htc.learnmore.LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    const-string v1, "callingApp"

    const-string v2, "DeviceStorageMonitorService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-settings-maximize_storage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    const-string v1, "actionToDo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 965
    const-string v1, "DeviceStorageMonitorService"

    const-string v2, "checkToNotifyTipsApp and send intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return-void
.end method

.method private final sendSmsStorageNotification()V
    .locals 18

    .prologue
    .line 747
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v6, "lowMemIntent":Landroid/content/Intent;
    const-string v14, "memory"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 749
    const/high16 v14, 0x10000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 753
    .local v7, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v9, 0x0

    .line 755
    .local v9, "rc":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.htc"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 760
    :goto_0
    const v14, 0x2040196

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 763
    .local v11, "title":Ljava/lang/CharSequence;
    const-wide/32 v12, 0x80000

    .line 764
    .local v12, "storageLimit":J
    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    .line 765
    const-string v14, "%dKB"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 767
    .local v10, "sStorageLimit":Ljava/lang/String;
    const v14, 0x2040197

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, "details":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v6, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .local v5, "intent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .local v8, "notification":Landroid/app/Notification;
    const v4, #android:drawable@stat_notify_disk_full#t

    .local v4, "icon":I
    iput v4, v8, Landroid/app/Notification;->icon:I

    iput-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/app/Notification;->when:J

    iget v14, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x2

    iput v14, v8, Landroid/app/Notification;->flags:I

    const/4 v14, 0x1

    iput v14, v8, Landroid/app/Notification;->visibility:I

    const-string v14, "sys"

    iput-object v14, v8, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v14, "System"

    invoke-static {v14}, Lcom/android/server/storage/DeviceStorageMonitorService;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v14

    sput-object v14, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 785
    sget-object v14, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/server/storage/DeviceStorageMonitorService;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v15, "device_type"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v8, v14, v11, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 800
    :goto_1
    const/4 v14, 0x2

    invoke-virtual {v7, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 803
    return-void

    .line 756
    .end local v2    # "details":Ljava/lang/CharSequence;
    .end local v4    # "icon":I
    .end local v5    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v10    # "sStorageLimit":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v12    # "storageLimit":J
    :catch_0
    move-exception v3

    .line 757
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 792
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "details":Ljava/lang/CharSequence;
    .restart local v4    # "icon":I
    .restart local v5    # "intent":Landroid/app/PendingIntent;
    .restart local v8    # "notification":Landroid/app/Notification;
    .restart local v10    # "sStorageLimit":Ljava/lang/String;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    .restart local v12    # "storageLimit":J
    :cond_0
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, #android:layout@status_bar_latest_event_content#t

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v14, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v14, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v15, #android:id@icon#t

    invoke-virtual {v14, v15, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v14, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v15, #android:id@title#t

    invoke-virtual {v14, v15, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v14, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v15, #android:id@text#t

    invoke-virtual {v14, v15, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v5, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1
.end method


# virtual methods
.method checkMemory(Z)V
    .locals 10
    .param p1, "checkCache"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 314
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v2, :cond_1

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v2, v4

    .line 318
    .local v0, "diffTime":J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 319
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread that clears cache file seems to run for ever"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v0    # "diffTime":J
    :cond_0
    :goto_0
    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v9, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 402
    return-void

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->restatDataDir()V

    .line 323
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    const-string v2, "DeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeMemory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMemLowThreshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_2
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkLeaveCriticalMemory()V

    .line 329
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkToNotifyTipsApp()V

    .line 333
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 334
    if-eqz p1, :cond_6

    .line 340
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 343
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mThreadStartTime:J

    .line 349
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 350
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->clearCache()V

    .line 378
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkEnterCriticalMemory()V

    .line 381
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    if-nez v2, :cond_4

    .line 382
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "No boot image on disk due to lack of space. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    .line 385
    :cond_4
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 386
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v2, :cond_5

    .line 387
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendFullNotification()V

    .line 388
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    .line 396
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkAvailableSmsMemory(Z)V

    .line 397
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkAvailableOmaDmMemory()V

    goto/16 :goto_0

    .line 356
    :cond_6
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 357
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_3

    .line 360
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Running low on memory. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->sendNotification()V

    .line 362
    iput-boolean v9, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 369
    :cond_7
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 370
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v2, :cond_3

    .line 371
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Memory available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelNotification()V

    .line 373
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    .line 391
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v2, :cond_5

    .line 392
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->cancelFullNotification()V

    .line 393
    iput-boolean v8, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_2
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 620
    .local v0, "context":Landroid/content/Context;
    const-string v1, "Current DeviceStorageMonitor state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    const-string v1, "  mFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    const-string v1, " mTotalMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    const-string v1, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string v1, "  mLastReportedFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    const-string v1, " mLastReportedFreeMemTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 633
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 635
    const-string v1, "  mLowMemFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 636
    const-string v1, " mMemFullFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 637
    const-string v1, " mIsBootImageOnDisk="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mIsBootImageOnDisk:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 639
    const-string v1, "  mClearSucceeded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 640
    const-string v1, " mClearingCache="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 642
    const-string v1, "  mMemLowThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    const-string v1, " mMemFullThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string v1, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    const-string v1, " mMemCacheTrimToThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    .line 551
    .local v1, "sm":Landroid/os/storage/StorageManager;
    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    .line 552
    sget-object v2, Lcom/android/server/storage/DeviceStorageMonitorService;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    .line 554
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SMS_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageLowIntent:Landroid/content/Intent;

    .line 555
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.SMS_STORAGE_OK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmsStorageOkIntent:Landroid/content/Intent;

    .line 556
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/storage/DeviceStorageMonitorService$BootCompletedReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/storage/DeviceStorageMonitorService$BootCompletedReceiver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getCriticalMemThreshold()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCriticalThreshold:J

    .line 562
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemNotifyTipsThreshold:J

    .line 565
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemFullThreshold:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    .line 566
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-wide v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemCacheTrimToThreshold:J

    .line 568
    iget-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalMemory:J

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFreeMemAfterLastCacheClear:J

    .line 574
    new-instance v2, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v2}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 575
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v2}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 577
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->InitialForOmaDm()V

    .line 579
    const-string v2, "devicestoragemonitor"

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 580
    const-class v2, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 581
    return-void
.end method

.method postCheckMemoryMsg(ZJ)V
    .locals 6
    .param p1, "clearCache"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 501
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 505
    return-void

    :cond_0
    move v0, v2

    .line 502
    goto :goto_0
.end method
