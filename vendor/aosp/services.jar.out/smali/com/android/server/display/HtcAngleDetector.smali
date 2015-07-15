.class final Lcom/android/server/display/HtcAngleDetector;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/HtcAngleDetector$Callbacks;,
        Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;,
        Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;,
        Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;,
        Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;,
        Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;,
        Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;,
        Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
    }
.end annotation


# static fields
.field private static IS_ANGLE_DETECTOR_ENABLE:Z = false

.field private static IS_DETECTOR_ALWAYS_ENABLE:Z = false

.field private static IS_ENABLE_DETECTOR_GYRO:Z = false

.field private static gravityBuffer:[F = null

.field private static gyroXBuffer:[F = null

.field private static gyroYBuffer:[F = null

.field private static gyroZBuffer:[F = null

.field private static mAcceSensorBufferPointer:I = 0x0

.field private static final mAcceSensorBufferSize:I = 0xa

.field private static mGyroSensorBufferPointer:I = 0x0

.field private static final mGyroSensorBufferSize:I = 0xa

.field private static omegaMagnitudeBuffer:[F

.field private static projXZBuffer:[F

.field private static xAngleBuffer:[I

.field private static yAngleBuffer:[I

.field private static zAngleBuffer:[I


# instance fields
.field private ANGLE_TOLERANCE:I

.field private BUFFER_DEBUG_SWITCH:Z

.field private DEBUG_ON:Z

.field private FLAT_X_ANGLE_FROM:I

.field private FLAT_X_ANGLE_TO:I

.field private FLAT_Y_ANGLE_FROM:I

.field private FLAT_Y_ANGLE_TO:I

.field private FLAT_Z_ANGLE_FROM:I

.field private FLAT_Z_ANGLE_TO:I

.field private GRAVITY_TOLERANCE:I

.field private GYRO_AWAKE_OMEGA:F

.field private GYRO_AWAKE_X:F

.field private GYRO_AWAKE_Y:F

.field private GYRO_AWAKE_Z:F

.field private GYRO_TALKING_OMEGA:F

.field private GYRO_TALKING_X:F

.field private GYRO_TALKING_Y:F

.field private GYRO_TALKING_Z:F

.field private final INIT_ANGLE:I

.field private LAST_ANGLE_TOLERANCE:I

.field private final MASTER_ENABLE:Z

.field private final ONE_EIGHTY_OVER_PI:F

.field private final PROXIMITY_NEGATIVE:I

.field private final PROXIMITY_POSITIVE:I

.field private final PROXIMITY_UNKNOWN:I

.field private READING_DEBOUNCE_COUNTER:I

.field private READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

.field private READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

.field private READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

.field private READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

.field private READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

.field private READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

.field private READING_PORTRAIT_X_ANGLE_FROM:I

.field private READING_PORTRAIT_X_ANGLE_TO:I

.field private READING_PORTRAIT_Y_ANGLE_FROM:I

.field private READING_PORTRAIT_Y_ANGLE_TO:I

.field private READING_PORTRAIT_Z_ANGLE_FROM:I

.field private READING_PORTRAIT_Z_ANGLE_TO:I

.field private SCREEN_TIMEOUT_DEFAULT:I

.field private SCREEN_TIMEOUT_READING:I

.field private SHAKING_GRAVITY:I

.field private final SP_ANGLE_TOLERANCE:Ljava/lang/String;

.field private final SP_BUFFER_DEBUG_SWITCH:Ljava/lang/String;

.field private final SP_FLAT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_FLAT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_FLAT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_FLAT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_GRAVITY_TOLERANCE:Ljava/lang/String;

.field private final SP_GYRO_AWAKE_OMEGA:Ljava/lang/String;

.field private final SP_GYRO_AWAKE_X:Ljava/lang/String;

.field private final SP_GYRO_AWAKE_Z:Ljava/lang/String;

.field private final SP_GYRO_TALKING_OMEGA:Ljava/lang/String;

.field private final SP_GYRO_TALKING_X:Ljava/lang/String;

.field private final SP_GYRO_TALKING_Z:Ljava/lang/String;

.field private final SP_READING_DEBOUNCE:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_LEFT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_READING_PORTRAIT_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_SCREEN_TIMEOUT_DEFAULT:Ljava/lang/String;

.field private final SP_SCREEN_TIMEOUT_READING:Ljava/lang/String;

.field private final SP_SHAKING_GRAVITY:Ljava/lang/String;

.field private final SP_TALKING_DEBOUNCE:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_LEFT_HAND_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_MOVEMENT_XZ:Ljava/lang/String;

.field private final SP_TALKING_PETER_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_PETER_Z_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_X_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_X_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Y_ANGLE_TO:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

.field private final SP_TALKING_RIGHT_HAND_Z_ANGLE_TO:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private TALKING_DEBOUNCE_COUNTER:I

.field private TALKING_LEFT_HAND_X_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_X_ANGLE_TO:I

.field private TALKING_LEFT_HAND_Y_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_Y_ANGLE_TO:I

.field private TALKING_LEFT_HAND_Z_ANGLE_FROM:I

.field private TALKING_LEFT_HAND_Z_ANGLE_TO:I

.field private TALKING_MOVEMENT_XZ:F

.field private TALKING_PETER_Z_ANGLE_FROM:I

.field private TALKING_PETER_Z_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_X_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_X_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_Y_ANGLE_TO:I

.field private TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

.field private TALKING_RIGHT_HAND_Z_ANGLE_TO:I

.field private final mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;

.field private final mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

.field private final mContext:Landroid/content/Context;

.field private final mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

.field private final mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

.field private final mGSensor:Landroid/hardware/Sensor;

.field private mGSensorEnabled:Z

.field private final mGSensorListener:Landroid/hardware/SensorEventListener;

.field private final mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

.field private final mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

.field private final mGyroSensor:Landroid/hardware/Sensor;

.field private mGyroSensorEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mInitCompleted:Z

.field private mIsCmpLastAngleTimeout:Z

.field private mIsGSensorTimeout:Z

.field private mIsGyroAwake:Z

.field private mIsGyroMoveTimeout:Z

.field private mIsPickupInTalking:Z

.field private final mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

.field private mIsPsensorNear:Z

.field private mIsReadingDetected:Z

.field private mIsScreenTimeout:Z

.field private mIsShakeAwake:Z

.field private mIsTalkingDetected:Z

.field private mIsTimeoutInReading:Z

.field private mLastXAngle:I

.field private mLastYAngle:I

.field private mLastZAngle:I

.field private mNear_xAngle:I

.field private mNear_yAngle:I

.field private mNear_zAngle:I

.field private mOld_xAngle:I

.field private mOld_yAngle:I

.field private mOld_zAngle:I

.field private mPSensorOn:Z

.field private mPSensorStatus:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReadingCounter:I

.field private mReleaseProximityWakeLockOn:Z

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

.field private mTalkingCounter:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 24
    sput-boolean v2, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    .line 25
    sput-boolean v2, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    .line 26
    sput-boolean v2, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    .line 266
    new-array v0, v1, [I

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I

    .line 267
    new-array v0, v1, [I

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I

    .line 268
    new-array v0, v1, [I

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    .line 269
    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F

    .line 270
    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F

    .line 273
    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    .line 274
    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    .line 275
    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    .line 276
    new-array v0, v1, [F

    sput-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    .line 278
    sput v2, Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I

    .line 279
    sput v2, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/display/HtcAngleDetector$Callbacks;Landroid/hardware/SensorManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/display/HtcAngleDetector$Callbacks;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/4 v6, 0x1

    const/16 v5, -0xa

    const/16 v4, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v1, "HtcAngleDetector"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->TAG:Ljava/lang/String;

    .line 20
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    .line 23
    iput-boolean v6, p0, Lcom/android/server/display/HtcAngleDetector;->MASTER_ENABLE:Z

    .line 28
    const-string v1, "persist.htc.had.scr.default"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_SCREEN_TIMEOUT_DEFAULT:Ljava/lang/String;

    .line 29
    const-string v1, "persist.htc.had.scr.read"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_SCREEN_TIMEOUT_READING:Ljava/lang/String;

    .line 30
    const-string v1, "persist.htc.had.at"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_ANGLE_TOLERANCE:Ljava/lang/String;

    .line 31
    const-string v1, "persist.htc.had.gt"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GRAVITY_TOLERANCE:Ljava/lang/String;

    .line 32
    const-string v1, "persist.htc.had.sg"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_SHAKING_GRAVITY:Ljava/lang/String;

    .line 34
    const-string v1, "persist.htc.had.f.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_X_ANGLE_FROM:Ljava/lang/String;

    .line 35
    const-string v1, "persist.htc.had.f.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_X_ANGLE_TO:Ljava/lang/String;

    .line 36
    const-string v1, "persist.htc.had.f.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_Y_ANGLE_FROM:Ljava/lang/String;

    .line 37
    const-string v1, "persist.htc.had.f.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_Y_ANGLE_TO:Ljava/lang/String;

    .line 38
    const-string v1, "persist.htc.had.f.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_Z_ANGLE_FROM:Ljava/lang/String;

    .line 39
    const-string v1, "persist.htc.had.f.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_FLAT_Z_ANGLE_TO:Ljava/lang/String;

    .line 41
    const-string v1, "persist.htc.had.tr.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_X_ANGLE_FROM:Ljava/lang/String;

    .line 42
    const-string v1, "persist.htc.had.tr.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_X_ANGLE_TO:Ljava/lang/String;

    .line 43
    const-string v1, "persist.htc.had.tr.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

    .line 44
    const-string v1, "persist.htc.had.tr.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Y_ANGLE_TO:Ljava/lang/String;

    .line 45
    const-string v1, "persist.htc.had.tr.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

    .line 46
    const-string v1, "persist.htc.had.tr.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_RIGHT_HAND_Z_ANGLE_TO:Ljava/lang/String;

    .line 48
    const-string v1, "persist.htc.had.tl.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_X_ANGLE_FROM:Ljava/lang/String;

    .line 49
    const-string v1, "persist.htc.had.tl.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_X_ANGLE_TO:Ljava/lang/String;

    .line 50
    const-string v1, "persist.htc.had.tl.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Y_ANGLE_FROM:Ljava/lang/String;

    .line 51
    const-string v1, "persist.htc.had.tl.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Y_ANGLE_TO:Ljava/lang/String;

    .line 52
    const-string v1, "persist.htc.had.tl.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Z_ANGLE_FROM:Ljava/lang/String;

    .line 53
    const-string v1, "persist.htc.had.tl.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_LEFT_HAND_Z_ANGLE_TO:Ljava/lang/String;

    .line 55
    const-string v1, "persist.htc.had.tp.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_PETER_Z_ANGLE_FROM:Ljava/lang/String;

    .line 56
    const-string v1, "persist.htc.had.tp.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_PETER_Z_ANGLE_TO:Ljava/lang/String;

    .line 58
    const-string v1, "persist.htc.had.rp.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_X_ANGLE_FROM:Ljava/lang/String;

    .line 59
    const-string v1, "persist.htc.had.rp.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_X_ANGLE_TO:Ljava/lang/String;

    .line 60
    const-string v1, "persist.htc.had.rp.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_Y_ANGLE_FROM:Ljava/lang/String;

    .line 61
    const-string v1, "persist.htc.had.rp.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_Y_ANGLE_TO:Ljava/lang/String;

    .line 62
    const-string v1, "persist.htc.had.rp.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_Z_ANGLE_FROM:Ljava/lang/String;

    .line 63
    const-string v1, "persist.htc.had.rp.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_PORTRAIT_Z_ANGLE_TO:Ljava/lang/String;

    .line 65
    const-string v1, "persist.htc.had.rlr.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:Ljava/lang/String;

    .line 66
    const-string v1, "persist.htc.had.rlr.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_X_ANGLE_TO:Ljava/lang/String;

    .line 67
    const-string v1, "persist.htc.had.rlr.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:Ljava/lang/String;

    .line 68
    const-string v1, "persist.htc.had.rlr.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:Ljava/lang/String;

    .line 69
    const-string v1, "persist.htc.had.rlr.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:Ljava/lang/String;

    .line 70
    const-string v1, "persist.htc.had.rlr.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:Ljava/lang/String;

    .line 72
    const-string v1, "persist.htc.had.rll.x.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_X_ANGLE_FROM:Ljava/lang/String;

    .line 73
    const-string v1, "persist.htc.had.rll.x.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_X_ANGLE_TO:Ljava/lang/String;

    .line 74
    const-string v1, "persist.htc.had.rll.y.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:Ljava/lang/String;

    .line 75
    const-string v1, "persist.htc.had.rll.y.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Y_ANGLE_TO:Ljava/lang/String;

    .line 76
    const-string v1, "persist.htc.had.rll.z.from"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:Ljava/lang/String;

    .line 77
    const-string v1, "persist.htc.had.rll.z.to"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_LANDSCAPE_LEFT_Z_ANGLE_TO:Ljava/lang/String;

    .line 80
    const-string v1, "persist.htc.had.ga.omega"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_AWAKE_OMEGA:Ljava/lang/String;

    .line 81
    const-string v1, "persist.htc.had.ga.x"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_AWAKE_X:Ljava/lang/String;

    .line 82
    const-string v1, "persist.htc.had.ga.z"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_AWAKE_Z:Ljava/lang/String;

    .line 84
    const-string v1, "persist.htc.had.gt.omega"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_TALKING_OMEGA:Ljava/lang/String;

    .line 85
    const-string v1, "persist.htc.had.gt.x"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_TALKING_X:Ljava/lang/String;

    .line 86
    const-string v1, "persist.htc.had.gt.z"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_GYRO_TALKING_Z:Ljava/lang/String;

    .line 89
    const-string v1, "persist.htc.had.tm.xz"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_MOVEMENT_XZ:Ljava/lang/String;

    .line 90
    const-string v1, "persist.htc.had.bds"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_BUFFER_DEBUG_SWITCH:Ljava/lang/String;

    .line 92
    const-string v1, "persist.htc.had.talk.debounce"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_TALKING_DEBOUNCE:Ljava/lang/String;

    .line 93
    const-string v1, "persist.htc.had.read.debounce"

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->SP_READING_DEBOUNCE:Ljava/lang/String;

    .line 95
    const v1, 0x42652ee1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->ONE_EIGHTY_OVER_PI:F

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->PROXIMITY_UNKNOWN:I

    .line 98
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->PROXIMITY_NEGATIVE:I

    .line 99
    iput v6, p0, Lcom/android/server/display/HtcAngleDetector;->PROXIMITY_POSITIVE:I

    .line 101
    const/16 v1, 0x7530

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    .line 102
    const v1, 0xea60

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    .line 105
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    .line 106
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->LAST_ANGLE_TOLERANCE:I

    .line 109
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    .line 112
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    .line 115
    const/16 v1, -0xf

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    .line 116
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    .line 118
    const/16 v1, -0xf

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    .line 119
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    .line 121
    const/16 v1, 0x4b

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    .line 122
    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    .line 125
    const/16 v1, -0x5a

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    .line 126
    iput v5, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    .line 128
    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    .line 129
    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    .line 131
    const/16 v1, -0x2d

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    .line 132
    const/16 v1, 0x2d

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    .line 135
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    .line 136
    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    .line 138
    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    .line 139
    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    .line 141
    const/16 v1, -0x2d

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    .line 142
    const/16 v1, 0x2d

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    .line 145
    const/16 v1, -0x5a

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    .line 146
    const/16 v1, -0x19

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    .line 149
    const/16 v1, -0x14

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    .line 150
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    .line 152
    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    .line 153
    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    .line 155
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    .line 156
    iput v4, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    .line 159
    iput v5, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    .line 160
    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    .line 162
    iput v5, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    .line 163
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    .line 165
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    .line 166
    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    .line 169
    const/16 v1, -0x50

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    .line 170
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    .line 172
    iput v5, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    .line 173
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    .line 175
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    .line 176
    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    .line 180
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    .line 181
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    .line 182
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Y:F

    .line 183
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    .line 185
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    .line 186
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    .line 187
    const v1, 0x3fcccccd    # 1.6f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Y:F

    .line 188
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    .line 191
    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F

    .line 192
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z

    .line 195
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    .line 196
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    .line 203
    new-instance v1, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    .line 205
    new-instance v1, Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    .line 206
    new-instance v1, Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    .line 207
    new-instance v1, Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    .line 209
    new-instance v1, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    .line 211
    new-instance v1, Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    .line 213
    new-instance v1, Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    .line 222
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    .line 223
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z

    .line 225
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mScreenOn:Z

    .line 226
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    .line 227
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    .line 228
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    .line 229
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    .line 230
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    .line 232
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z

    .line 233
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    .line 234
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    .line 236
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    .line 237
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    .line 239
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->INIT_ANGLE:I

    .line 240
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    .line 241
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    .line 242
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    .line 245
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z

    .line 246
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z

    .line 247
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    .line 248
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    .line 249
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    .line 251
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z

    .line 253
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    .line 254
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    .line 255
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    .line 257
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_xAngle:I

    .line 258
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_yAngle:I

    .line 259
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_zAngle:I

    .line 284
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z

    .line 288
    iput-object v2, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 813
    new-instance v1, Lcom/android/server/display/HtcAngleDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/HtcAngleDetector$1;-><init>(Lcom/android/server/display/HtcAngleDetector;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    .line 319
    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "HtcAngleDetector"

    const-string v2, "Contructor: MASTER_ENABLE=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/HtcAngleDetector;->mContext:Landroid/content/Context;

    .line 326
    iput-object p2, p0, Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;

    .line 328
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HAD"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 329
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 330
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/HtcAngleDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    .line 332
    iput-object p3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 333
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    .line 334
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensor:Landroid/hardware/Sensor;

    .line 336
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    .line 337
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "HtcAngleDetector"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 338
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 340
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->readSysProp()V

    .line 344
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->checkHtcCustomizationReader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "htcangledetector_is_angle_detector_enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    .line 348
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "htcangledetector_is_enable_detector_gyro"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    .line 351
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "htcangledetector_is_detector_always_enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    .line 355
    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 356
    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_ANGLE_DETECTOR_ENABLE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS_ENABLE_DETECTOR_GYRO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS_DETECTOR_ALWAYS_ENABLE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 363
    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize: Unable to get value from CustomizationReader. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acceleroMeterToString(F)Ljava/lang/String;
    .locals 6
    .param p1, "meter"    # F

    .prologue
    .line 1656
    const-string v1, ""

    .line 1658
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string v2, "% 2.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1664
    :cond_0
    :goto_0
    return-object v1

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1661
    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceleroMeterToString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    return p1
.end method

.method static synthetic access$1400()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F

    return-object v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 18
    sput p0, Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I

    return p0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I

    return-object v0
.end method

.method static synthetic access$1800()[I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    return-object v0
.end method

.method static synthetic access$1900()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/HtcAngleDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isSamePose(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/display/HtcAngleDetector;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->isShaking(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/HtcAngleDetector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    return p1
.end method

.method static synthetic access$4508(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/display/HtcAngleDetector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    return p1
.end method

.method static synthetic access$4608(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/HtcAngleDetector;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->isSameZAngle(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    return-object v0
.end method

.method static synthetic access$5300()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    return-object v0
.end method

.method static synthetic access$5400()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    return v0
.end method

.method static synthetic access$5402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 18
    sput p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    return p0
.end method

.method static synthetic access$5500()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    return-object v0
.end method

.method static synthetic access$5600()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    return-object v0
.end method

.method static synthetic access$5700()[F
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isGyroShakeAwake()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isGyroAwakeMove()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isSameAngle(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isGyroTalkingMove()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/display/HtcAngleDetector;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector;->enableDetector(Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_xAngle:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->LAST_ANGLE_TOLERANCE:I

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_yAngle:I

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_zAngle:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/display/HtcAngleDetector;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isReadingCmpLastAngle(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/display/HtcAngleDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    return v0
.end method

.method static synthetic access$7000()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/display/HtcAngleDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/HtcAngleDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/display/HtcAngleDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAngleDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    return-object v0
.end method

.method private angleToString(I)Ljava/lang/String;
    .locals 6
    .param p1, "angle"    # I

    .prologue
    .line 1644
    const-string v1, ""

    .line 1646
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string v2, "% 2d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1652
    :cond_0
    :goto_0
    return-object v1

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1649
    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angleToString("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCondition()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 705
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 706
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCondition: mInitCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPSensorOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPSensorStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsScreenTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    if-eq v0, v4, :cond_2

    .line 717
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 718
    invoke-direct {p0, v4}, Lcom/android/server/display/HtcAngleDetector;->enableDetector(Z)V

    .line 737
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-nez v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 721
    invoke-direct {p0, v3}, Lcom/android/server/display/HtcAngleDetector;->enableDetector(Z)V

    goto :goto_0

    .line 722
    :cond_3
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    if-ne v0, v4, :cond_1

    .line 724
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    .line 725
    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    .line 726
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    .line 727
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    .line 728
    iput-boolean v4, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    .line 730
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    .line 731
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 733
    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    if-nez v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 293
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 294
    .local v0, "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 295
    const-string v3, "HtcAngleDetector"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 299
    .restart local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 302
    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 303
    const-string v3, "HtcAngleDetector"

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcAngleDetector"

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

    .line 314
    goto :goto_0
.end method

.method private enableDetector(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/16 v6, 0xa

    .line 740
    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    .line 742
    .local v2, "old_enable":Z
    if-eqz p1, :cond_2

    .line 743
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    if-nez v3, :cond_0

    .line 744
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    .line 747
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 748
    iget v3, p0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    invoke-direct {p0, v3}, Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V

    .line 749
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 750
    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    if-eqz v3, :cond_0

    .line 751
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    if-eq v3, v2, :cond_1

    iget-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 808
    const-string v3, "HtcAngleDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDetector: mGSensorEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_1
    return-void

    .line 754
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    if-eqz v3, :cond_0

    .line 757
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z

    .line 758
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z

    .line 759
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 760
    sget-boolean v3, Lcom/android/server/display/HtcAngleDetector;->IS_ENABLE_DETECTOR_GYRO:Z

    if-eqz v3, :cond_3

    .line 761
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mGSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector;->mGyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 763
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 764
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 767
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z

    .line 768
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/display/HtcAngleDetector;->mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 771
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    .line 772
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    .line 773
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    .line 774
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    .line 776
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z

    .line 777
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    .line 778
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    .line 779
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    .line 782
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 783
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 784
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 785
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 786
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 787
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 789
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_5

    .line 790
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 791
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 792
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 793
    sget-object v3, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 795
    :cond_5
    const/4 v3, 0x0

    sput v3, Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I

    .line 796
    const/4 v3, 0x0

    sput v3, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    .line 798
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V

    .line 799
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V

    .line 800
    iget-object v3, p0, Lcom/android/server/display/HtcAngleDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 803
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcAngleDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDetector: Exception caught. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isActualScreenOn()Z
    .locals 4

    .prologue
    .line 1679
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isActualScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1685
    :goto_0
    return v1

    .line 1680
    :catch_0
    move-exception v0

    .line 1681
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1682
    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActualScreenOn: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFlat(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1293
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_0

    .line 1296
    const/4 v0, 0x1

    .line 1298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGravityBurst(F)Z
    .locals 4
    .param p1, "gravity"    # F

    .prologue
    const v3, 0x411ce80a

    .line 1267
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1269
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 1270
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gravity burst detected. gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tolerance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_1
    const/4 v0, 0x1

    .line 1277
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGyroAwakeMove()Z
    .locals 10

    .prologue
    .line 1427
    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x9

    rem-int/lit8 v1, v7, 0xa

    .line 1428
    .local v1, "i":I
    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x8

    rem-int/lit8 v2, v7, 0xa

    .line 1429
    .local v2, "j":I
    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x7

    rem-int/lit8 v3, v7, 0xa

    .line 1430
    .local v3, "k":I
    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v8, v8, v3

    add-float v0, v7, v8

    .line 1431
    .local v0, "Omega":F
    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v8, v8, v3

    add-float v4, v7, v8

    .line 1432
    .local v4, "xMove":F
    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v8, v8, v3

    add-float v5, v7, v8

    .line 1433
    .local v5, "yMove":F
    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v8, v8, v3

    add-float v6, v7, v8

    .line 1436
    .local v6, "zMove":F
    iget v7, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Y:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    neg-float v7, v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 1437
    iget-boolean v7, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v7, :cond_0

    .line 1438
    const-string v7, "HtcAngleDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GyroAwake detected. Omega="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", xMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", yMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", zMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    const/4 v7, 0x1

    .line 1446
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isGyroShakeAwake()Z
    .locals 7

    .prologue
    .line 1476
    sget v4, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit8 v1, v4, 0xa

    .line 1477
    .local v1, "i":I
    sget v4, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v4, v4, 0x8

    rem-int/lit8 v2, v4, 0xa

    .line 1478
    .local v2, "j":I
    sget v4, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v4, v4, 0x7

    rem-int/lit8 v3, v4, 0xa

    .line 1479
    .local v3, "k":I
    sget-object v4, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v4, v4, v1

    sget-object v5, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v5, v5, v2

    add-float/2addr v4, v5

    sget-object v5, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v5, v5, v3

    add-float v0, v4, v5

    .line 1481
    .local v0, "Omega":F
    iget v4, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 1482
    iget-boolean v4, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 1483
    const-string v4, "HtcAngleDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GyroShake detected. Omega="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_0
    const/4 v4, 0x1

    .line 1488
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isGyroTalkingMove()Z
    .locals 10

    .prologue
    .line 1451
    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x9

    rem-int/lit8 v1, v7, 0xa

    .line 1452
    .local v1, "i":I
    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x8

    rem-int/lit8 v2, v7, 0xa

    .line 1453
    .local v2, "j":I
    sget v7, Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I

    add-int/lit8 v7, v7, 0x7

    rem-int/lit8 v3, v7, 0xa

    .line 1454
    .local v3, "k":I
    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F

    aget v8, v8, v3

    add-float v0, v7, v8

    .line 1455
    .local v0, "Omega":F
    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F

    aget v8, v8, v3

    add-float v4, v7, v8

    .line 1456
    .local v4, "xMove":F
    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F

    aget v8, v8, v3

    add-float v5, v7, v8

    .line 1457
    .local v5, "yMove":F
    sget-object v7, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    sget-object v8, Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F

    aget v8, v8, v3

    add-float v6, v7, v8

    .line 1460
    .local v6, "zMove":F
    iget v7, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Y:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    .line 1461
    iget-boolean v7, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v7, :cond_0

    .line 1462
    const-string v7, "HtcAngleDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GyroTalking detected. Omega="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", xMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", yMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", zMove="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_0
    const/4 v7, 0x1

    .line 1470
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isReading(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1370
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isReadingViaPortrait(III)Z

    move-result v0

    return v0
.end method

.method private isReadingCmpLastAngle(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1355
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 1358
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1359
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReading for CmpLastAngle detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    const/4 v0, 0x1

    .line 1366
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaLandscapeLeft(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1410
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 1413
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1414
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via landscape (key at left side) detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_0
    const/4 v0, 0x1

    .line 1421
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaLandscapeRight(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1394
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 1397
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1398
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via landscape (key at right side) detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    const/4 v0, 0x1

    .line 1405
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadingViaPortrait(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1378
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 1381
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1382
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading via portrait detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    const/4 v0, 0x1

    .line 1389
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameAngle(III)Z
    .locals 7
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1205
    const/4 v0, 0x0

    .line 1206
    .local v0, "AvgX":I
    const/4 v1, 0x0

    .line 1207
    .local v1, "AvgY":I
    const/4 v2, 0x0

    .line 1208
    .local v2, "AvgZ":I
    const/4 v3, 0x0

    .line 1210
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 1211
    sget-object v4, Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I

    aget v4, v4, v3

    add-int/2addr v0, v4

    .line 1212
    sget-object v4, Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I

    aget v4, v4, v3

    add-int/2addr v1, v4

    .line 1213
    sget-object v4, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    .line 1210
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1215
    :cond_0
    div-int/lit8 v0, v0, 0xa

    .line 1216
    div-int/lit8 v1, v1, 0xa

    .line 1217
    div-int/lit8 v2, v2, 0xa

    .line 1219
    sub-int v4, p1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v4, v5, :cond_2

    sub-int v4, p2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v4, v5, :cond_2

    sub-int v4, p3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v4, v5, :cond_2

    .line 1222
    iget-boolean v4, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 1223
    const-string v4, "HtcAngleDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SameAngle: Skip. x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", z="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_1
    const/4 v4, 0x1

    .line 1241
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isSamePose(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x3e8

    .line 1177
    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    if-ne v1, v2, :cond_2

    .line 1181
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 1182
    :cond_0
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    .line 1183
    iput p2, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    .line 1184
    iput p3, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    .line 1200
    :cond_1
    :goto_0
    return v0

    .line 1189
    :cond_2
    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v1, v2, :cond_1

    .line 1192
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    .line 1193
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SamePose: Skip. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSameZAngle(I)Z
    .locals 5
    .param p1, "zAngle"    # I

    .prologue
    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "AvgZ":I
    const/4 v1, 0x0

    .line 1250
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 1251
    sget-object v2, Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1253
    :cond_0
    div-int/lit8 v0, v0, 0xa

    .line 1255
    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    if-ge p1, v2, :cond_2

    sub-int v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    if-ge v2, v3, :cond_2

    .line 1256
    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 1257
    const-string v2, "HtcAngleDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SameZAngle: z="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_1
    const/4 v2, 0x1

    .line 1262
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isShaking(F)Z
    .locals 3
    .param p1, "gravity"    # F

    .prologue
    .line 1281
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1282
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1283
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shaking detected. gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    const/4 v0, 0x1

    .line 1289
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalking(III)Z
    .locals 1
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1302
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isTalkingViaRightHand(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isTalkingViaLeftHand(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/HtcAngleDetector;->isTalkingViaPeterPose(III)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaLeftHand(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1325
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 1328
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1329
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via left hand detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_0
    const/4 v0, 0x1

    .line 1336
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaPeterPose(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1341
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 1342
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1343
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via peter pose detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_0
    const/4 v0, 0x1

    .line 1350
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkingViaRightHand(III)Z
    .locals 3
    .param p1, "xAngle"    # I
    .param p2, "yAngle"    # I
    .param p3, "zAngle"    # I

    .prologue
    .line 1309
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    if-le p3, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    if-ge p3, v0, :cond_1

    .line 1312
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1313
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Talking via right hand detected. x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_0
    const/4 v0, 0x1

    .line 1320
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readSysProp()V
    .locals 57

    .prologue
    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v37, v0

    .line 377
    .local v37, "old_std":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v38, v0

    .line 378
    .local v38, "old_str":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    .line 379
    .local v3, "old_at":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    .line 380
    .local v13, "old_gt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v36, v0

    .line 383
    .local v36, "old_sg":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    .line 384
    .local v4, "old_fxf":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    .line 385
    .local v5, "old_fxt":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    .line 386
    .local v6, "old_fyf":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    .line 387
    .local v7, "old_fyt":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    .line 388
    .local v8, "old_fzf":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    .line 391
    .local v9, "old_fzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v48, v0

    .line 392
    .local v48, "old_trxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v49, v0

    .line 393
    .local v49, "old_trxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v50, v0

    .line 394
    .local v50, "old_tryf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v51, v0

    .line 395
    .local v51, "old_tryt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v52, v0

    .line 396
    .local v52, "old_trzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v53, v0

    .line 398
    .local v53, "old_trzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v40, v0

    .line 399
    .local v40, "old_tlxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v41, v0

    .line 400
    .local v41, "old_tlxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v42, v0

    .line 401
    .local v42, "old_tlyf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v43, v0

    .line 402
    .local v43, "old_tlyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v44, v0

    .line 403
    .local v44, "old_tlzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v45, v0

    .line 405
    .local v45, "old_tlzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v46, v0

    .line 406
    .local v46, "old_tpzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v47, v0

    .line 409
    .local v47, "old_tpzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v30, v0

    .line 410
    .local v30, "old_rpxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v31, v0

    .line 411
    .local v31, "old_rpxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v32, v0

    .line 412
    .local v32, "old_rpyf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v33, v0

    .line 413
    .local v33, "old_rpyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v34, v0

    .line 414
    .local v34, "old_rpzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v35, v0

    .line 416
    .local v35, "old_rpzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v24, v0

    .line 417
    .local v24, "old_rlrxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v25, v0

    .line 418
    .local v25, "old_rlrxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v26, v0

    .line 419
    .local v26, "old_rlryf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v27, v0

    .line 420
    .local v27, "old_rlryt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v28, v0

    .line 421
    .local v28, "old_rlrzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v29, v0

    .line 423
    .local v29, "old_rlrzt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v18, v0

    .line 424
    .local v18, "old_rllxf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v19, v0

    .line 425
    .local v19, "old_rllxt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v20, v0

    .line 426
    .local v20, "old_rllyf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v21, v0

    .line 427
    .local v21, "old_rllyt":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v22, v0

    .line 428
    .local v22, "old_rllzf":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v23, v0

    .line 431
    .local v23, "old_rllzt":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    .line 432
    .local v10, "old_gao":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    .line 433
    .local v11, "old_gax":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    .line 435
    .local v12, "old_gaz":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    .line 436
    .local v14, "old_gto":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    .line 437
    .local v15, "old_gtx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    move/from16 v16, v0

    .line 441
    .local v16, "old_gtz":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v39, v0

    .line 442
    .local v39, "old_td":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v17, v0

    .line 445
    .local v17, "old_rd":I
    :try_start_0
    const-string v54, "persist.htc.had.scr.default"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    .line 446
    const-string v54, "persist.htc.had.scr.read"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    .line 447
    const-string v54, "persist.htc.had.at"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    .line 448
    const-string v54, "persist.htc.had.gt"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    .line 449
    const-string v54, "persist.htc.had.sg"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    .line 451
    const-string v54, "persist.htc.had.f.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    .line 452
    const-string v54, "persist.htc.had.f.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    .line 453
    const-string v54, "persist.htc.had.f.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    .line 454
    const-string v54, "persist.htc.had.f.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    .line 455
    const-string v54, "persist.htc.had.f.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    .line 456
    const-string v54, "persist.htc.had.f.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    .line 458
    const-string v54, "persist.htc.had.tr.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    .line 459
    const-string v54, "persist.htc.had.tr.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    .line 460
    const-string v54, "persist.htc.had.tr.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    .line 461
    const-string v54, "persist.htc.had.tr.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    .line 462
    const-string v54, "persist.htc.had.tr.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    .line 463
    const-string v54, "persist.htc.had.tr.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    .line 465
    const-string v54, "persist.htc.had.tl.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    .line 466
    const-string v54, "persist.htc.had.tl.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    .line 467
    const-string v54, "persist.htc.had.tl.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    .line 468
    const-string v54, "persist.htc.had.tl.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    .line 469
    const-string v54, "persist.htc.had.tl.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    .line 470
    const-string v54, "persist.htc.had.tl.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    .line 472
    const-string v54, "persist.htc.had.tp.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    .line 473
    const-string v54, "persist.htc.had.tp.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    .line 475
    const-string v54, "persist.htc.had.rp.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    .line 476
    const-string v54, "persist.htc.had.rp.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    .line 477
    const-string v54, "persist.htc.had.rp.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    .line 478
    const-string v54, "persist.htc.had.rp.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    .line 479
    const-string v54, "persist.htc.had.rp.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    .line 480
    const-string v54, "persist.htc.had.rp.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    .line 482
    const-string v54, "persist.htc.had.rlr.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    .line 483
    const-string v54, "persist.htc.had.rlr.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    .line 484
    const-string v54, "persist.htc.had.rlr.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    .line 485
    const-string v54, "persist.htc.had.rlr.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    .line 486
    const-string v54, "persist.htc.had.rlr.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    .line 487
    const-string v54, "persist.htc.had.rlr.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    .line 489
    const-string v54, "persist.htc.had.rll.x.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    .line 490
    const-string v54, "persist.htc.had.rll.x.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    .line 491
    const-string v54, "persist.htc.had.rll.y.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    .line 492
    const-string v54, "persist.htc.had.rll.y.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    .line 493
    const-string v54, "persist.htc.had.rll.z.from"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    .line 494
    const-string v54, "persist.htc.had.rll.z.to"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    .line 496
    const-string v54, "persist.htc.had.ga.omega"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    .line 497
    const-string v54, "persist.htc.had.ga.x"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    .line 498
    const-string v54, "persist.htc.had.ga.z"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    .line 500
    const-string v54, "persist.htc.had.gt.omega"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    .line 501
    const-string v54, "persist.htc.had.gt.x"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    .line 502
    const-string v54, "persist.htc.had.gt.z"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    .line 505
    const-string v54, "persist.htc.had.tm.xz"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F

    move/from16 v55, v0

    const/high16 v56, 0x41200000    # 10.0f

    mul-float v55, v55, v56

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x41200000    # 10.0f

    div-float v54, v54, v55

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F

    .line 506
    const-string v54, "persist.htc.had.bds"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z

    .line 508
    const-string v54, "persist.htc.had.talk.debounce"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    .line 509
    const-string v54, "persist.htc.had.read.debounce"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v55, v0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v54

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    move/from16 v54, v0

    if-eqz v54, :cond_1

    .line 517
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: SCREEN_TIMEOUT_DEFAULT="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_DEFAULT:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", SCREEN_TIMEOUT_READING="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", ANGLE_TOLERANCE="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->ANGLE_TOLERANCE:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", GRAVITY_TOLERANCE="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GRAVITY_TOLERANCE:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", SHAKING_GRAVITY="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->SHAKING_GRAVITY:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: flat. X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->FLAT_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: talking right hand. X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_RIGHT_HAND_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: talking left hand. X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_LEFT_HAND_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: talking peter pose. Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_PETER_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: reading via portrait. X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_PORTRAIT_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: reading via landscape (key at right side). X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_RIGHT_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: reading via landscape (key at left side). X_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_X_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Y_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Y_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_FROM="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_FROM:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z_ANGLE_TO="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_LANDSCAPE_LEFT_Z_ANGLE_TO:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: gyro awake threshold. OMEGA="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_OMEGA:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_X:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_AWAKE_Z:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: gyro talking threshold. OMEGA="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_OMEGA:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", X="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_X:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", Z="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->GYRO_TALKING_Z:F

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSP: debounce. TALKING="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ", READING="

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "->"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1
    return-void

    .line 510
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    move/from16 v54, v0

    if-eqz v54, :cond_0

    .line 512
    const-string v54, "HtcAngleDetector"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "readSysProp: Unable to get SystemProperties. "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private resetLastAngles()V
    .locals 1

    .prologue
    const/16 v0, 0x3e8

    .line 1493
    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mLastXAngle:I

    .line 1494
    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mLastYAngle:I

    .line 1495
    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mLastZAngle:I

    .line 1496
    return-void
.end method

.method private setScreenTimeout(I)V
    .locals 4
    .param p1, "screenOffDelay"    # I

    .prologue
    .line 1669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/PowerManager;->customizeScreenDelay_Always(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1672
    const-string v1, "HtcAngleDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenTimeout: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected disableDetector_Ext()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mDisableDetectorTask:Lcom/android/server/display/HtcAngleDetector$DisableDetectorTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAngleDetector;->enableDetector(Z)V

    .line 676
    return-void
.end method

.method protected isPsensorNear()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    return v0
.end method

.method protected isScreenTimeout()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    return v0
.end method

.method protected isTalkingDetected()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    return v0
.end method

.method protected isTurnOnScreenOnce()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 683
    iget-boolean v1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I

    .line 685
    iput-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z

    .line 687
    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I

    .line 688
    iput-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z

    .line 689
    const/4 v0, 0x1

    .line 691
    :cond_0
    return v0
.end method

.method protected notifyReleaseProximityWakeLock(ZI)V
    .locals 4
    .param p1, "status"    # Z
    .param p2, "timeout"    # I

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1704
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nPWL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z

    .line 1709
    if-eqz p1, :cond_1

    .line 1710
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1714
    :goto_0
    return-void

    .line 1712
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mEndCallTimeoutTask:Lcom/android/server/display/HtcAngleDetector$EndCallTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected notifyScreenTimeout(Z)V
    .locals 4
    .param p1, "isTimeout"    # Z

    .prologue
    const/4 v3, 0x0

    .line 642
    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    if-nez v0, :cond_1

    .line 643
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 644
    const-string v0, "HtcAngleDetector"

    const-string v1, "notifyScreenTimeout: angle detector is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eq v0, p1, :cond_0

    .line 650
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    .line 651
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyScreenTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    .line 657
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    .line 660
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsScreenTimeout:Z

    if-eqz v0, :cond_5

    .line 661
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V

    .line 662
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    .line 663
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    iget v1, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 664
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z

    .line 669
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->checkCondition()V

    goto :goto_0

    .line 667
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z

    goto :goto_1
.end method

.method protected proximitySensorOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    .line 588
    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    if-nez v0, :cond_1

    .line 589
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "HtcAngleDetector"

    const-string v1, "PSensorOn: angle detector is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-eq v0, p1, :cond_0

    .line 596
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    .line 597
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSensorOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    .line 602
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorOn:Z

    if-nez v0, :cond_3

    .line 603
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z

    .line 604
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z

    .line 607
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->checkCondition()V

    goto :goto_0
.end method

.method protected proximitySensorStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x1

    .line 612
    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_ANGLE_DETECTOR_ENABLE:Z

    if-nez v0, :cond_1

    .line 613
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "HtcAngleDetector"

    const-string v1, "PSensorStatus: angle detector is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    if-eq v0, p1, :cond_0

    .line 620
    iget-boolean v0, p0, Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    .line 621
    const-string v0, "HtcAngleDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSensorStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_2
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    if-ne v0, v3, :cond_4

    if-nez p1, :cond_4

    .line 625
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_xAngle:I

    .line 626
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_yAngle:I

    .line 627
    iget v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mNear_zAngle:I

    .line 628
    sget-boolean v0, Lcom/android/server/display/HtcAngleDetector;->IS_DETECTOR_ALWAYS_ENABLE:Z

    if-nez v0, :cond_3

    .line 629
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I

    iput v0, p0, Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I

    .line 630
    iput-boolean v3, p0, Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAngleDetector;->mCmpLastAngleTask:Lcom/android/server/display/HtcAngleDetector$CmpLastAngleTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    :cond_4
    iput p1, p0, Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I

    .line 637
    invoke-direct {p0}, Lcom/android/server/display/HtcAngleDetector;->checkCondition()V

    goto :goto_0
.end method
