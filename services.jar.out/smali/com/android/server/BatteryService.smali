.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$MzInjector;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$BatteryListener;,
        Lcom/android/server/BatteryService$CPUOverheatRunnable;,
        Lcom/android/server/BatteryService$BatteryOverheatRunnable;,
        Lcom/android/server/BatteryService$VZWLoggerRunnable;,
        Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final DEBUG_SECURITY:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final HTC_BATT_MONITOR_MIN_DISCHARGE_RATE:I = 0x5

.field private static final HTC_BATT_MONITOR_MIN_DURATION:I = 0xdbba00

.field private static LOW_BATTERY_LEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_WAKELOCK_KEY:Ljava/lang/String; = "BatteryServiceUpdateStats_3"

.field private static mOverHeatIntent:Landroid/app/PendingIntent;


# instance fields
.field private final BATTERY_MAX_UPDATE_TIME:I

.field private BATTERY_OVERHEAT_COOLDOWN_TEMPERATURE:I

.field private final BATTERY_OVERHEAT_EVENT_COOL_DOWN:I

.field private final BATTERY_OVERHEAT_EVENT_OVERHEATING:I

.field private final BATTERY_OVERHEAT_EVENT_SHUTDOWN:I

.field private final BATTERY_OVERHEAT_EVENT_SHUTDOWN_COUNTDOWN:I

.field private BATTERY_OVERHEAT_SHUTDOWN_COUNTOWN_TEMPERATURE:I

.field private BATTERY_OVERHEAT_TEMPERATURE:I

.field private OVERHEAT_DEFAULT_TEMPERATURE:[I

.field private final UPDATE_WAKELOCK_TIMEOUT:I

.field private final VZW_LOGGER_EVENT_CODE_OVERHEAT:Ljava/lang/String;

.field private final VZW_LOGGER_EVENT_CODE_OVERHEAT_POWER_CYCLE:Ljava/lang/String;

.field private final VZW_LOGGER_EVENT_CODE_STOP_CHARGING:Ljava/lang/String;

.field private final VZW_LOGGER_INTENT_ACTION:Ljava/lang/String;

.field private final VZW_LOGGER_MONITOR_OVERHEAT_ALARM:Ljava/lang/String;

.field private final VZW_LOGGER_OVERHEAT_TEMPERATURE:I

.field private final VZW_LOGGER_OVERHEAT_TIME:I

.field private mAlarmScheduleTime:J

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryTestChangeCount:I

.field private final mCPUOverheatObserver:Landroid/os/UEventObserver;

.field private final mCancelMonitorOverheatRunnable:Ljava/lang/Runnable;

.field private mChargeStartLevel:I

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mEnableHTCPowerLogUpload:Z

.field private mExtension:I

.field private final mHandler:Landroid/os/Handler;

.field private mHtcBatteryLevelLow:Z

.field private mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mInvalidCharger:I

.field private final mInvalidChargerObserver:Landroid/os/UEventObserver;

.field private mIsBatteryOverheatSupport:Z

.field private mIsBatteryOverheating:Z

.field private mIsBatteryShutdownCountdown:Z

.field private mIsCPUOverheatSupport:Z

.field private mIsMonitorOverheatRunning:Z

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private final mLastBatteryProps:Landroid/os/BatteryProperties;

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastExtension:I

.field private mLastHtcBatteryLevelLow:Z

.field private mLastInvalidCharger:I

.field private mLastOverload:Z

.field private mLastPlugIn:Z

.field private mLastPlugType:I

.field private mLastPowerJacketExist:Z

.field private mLastPowerJacketLevel:I

.field private mLastPowerJacketStatus:I

.field private mLastRealUnsupportedCharger:Z

.field private mLastUnsupportedCharger:Z

.field private mLastUsbOverHeat:Z

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private final mMonitorOverheatRunnable:Ljava/lang/Runnable;

.field private mOverload:Z

.field private mPlugIn:Z

.field private mPlugType:I

.field private mPowerJacketExist:Z

.field private mPowerJacketLevel:I

.field private mPowerJacketStatus:I

.field private mRealUnsupportedCharger:Z

.field private mSentLowBatteryBroadcast:Z

.field private mShutdownBatteryTemperature:I

.field private mSupportVZWQualityLogger:Z

.field private mUnsupportedCharger:Z

.field private mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUpdatesStopped:Z

.field private mUsbOverHeat:Z

.field private mVZWCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private final mVZWLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 121
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    .line 131
    const/16 v0, 0xf

    sput v0, Lcom/android/server/BatteryService;->LOW_BATTERY_LEVEL:I

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--unplugged"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v3, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 138
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mEnableHTCPowerLogUpload:Z

    .line 146
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    .line 147
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mIsMonitorOverheatRunning:Z

    .line 151
    const/16 v2, 0x1c2

    iput v2, p0, Lcom/android/server/BatteryService;->VZW_LOGGER_OVERHEAT_TEMPERATURE:I

    .line 152
    const v2, 0x1d4c0

    iput v2, p0, Lcom/android/server/BatteryService;->VZW_LOGGER_OVERHEAT_TIME:I

    .line 153
    const-string v2, "Q020"

    iput-object v2, p0, Lcom/android/server/BatteryService;->VZW_LOGGER_EVENT_CODE_OVERHEAT:Ljava/lang/String;

    .line 154
    const-string v2, "Q021"

    iput-object v2, p0, Lcom/android/server/BatteryService;->VZW_LOGGER_EVENT_CODE_OVERHEAT_POWER_CYCLE:Ljava/lang/String;

    .line 155
    const-string v2, "Q023"

    iput-object v2, p0, Lcom/android/server/BatteryService;->VZW_LOGGER_EVENT_CODE_STOP_CHARGING:Ljava/lang/String;

    .line 156
    const-string v2, "com.htc.intent.action.battery.VZW_LOGGER_OVERHEAT"

    iput-object v2, p0, Lcom/android/server/BatteryService;->VZW_LOGGER_MONITOR_OVERHEAT_ALARM:Ljava/lang/String;

    .line 157
    const-string v2, "com.htc.intent.action.VZW_LOGGER"

    iput-object v2, p0, Lcom/android/server/BatteryService;->VZW_LOGGER_INTENT_ACTION:Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mVZWLock:Ljava/lang/Object;

    .line 161
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheatSupport:Z

    .line 162
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_TEMPERATURE:I

    .line 163
    const/16 v2, 0x1c2

    iput v2, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_COOLDOWN_TEMPERATURE:I

    .line 164
    const/16 v2, 0x276

    iput v2, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_SHUTDOWN_COUNTOWN_TEMPERATURE:I

    .line 165
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/BatteryService;->OVERHEAT_DEFAULT_TEMPERATURE:[I

    .line 166
    iput v7, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_EVENT_OVERHEATING:I

    .line 167
    iput v9, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_EVENT_COOL_DOWN:I

    .line 168
    iput v8, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_EVENT_SHUTDOWN_COUNTDOWN:I

    .line 169
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_EVENT_SHUTDOWN:I

    .line 170
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheating:Z

    .line 171
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mIsBatteryShutdownCountdown:Z

    .line 173
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mIsCPUOverheatSupport:Z

    .line 180
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 183
    new-instance v2, Landroid/os/BatteryProperties;

    invoke-direct {v2}, Landroid/os/BatteryProperties;-><init>()V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    .line 215
    iput v3, p0, Lcom/android/server/BatteryService;->mLastExtension:I

    .line 254
    iput v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 267
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 282
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/BatteryService;->UPDATE_WAKELOCK_TIMEOUT:I

    .line 288
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/BatteryService;->BATTERY_MAX_UPDATE_TIME:I

    .line 292
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BatteryService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 293
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BatteryService;->mVZWCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 490
    new-instance v2, Lcom/android/server/BatteryService$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mMonitorOverheatRunnable:Ljava/lang/Runnable;

    .line 497
    new-instance v2, Lcom/android/server/BatteryService$2;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mCancelMonitorOverheatRunnable:Ljava/lang/Runnable;

    .line 589
    new-instance v2, Lcom/android/server/BatteryService$3;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mCPUOverheatObserver:Landroid/os/UEventObserver;

    .line 1836
    new-instance v2, Lcom/android/server/BatteryService$19;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$19;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    .line 2032
    iput v6, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    .line 354
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 355
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v7}, Landroid/os/Handler;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 359
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 361
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:integer@config_criticalBatteryWarningLevel#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 363
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:integer@config_lowBatteryWarningLevel#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 365
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:integer@config_lowBatteryCloseWarningBump#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 367
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:integer@config_shutdownBatteryTemperature#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 371
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 373
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string v2, "BatteryServiceUpdateStats_3"

    invoke-virtual {v1, v7, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 374
    iget-object v2, p0, Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 379
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->checkHtcCustomizationReaderForVZW()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/android/server/BatteryService;->mVZWCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "support_quality_logger"

    invoke-interface {v2, v3, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    .line 387
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    if-eqz v2, :cond_1

    .line 388
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "Support VZWQualityLogger"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;-><init>(Lcom/android/server/BatteryService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.intent.action.battery.VZW_LOGGER_OVERHEAT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    invoke-direct {p0}, Lcom/android/server/BatteryService;->checkHtcCustomizationReader()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 397
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "support_battery_overheat_notify"

    invoke-interface {v2, v3, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheatSupport:Z

    .line 398
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "support_cpu_overheat_notify"

    invoke-interface {v2, v3, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mIsCPUOverheatSupport:Z

    .line 399
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 400
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overheat support, bat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheatSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cpu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mIsCPUOverheatSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheatSupport:Z

    if-eqz v2, :cond_4

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "overheat_temperature":[I
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "support_battery_overheat_degree"

    iget-object v4, p0, Lcom/android/server/BatteryService;->OVERHEAT_DEFAULT_TEMPERATURE:[I

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 406
    if-eqz v0, :cond_3

    array-length v2, v0

    if-ne v2, v8, :cond_3

    .line 407
    aget v2, v0, v6

    iput v2, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_TEMPERATURE:I

    .line 408
    aget v2, v0, v7

    iput v2, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_COOLDOWN_TEMPERATURE:I

    .line 409
    aget v2, v0, v9

    iput v2, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_SHUTDOWN_COUNTOWN_TEMPERATURE:I

    .line 411
    :cond_3
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_4

    .line 412
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overheat temp=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_TEMPERATURE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_COOLDOWN_TEMPERATURE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_SHUTDOWN_COUNTOWN_TEMPERATURE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "overheat_temperature":[I
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mIsCPUOverheatSupport:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/BatteryService;->mCPUOverheatObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/thermal/thermal_zone5"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_5

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$MzInjector;->registerBootCompleted(Lcom/android/server/BatteryService;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1f4
        0x1c2
        0x276
    .end array-data
.end method

.method private ULogForBattery(IILjava/lang/String;)V
    .locals 0
    .param p1, "mBatteryLevel"    # I
    .param p2, "mPlugType"    # I
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 1873
    return-void
.end method

.method private ULogForBatteryChargingStateChange(II)V
    .locals 3
    .param p1, "mBatteryLevel"    # I
    .param p2, "mPlugType"    # I

    .prologue
    .line 1857
    const-string v0, "BatteryService_ULog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ULogForBatteryChargingStateChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const-string v0, "battery"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/BatteryService;->ULogForBattery(IILjava/lang/String;)V

    .line 1862
    return-void
.end method

.method private ULogForBatteryLow(II)V
    .locals 3
    .param p1, "mBatteryLevel"    # I
    .param p2, "mPlugType"    # I

    .prologue
    .line 1865
    const-string v0, "BatteryService_ULog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ULogForBatteryLow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const-string v0, "battery_low"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/BatteryService;->ULogForBattery(IILjava/lang/String;)V

    .line 1870
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/FileWriter;
    .param p3, "x3"    # Ljava/lang/Integer;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/FileWriter;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/BatteryService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/os/BatteryProperties;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mVZWLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/server/BatteryService;->mOverHeatIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Landroid/app/PendingIntent;

    .prologue
    .line 118
    sput-object p0, Lcom/android/server/BatteryService;->mOverHeatIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendMonitorOverheatAlarm()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkBatteryIsOverHeating()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 543
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheatSupport:Z

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_TEMPERATURE:I

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-gt v0, v1, :cond_4

    .line 549
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsBatteryShutdownCountdown:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_SHUTDOWN_COUNTOWN_TEMPERATURE:I

    if-lt v0, v1, :cond_3

    .line 550
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$BatteryOverheatRunnable;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$BatteryOverheatRunnable;-><init>(Lcom/android/server/BatteryService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mIsBatteryShutdownCountdown:Z

    .line 558
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheating:Z

    goto :goto_0

    .line 554
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheating:Z

    if-nez v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$BatteryOverheatRunnable;

    invoke-direct {v1, p0, v3}, Lcom/android/server/BatteryService$BatteryOverheatRunnable;-><init>(Lcom/android/server/BatteryService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 560
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->BATTERY_OVERHEAT_COOLDOWN_TEMPERATURE:I

    if-ge v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$BatteryOverheatRunnable;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$BatteryOverheatRunnable;-><init>(Lcom/android/server/BatteryService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 563
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheating:Z

    .line 564
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mIsBatteryShutdownCountdown:Z

    goto :goto_0
.end method

.method private checkFileInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1377
    const/4 v0, 0x0

    .line 1378
    .local v0, "bResult":Z
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1380
    .local v2, "myPackageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1381
    .local v1, "myPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x1

    .line 1385
    .end local v1    # "myPackageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 1382
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 300
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 301
    .local v0, "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 302
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 306
    .restart local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/BatteryService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 309
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 310
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get HtcCustomization, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 320
    goto :goto_0
.end method

.method private checkHtcCustomizationReaderForVZW()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    iget-object v4, p0, Lcom/android/server/BatteryService;->mVZWCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 327
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 328
    .local v0, "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 329
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 333
    .restart local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    const-string v4, "VZWQualityLogger"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/BatteryService;->mVZWCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 336
    iget-object v4, p0, Lcom/android/server/BatteryService;->mVZWCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 337
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "VZWCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get VZWCustomization, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 347
    goto :goto_0
.end method

.method private checkIsNeededToSendIntentForApp()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/16 v2, 0x64

    .line 1546
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/BatteryService;->mExtension:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastExtension:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastUsbOverHeat:Z

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastUnsupportedCharger:Z

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-lt v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ge v0, v2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v3, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v0, v1, :cond_5

    .line 1555
    :cond_3
    sget-boolean v0, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v0, :cond_4

    .line 1556
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "sendIntentForApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_4
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntentForApp()V

    .line 1562
    :cond_5
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1744
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1745
    if-eqz p2, :cond_0

    :try_start_0
    array-length v9, p2

    if-eqz v9, :cond_0

    const-string v9, "-a"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1746
    :cond_0
    const-string v6, "Current Battery Service state:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v6, :cond_1

    .line 1748
    const-string v6, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1750
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  AC powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  USB powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Wireless powered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Overload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mOverload:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  USB overheat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Extension: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/BatteryService;->mExtension:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  PowerJacketExist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  PowerJacketStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  PowerJacketLevel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  PluginStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mPlugIn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Unsupport Charger: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  health: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  present: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v7, v7, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    const-string v6, "  scale: 100"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  voltage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  temperature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  technology: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, v7, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    :cond_2
    :goto_0
    monitor-exit v8

    .line 1834
    return-void

    .line 1781
    :cond_3
    array-length v9, p2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_e

    const-string v9, "set"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1782
    const/4 v9, 0x1

    aget-object v1, p2, v9

    .line 1783
    .local v1, "key":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v5, p2, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    .local v5, "value":Ljava/lang/String;
    :try_start_1
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v9, :cond_4

    .line 1786
    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v9, v10}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 1788
    :cond_4
    const/4 v4, 0x1

    .line 1789
    .local v4, "update":Z
    const-string v9, "ac"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1790
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_5

    :goto_1
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 1805
    :goto_2
    if-eqz v4, :cond_2

    .line 1806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1808
    .local v2, "ident":J
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1809
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1811
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1814
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    :catch_0
    move-exception v0

    .line 1815
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1833
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v4    # "update":Z
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    move v6, v7

    .line 1790
    goto :goto_1

    .line 1791
    :cond_6
    :try_start_5
    const-string v9, "usb"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1792
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    :goto_3
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_3

    .line 1793
    :cond_8
    const-string v9, "wireless"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1794
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_9

    :goto_4
    iput-boolean v6, v9, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    goto :goto_2

    :cond_9
    move v6, v7

    goto :goto_4

    .line 1795
    :cond_a
    const-string v6, "status"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1796
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    goto :goto_2

    .line 1797
    :cond_b
    const-string v6, "level"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1798
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    goto :goto_2

    .line 1799
    :cond_c
    const-string v6, "invalid"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1800
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_2

    .line 1802
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown set option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1803
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1811
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1817
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ident":J
    .end local v4    # "update":Z
    .end local v5    # "value":Ljava/lang/String;
    :cond_e
    :try_start_6
    array-length v7, p2

    if-ne v7, v6, :cond_10

    const-string v6, "reset"

    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v2

    .line 1820
    .restart local v2    # "ident":J
    :try_start_7
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v6, :cond_f

    .line 1821
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1822
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v6, v7}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    .line 1823
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1826
    :cond_f
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1829
    .end local v2    # "ident":J
    :cond_10
    const-string v6, "Dump current battery state, or:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    const-string v6, "  set [ac|usb|wireless|status|level|invalid] <value>"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    const-string v6, "  reset"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private getIconLocked(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, #android:drawable@stat_sys_battery_charge#t

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    const v0, #android:drawable@stat_sys_battery#t

    goto :goto_0

    :cond_2
    const v0, #android:drawable@stat_sys_battery_unknown#t

    goto :goto_0
.end method

.method private native htc_native_update()V
.end method

.method private isPoweredLocked(I)Z
    .locals 2
    .param p1, "plugTypeSet"    # I

    .prologue
    const/4 v0, 0x1

    .line 696
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v1, v1, Landroid/os/BatteryProperties;->batteryStatus:I

    if-ne v1, v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 699
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-nez v1, :cond_0

    .line 702
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-nez v1, :cond_0

    .line 705
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v1, v1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-nez v1, :cond_0

    .line 708
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logBatteryStatsLocked()V
    .locals 11

    .prologue
    .line 1637
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1638
    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 1679
    :cond_0
    :goto_0
    return-void

    .line 1640
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 1641
    .local v1, "db":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1643
    const/4 v2, 0x0

    .line 1644
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1647
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batterystats.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    .end local v2    # "dumpFile":Ljava/io/File;
    .local v3, "dumpFile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1649
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .local v5, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1650
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1653
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 1656
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mEnableHTCPowerLogUpload:Z

    if-eqz v7, :cond_2

    .line 1657
    const-string v7, "htc_batt_log"

    invoke-virtual {p0, v7, v3}, Lcom/android/server/BatteryService;->addErrorToDropBoxForHTC(Ljava/lang/String;Ljava/io/File;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1667
    :cond_2
    if-eqz v5, :cond_3

    .line 1669
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1674
    :cond_3
    :goto_1
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1675
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_0

    .line 1670
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 1671
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1661
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 1662
    .local v6, "e":Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1667
    if-eqz v4, :cond_4

    .line 1669
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1674
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1675
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1670
    .restart local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 1671
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1663
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 1664
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1667
    if-eqz v4, :cond_5

    .line 1669
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1674
    :cond_5
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1675
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1670
    :catch_4
    move-exception v6

    .line 1671
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1667
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_6

    .line 1669
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1674
    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1675
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v7

    .line 1670
    :catch_5
    move-exception v6

    .line 1671
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1667
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_6

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_6

    .line 1663
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_4

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto :goto_4

    .line 1661
    .end local v2    # "dumpFile":Ljava/io/File;
    .restart local v3    # "dumpFile":Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_2

    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_8
    move-object v4, v5

    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "dumpFile":Ljava/io/File;
    .restart local v2    # "dumpFile":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private logOutlierLocked(J)V
    .locals 13
    .param p1, "duration"    # J

    .prologue
    .line 1682
    iget-object v8, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1683
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v8, "battery_discharge_threshold"

    invoke-static {v0, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1685
    .local v2, "dischargeThresholdString":Ljava/lang/String;
    const-string v8, "battery_discharge_duration_threshold"

    invoke-static {v0, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1690
    .local v3, "durationThresholdString":Ljava/lang/String;
    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "userdebug"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    const-wide/32 v8, 0xdbba00

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1

    iget v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v8, v9

    const v9, 0x36ee80

    mul-int/2addr v8, v9

    int-to-long v8, v8

    div-long/2addr v8, p1

    const-wide/16 v10, 0x5

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 1696
    const-string v8, "batterylog.upload"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1697
    .local v7, "prop":I
    if-eqz v7, :cond_0

    .line 1698
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mEnableHTCPowerLogUpload:Z

    .line 1700
    :cond_0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V

    .line 1701
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mEnableHTCPowerLogUpload:Z

    .line 1702
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enable HTC power log upload, discharge rate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v11, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v11, v11, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v10, v11

    const v11, 0x36ee80

    mul-int/2addr v10, v11

    int-to-long v10, v10

    div-long/2addr v10, p1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(%/hour)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    .end local v7    # "prop":I
    :cond_1
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " discharge: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v11, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v11, v11, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1710
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1711
    .local v4, "durationThreshold":J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1712
    .local v1, "dischargeThreshold":I
    cmp-long v8, p1, v4

    if-gtz v8, :cond_2

    iget v8, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v9, v9, Landroid/os/BatteryProperties;->batteryLevel:I

    sub-int/2addr v8, v9

    if-lt v8, v1, :cond_2

    .line 1715
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    .end local v1    # "dischargeThreshold":I
    .end local v4    # "durationThreshold":J
    :cond_2
    :goto_0
    return-void

    .line 1721
    :catch_0
    move-exception v6

    .line 1722
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logTextFile(Ljava/io/File;Ljava/io/FileWriter;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "writer"    # Ljava/io/FileWriter;

    .prologue
    .line 847
    const/4 v2, 0x0

    .line 848
    .local v2, "input":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 850
    .local v4, "line":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v3, "input":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 852
    .local v0, "count":I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 853
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 856
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 857
    .end local v0    # "count":I
    .end local v3    # "input":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 859
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 861
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 855
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 859
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "count":I
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v5

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_4

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_3

    .line 856
    .end local v0    # "count":I
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "writer"    # Ljava/io/FileWriter;
    .param p3, "lines"    # Ljava/lang/Integer;

    .prologue
    .line 825
    const/4 v2, 0x0

    .line 826
    .local v2, "input":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 827
    .local v4, "line":Ljava/lang/String;
    if-nez p3, :cond_3

    const/16 v5, 0x800

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 829
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v3, "input":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 831
    .local v0, "count":I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 832
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 833
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 834
    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-virtual {p2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 838
    :cond_1
    invoke-virtual {p2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 842
    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 844
    .end local v0    # "count":I
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-void

    .line 827
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 842
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_1

    .line 839
    .end local v0    # "count":I
    :catch_1
    move-exception v1

    .line 840
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 842
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v5

    :catch_3
    move-exception v6

    goto :goto_4

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_3

    .line 839
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_5
    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private monitorTempwhenOverheat()V
    .locals 2

    .prologue
    const/16 v1, 0x1c2

    .line 449
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsMonitorOverheatRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    if-lt v0, v1, :cond_1

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsMonitorOverheatRunning:Z

    .line 452
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mMonitorOverheatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsMonitorOverheatRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    if-ge v0, v1, :cond_0

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsMonitorOverheatRunning:Z

    .line 455
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mCancelMonitorOverheatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private processValuesLocked(Z)V
    .locals 20
    .param p1, "force"    # Z

    .prologue
    .line 976
    const-wide/16 v16, 0x0

    .line 977
    .local v16, "startTimeMillis":J
    const-wide/16 v18, 0x0

    .line 981
    .local v18, "timeBattery":J
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->updateBatteryTest()V

    .line 985
    :cond_0
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 986
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Online ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery Others is ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mOverload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v4, v4, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mExtension:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mPlugIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_1
    const/4 v13, 0x0

    .line 1007
    .local v13, "logOutlier":Z
    const-wide/16 v10, 0x0

    .line 1009
    .local v10, "dischargeDuration":J
    const/4 v15, 0x0

    .line 1011
    .local v15, "showUnsupportedChargerWarningFlag":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mRealUnsupportedCharger:Z

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v2, v3, :cond_18

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    sget v3, Lcom/android/server/BatteryService;->LOW_BATTERY_LEVEL:I

    if-gt v2, v3, :cond_19

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mHtcBatteryLevelLow:Z

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v2, :cond_1a

    .line 1017
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1050
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryHealth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v7, v7, Landroid/os/BatteryProperties;->batteryTemperature:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v8, v8, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :goto_3
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 1070
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "check bat"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    if-eqz v2, :cond_3

    .line 1075
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->monitorTempwhenOverheat()V

    .line 1078
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 1079
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->checkBatteryIsOverHeating()V

    .line 1084
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->batteryPresent:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryVoltage:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryTemperature:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mExtension:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastExtension:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mOverload:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastOverload:Z

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastUsbOverHeat:Z

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastPowerJacketExist:Z

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastPowerJacketStatus:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastPowerJacketLevel:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mPlugIn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastPlugIn:Z

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastUnsupportedCharger:Z

    if-eq v2, v3, :cond_16

    .line 1107
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v2, v3, :cond_20

    .line 1108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v2, :cond_1e

    .line 1109
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    if-nez v2, :cond_1d

    .line 1114
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    if-eq v2, v3, :cond_5

    .line 1115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v10, v2, v4

    .line 1116
    const/4 v13, 0x1

    .line 1117
    const/16 v2, 0xaaa

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1120
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1122
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/BatteryService;->ULogForBatteryChargingStateChange(II)V

    .line 1159
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->batteryPresent:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v2, v3, :cond_8

    .line 1163
    :cond_7
    const/16 v3, 0xaa3

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v5, v5, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1167
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v2, v3, :cond_9

    .line 1170
    const/16 v2, 0xaa2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1175
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v2, :cond_a

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/BatteryService;->ULogForBatteryChargingStateChange(II)V

    .line 1178
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mHtcBatteryLevelLow:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastHtcBatteryLevelLow:Z

    if-nez v2, :cond_b

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/BatteryService;->ULogForBatteryLow(II)V

    .line 1183
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v2, :cond_c

    .line 1187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v10, v2, v4

    .line 1188
    const/4 v13, 0x1

    .line 1191
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v2, :cond_24

    .line 1193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v2, v3, :cond_d

    .line 1195
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1210
    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendIntentLocked()V

    .line 1213
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendIntentForPowerApp()V

    .line 1217
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->checkIsNeededToSendIntentForApp()V

    .line 1221
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastPowerJacketExist:Z

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastPowerJacketStatus:I

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLastPowerJacketLevel:I

    if-eq v2, v3, :cond_10

    .line 1225
    :cond_e
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_f

    .line 1226
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "sendPowerJacketIntentForApp"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendPowerJacketIntentForApp()V

    .line 1233
    :cond_10
    const-string v2, "com.htc.demoflorebooter"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/BatteryService;->checkFileInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    .line 1239
    .local v14, "mDemoFlowIsExist":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v2, :cond_27

    .line 1241
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    if-eqz v2, :cond_11

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 1245
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1280
    :cond_12
    :goto_7
    if-nez v14, :cond_13

    .line 1281
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1282
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1310
    :cond_13
    :goto_8
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$MzInjector;->onBatteryLow(Lcom/android/server/BatteryService;)V

    if-eqz v15, :cond_14

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/BatteryService$14;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1336
    :cond_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v13, :cond_15

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_15

    .line 1337
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 1340
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->batteryPresent:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 1344
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryVoltage:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryTemperature:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 1347
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 1348
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mHtcBatteryLevelLow:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastHtcBatteryLevelLow:Z

    .line 1349
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastUnsupportedCharger:Z

    .line 1350
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 1351
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mExtension:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastExtension:I

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mOverload:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastOverload:Z

    .line 1354
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastUsbOverHeat:Z

    .line 1357
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastPowerJacketExist:Z

    .line 1358
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastPowerJacketStatus:I

    .line 1359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mLastPowerJacketLevel:I

    .line 1362
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mPlugIn:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastPlugIn:Z

    .line 1367
    .end local v14    # "mDemoFlowIsExist":Z
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mRealUnsupportedCharger:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastRealUnsupportedCharger:Z

    .line 1370
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_17

    .line 1371
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "check bat end"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_17
    return-void

    .line 1013
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1014
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1018
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v2, :cond_1b

    .line 1019
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_2

    .line 1020
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v2, :cond_1c

    .line 1021
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_2

    .line 1023
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_2

    .line 1053
    :catch_0
    move-exception v12

    .line 1055
    .local v12, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException for setBatteryState"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1125
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 1127
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v2, :cond_6

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1131
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    if-eqz v2, :cond_1f

    .line 1132
    const/4 v15, 0x1

    .line 1135
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mPlugType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/BatteryService;->ULogForBatteryChargingStateChange(II)V

    goto/16 :goto_4

    .line 1138
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v2, :cond_21

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastUnsupportedCharger:Z

    if-nez v2, :cond_6

    .line 1141
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 1145
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    if-eqz v2, :cond_6

    .line 1147
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_22

    .line 1148
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "Shoud not see this log with old flow often"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastRealUnsupportedCharger:Z

    if-nez v2, :cond_6

    .line 1152
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 1163
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1199
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v2, :cond_25

    .line 1200
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_6

    .line 1201
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v2, v3, :cond_26

    .line 1202
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_6

    .line 1203
    :cond_26
    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v2, v3, :cond_d

    .line 1206
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto/16 :goto_6

    .line 1257
    .restart local v14    # "mDemoFlowIsExist":Z
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v2, :cond_12

    .line 1259
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    .line 1260
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_28

    .line 1261
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mChargeStartLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDischargeStartLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    sub-int v9, v2, v3

    .line 1264
    .local v9, "chargeLevel":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$VZWLoggerRunnable;

    const-string v4, "Q023"

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v9}, Lcom/android/server/BatteryService$VZWLoggerRunnable;-><init>(Lcom/android/server/BatteryService;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1267
    .end local v9    # "chargeLevel":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    .line 1294
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v2, v3, :cond_13

    .line 1295
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8
.end method

.method private sendIntentForApp()V
    .locals 4

    .prologue
    .line 1566
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.BATTERY_CHANGE_PARTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v1, "intentNew":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1570
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v0

    .line 1572
    .local v0, "icon":I
    const-string v2, "status"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1573
    const-string v2, "health"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1574
    const-string v2, "present"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v3, v3, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1575
    const-string v2, "level"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1578
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    const-string v2, "voltage"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1580
    const-string v2, "temperature"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1581
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    const-string v2, "invalid_charger"

    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1583
    const-string v2, "overload"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mOverload:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1585
    const-string v2, "usb_overheat"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1587
    const-string v2, "support_extension"

    iget v3, p0, Lcom/android/server/BatteryService;->mExtension:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1589
    const-string v2, "power_jacket_exist"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1590
    const-string v2, "power_jacket_status"

    iget v3, p0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1591
    const-string v2, "power_jacket_level"

    iget v3, p0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1594
    const-string v2, "plugin_status"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPlugIn:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1596
    const-string v2, "unsupport_charger"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1598
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$17;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$17;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1609
    return-void
.end method

.method private sendIntentForPowerApp()V
    .locals 4

    .prologue
    .line 1488
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1490
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.BATTERY_CHANGE_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v1, "intentApp":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1494
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v0

    .line 1496
    .local v0, "icon":I
    const-string v2, "status"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1497
    const-string v2, "health"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1498
    const-string v2, "present"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v3, v3, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1499
    const-string v2, "level"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1500
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1501
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1502
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1503
    const-string v2, "voltage"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1504
    const-string v2, "temperature"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1505
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    const-string v2, "invalid_charger"

    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1508
    const-string v2, "overload"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mOverload:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1511
    const-string v2, "usb_overheat"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1514
    const-string v2, "support_extension"

    iget v3, p0, Lcom/android/server/BatteryService;->mExtension:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1517
    const-string v2, "power_jacket_exist"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1518
    const-string v2, "power_jacket_status"

    iget v3, p0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1519
    const-string v2, "power_jacket_level"

    iget v3, p0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1522
    const-string v2, "plugin_status"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPlugIn:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1525
    const-string v2, "unsupport_charger"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1528
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$16;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1541
    .end local v0    # "icon":I
    .end local v1    # "intentApp":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendIntentLocked()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 1390
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x60000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1394
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v0

    .line 1396
    .local v0, "icon":I
    const-string v2, "status"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1397
    const-string v2, "health"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1398
    const-string v2, "present"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v3, v3, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1399
    const-string v2, "level"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1400
    const-string v2, "scale"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1401
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1402
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1403
    const-string v2, "voltage"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1404
    const-string v2, "temperature"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1405
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1406
    const-string v2, "invalid_charger"

    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1408
    const-string v2, "overload"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mOverload:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1411
    const-string v2, "usb_overheat"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    const-string v2, "support_extension"

    iget v3, p0, Lcom/android/server/BatteryService;->mExtension:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1417
    const-string v2, "unsupport_charger"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1420
    const-string v2, "power_jacket_exist"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1421
    const-string v2, "power_jacket_status"

    iget v3, p0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1422
    const-string v2, "power_jacket_level"

    iget v3, p0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1425
    const-string v2, "plugin_status"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPlugIn:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1428
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1429
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendIntent:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v4, v4, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v4, v4, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mOverload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mExtension:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mPlugIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$15;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1483
    return-void
.end method

.method private sendMonitorOverheatAlarm()V
    .locals 8

    .prologue
    .line 461
    iget-object v4, p0, Lcom/android/server/BatteryService;->mVZWLock:Ljava/lang/Object;

    monitor-enter v4

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 464
    .local v0, "mAlarmService":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 465
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "no alarm service"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v4

    .line 488
    :goto_0
    return-void

    .line 469
    :cond_0
    sget-object v1, Lcom/android/server/BatteryService;->mOverHeatIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 470
    sget-boolean v1, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 471
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "no duplicate alarm intent"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 487
    .end local v0    # "mAlarmService":Landroid/app/AlarmManager;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 476
    .restart local v0    # "mAlarmService":Landroid/app/AlarmManager;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.intent.action.battery.VZW_LOGGER_OVERHEAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v1, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/android/server/BatteryService;->mOverHeatIntent:Landroid/app/PendingIntent;

    .line 479
    sget-boolean v1, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v1, :cond_3

    .line 480
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send monitorTempwhenOverheat,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v6, v6, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 484
    .local v2, "now":J
    const-wide/32 v6, 0x1d4c0

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/server/BatteryService;->mAlarmScheduleTime:J

    .line 485
    const/4 v1, 0x2

    iget-wide v6, p0, Lcom/android/server/BatteryService;->mAlarmScheduleTime:J

    sget-object v5, Lcom/android/server/BatteryService;->mOverHeatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v6, v7, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 487
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private sendPowerJacketIntentForApp()V
    .locals 3

    .prologue
    .line 1615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.POWER_JACKET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1616
    .local v0, "intentPJ":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1619
    const-string v1, "power_jacket_exist"

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1620
    const-string v1, "power_jacket_status"

    iget v2, p0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1621
    const-string v1, "power_jacket_level"

    iget v2, p0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1623
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$18;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$18;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1633
    return-void
.end method

.method private shouldSendBatteryLowLocked()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 712
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_1

    move v1, v2

    .line 713
    .local v1, "plugged":Z
    :goto_0
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v4, :cond_2

    move v0, v2

    .line 721
    .local v0, "oldPlugged":Z
    :goto_1
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    if-eq v4, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_3

    if-nez v0, :cond_0

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_3

    :cond_0
    :goto_2
    return v2

    .end local v0    # "oldPlugged":Z
    .end local v1    # "plugged":Z
    :cond_1
    move v1, v3

    .line 712
    goto :goto_0

    .restart local v1    # "plugged":Z
    :cond_2
    move v0, v3

    .line 713
    goto :goto_1

    .restart local v0    # "oldPlugged":Z
    :cond_3
    move v2, v3

    .line 721
    goto :goto_2
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/server/BatteryService$MzInjector;->mEnableScreen:Z

    if-nez v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gtz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Shutdown device! Device is not powered, and battery level reached 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$MzInjector;->writeMessageToFileIfNoPowerLocked(Lcom/android/server/BatteryService;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    if-gtz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mOverload:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutdown device! Device is powered, overloading, and battery level reached 0, mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$MzInjector;->writeMessageToFileIfNoPowerLocked(Lcom/android/server/BatteryService;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private shutdownIfOverTempLocked()V
    .locals 4

    .prologue
    sget-boolean v0, Lcom/android/server/BatteryService$MzInjector;->mEnableScreen:Z

    if-nez v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    .line 730
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsBatteryOverheatSupport:Z

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService$MzInjector;->writeMessageToFileIfOverTempLocked(Lcom/android/server/BatteryService;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$BatteryOverheatRunnable;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$BatteryOverheatRunnable;-><init>(Lcom/android/server/BatteryService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$VZWLoggerRunnable;

    const-string v2, "Q021"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/BatteryService$VZWLoggerRunnable;-><init>(Lcom/android/server/BatteryService;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private update(Landroid/os/BatteryProperties;)V
    .locals 3
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    sget-boolean v0, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "n_update"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->htc_native_update()V

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "n_update end"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    invoke-virtual {v0, p1}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateBatteryTest()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v0, "sys.batt.test."

    .local v0, "SYSTEM_PROP_PREFIX":Ljava/lang/String;
    const-string v3, "sys.batt.test.enable"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "isEnable":Z
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBatteryTest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.wireless"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v5, v5, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.ac"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v5, v5, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.usb"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v5, v5, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    const-string v3, "sys.batt.test.overload"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mOverload:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mOverload:Z

    const-string v3, "sys.batt.test.usboverheat"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mUsbOverHeat:Z

    const-string v3, "sys.batt.test.extension"

    iget v4, p0, Lcom/android/server/BatteryService;->mExtension:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mExtension:I

    const-string v3, "sys.batt.test.powerjacketexist"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mPowerJacketExist:Z

    const-string v3, "sys.batt.test.powerjacketstatus"

    iget v4, p0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mPowerJacketStatus:I

    const-string v3, "sys.batt.test.powerjacketlevel"

    iget v4, p0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mPowerJacketLevel:I

    const-string v3, "sys.batt.test.pluginstatus"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mPlugIn:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mPlugIn:Z

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.level"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.status"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.health"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.present"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-boolean v5, v5, Landroid/os/BatteryProperties;->batteryPresent:Z

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Landroid/os/BatteryProperties;->batteryPresent:Z

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.volt"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.temp"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v5, v5, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    const-string v4, "sys.batt.test.tech"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget-object v5, v5, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    const-string v3, "sys.batt.test.unsuppoted"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mUnsupportedCharger:Z

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    :goto_0
    :try_start_0
    const-string v3, "sys.batt.test.count"

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iput v4, p0, Lcom/android/server/BatteryService;->mBatteryTestChangeCount:I

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "Unable to set SystemProperties: sys.batt.test.count"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateBatteryWarningLevelLocked()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:integer@config_lowBatteryWarningLevel#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, "defWarnLevel":I
    const-string v2, "low_power_trigger_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v2, :cond_0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:integer@config_lowBatteryCloseWarningBump#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method


# virtual methods
.method public addErrorToDropBoxForHTC(Ljava/lang/String;Ljava/io/File;)V
    .locals 17
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "logFile"    # Ljava/io/File;

    .prologue
    const-string v14, "HTC_BATT_LOG"

    .local v14, "dropboxTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/DropBoxManager;

    .local v7, "dbox":Landroid/os/DropBoxManager;
    if-eqz v7, :cond_0

    const-string v3, "HTC_BATT_LOG"

    invoke-virtual {v7, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "entryTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Type: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Process: system_server\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Time: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TimeZoneOffset: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Build: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Project Branch: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.project"

    const-string v6, "unknown"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Changelist: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.changelist"

    const-string v6, "unknown"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Release: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Bootloader: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.bootloader"

    const-string v6, "unknown"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Radio: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.baseband"

    const-string v6, "unknown"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "userdebug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Network: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.operator.alpha"

    const-string v6, "unknown"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v11

    .local v11, "accountMgr":Lcom/android/server/accounts/AccountManagerService;
    if-eqz v11, :cond_5

    const-string v3, "com.htc.android.mail.eas"

    invoke-virtual {v11, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    .local v12, "accounts":[Landroid/accounts/Account;
    if-eqz v12, :cond_3

    move-object v13, v12

    .local v13, "arr$":[Landroid/accounts/Account;
    array-length v0, v13

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v10, v13, v15

    .local v10, "account":Landroid/accounts/Account;
    if-eqz v10, :cond_2

    const-string v3, "Account: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v10    # "account":Landroid/accounts/Account;
    .end local v13    # "arr$":[Landroid/accounts/Account;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_3
    const-string v3, "com.google"

    invoke-virtual {v11, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object v13, v12

    .restart local v13    # "arr$":[Landroid/accounts/Account;
    array-length v0, v13

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    aget-object v10, v13, v15

    .restart local v10    # "account":Landroid/accounts/Account;
    if-eqz v10, :cond_4

    const-string v3, "Account: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v10    # "account":Landroid/accounts/Account;
    .end local v11    # "accountMgr":Lcom/android/server/accounts/AccountManagerService;
    .end local v12    # "accounts":[Landroid/accounts/Account;
    .end local v13    # "arr$":[Landroid/accounts/Account;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_5
    new-instance v2, Lcom/android/server/BatteryService$9;

    const-string v4, "Error dump: HTC_BATT_LOG"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;J)V

    .local v2, "worker":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/16 v2, 0x226

    if-ne p1, v2, :cond_2

    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "onBootPhase"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/server/BatteryService$4;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    invoke-static {}, Lcom/android/server/BatteryService$MzInjector;->setSystemReady()V

    monitor-exit v3

    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "batteryproperties"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v1

    .local v1, "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    sget-boolean v2, Lcom/android/server/BatteryService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "onStart"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/BatteryService$BatteryListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-interface {v1, v2}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "battery"

    new-instance v3, Lcom/android/server/BatteryService$BinderService;

    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v2, Landroid/os/BatteryManagerInternal;

    new-instance v3, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method mzGetFieldBatteryProps()Landroid/os/BatteryProperties;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    return-object v0
.end method

.method mzGetFieldContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method mzGetFieldCriticalBatteryLevel()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    return v0
.end method

.method mzGetFieldHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method mzGetFieldPlugType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method mzInvokeMethodUpdate(Landroid/os/BatteryProperties;)V
    .locals 0
    .param p1, "props"    # Landroid/os/BatteryProperties;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V

    return-void
.end method
