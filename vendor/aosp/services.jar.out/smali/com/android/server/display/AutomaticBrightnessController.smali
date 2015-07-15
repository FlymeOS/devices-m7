.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_ONE_SECOND:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I = 0x0

.field private static AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F = 0.0f

.field private static AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I = 0x0

.field private static BRIGHTENING_LIGHT_DEBOUNCE:J = 0x0L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static DARKENING_BUTTON_LIGHT_DEBOUNCE:J = 0x0L

.field private static DARKENING_LIGHT_DEBOUNCE:J = 0x0L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final MSG_AUTO_BACKLIGHT_AVERAGE_SAMPLE:I = 0xb

.field private static final MSG_BUTTON_LIGHT_DEBOUNCED:I = 0xc

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SYS_PROP_AB_AVG_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.abavg.deb"

.field private static final SYS_PROP_AB_AVG_LOWER_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavg.lth"

.field private static final SYS_PROP_AB_AVG_MIN_THRESHOLD_VALUE:Ljava/lang/String; = "persist.htc.pms.minth"

.field private static final SYS_PROP_AB_AVG_STABLE_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.abavgs.deb"

.field private static final SYS_PROP_AB_AVG_STABLE_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavgs.th"

.field private static final SYS_PROP_AB_AVG_UPPER_THRESHOLD:Ljava/lang/String; = "persist.htc.pms.abavg.uth"

.field private static final SYS_PROP_BRIGHTEN_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.brighten.ls"

.field private static final SYS_PROP_DARKEN_DEBOUNCE:Ljava/lang/String; = "persist.htc.pms.darken.ls"

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static USE_HTC_BACKLIGHT_MECHANISM:Z = false

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z = false

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final WEIGHTING_INTERCEPT:I = 0x2710

.field private static mPrevEBI:F


# instance fields
.field private mAmbientEBI:F

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mBrighteningLuxThreshold:F

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mDarkeningLuxThreshold:F

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private mEBIToDisplayBrightnessTable:[I

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mLastAmbientEBI:F

.field private mLastAmbientEBITime:J

.field private mLastObservedEBI:F

.field private mLastObservedEBITime:J

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastSampleTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mRecentLightSamples:I

.field private mSampleFull:Z

.field private mSampleFullFirst:Z

.field private mSampleIndex:I

.field private mSampleLevel:[F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    const/16 v3, 0x3e8

    const/16 v2, 0x1f4

    .line 51
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    .line 72
    sput-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    .line 74
    const-wide/16 v0, 0x1f40

    sput-wide v0, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    .line 101
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 121
    sput-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_BUTTON_LIGHT_DEBOUNCE:J

    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_HTC_BACKLIGHT_MECHANISM:Z

    .line 201
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 202
    sput v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SECOND:I

    .line 203
    sput v2, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    .line 204
    sput v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    .line 205
    const/4 v0, 0x2

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .line 206
    const/16 v0, 0x1388

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I

    .line 208
    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    .line 209
    const/16 v0, 0xf

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I

    .line 211
    const v0, 0x3ee66666    # 0.45f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    .line 212
    const/16 v0, 0x2d

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I

    .line 218
    const/4 v0, 0x5

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    .line 221
    sput v2, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    .line 222
    const v0, 0x3e6b851f    # 0.23f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    .line 223
    const/16 v0, 0x17

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I

    .line 241
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;III[I)V
    .locals 5
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "EBIToDisplayBrightnessTable"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 228
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    .line 229
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z

    .line 231
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    .line 232
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    .line 236
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    .line 238
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    .line 239
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    .line 242
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    .line 781
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 811
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 248
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 251
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->isUsingNewBacklightAlgorithm()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 253
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 254
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 255
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 256
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 257
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 258
    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 260
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 261
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-direct {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 264
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 267
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v0, v1, v2}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 272
    :cond_0
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->autoEBIAverageRuleInit()V

    .line 274
    iput-object p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    .line 277
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->debounceButtonLight()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->handleEBIAverageSampleTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method private applyEBIAverageData()Z
    .locals 5

    .prologue
    .line 1201
    const/4 v1, 0x0

    .line 1202
    .local v1, "needUpdate":Z
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 1203
    const-string v2, "AutomaticBrightnessController"

    const-string v3, "aEBIAD start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    if-eqz v2, :cond_3

    .line 1207
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-lt v2, v3, :cond_1

    .line 1208
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    .line 1211
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    aput v4, v2, v3

    .line 1212
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    .line 1213
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z

    .line 1214
    const/4 v1, 0x1

    .line 1230
    :cond_2
    :goto_0
    return v1

    .line 1216
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    aput v4, v2, v3

    .line 1217
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    .line 1219
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-lt v2, v3, :cond_2

    .line 1220
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    .line 1221
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    const/4 v1, 0x1

    goto :goto_0

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 1227
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyEBIAverageData exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 391
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 392
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 393
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 396
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 397
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 400
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    .line 401
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    .line 402
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    .line 406
    :cond_0
    return-void
.end method

.method private autoEBIAverageRuleInit()V
    .locals 12

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    .line 1123
    sget v1, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    .line 1124
    .local v1, "old_ab_avg_debounce":I
    sget v4, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .line 1125
    .local v4, "old_ab_avg_sample_num":I
    sget v7, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    .line 1126
    .local v7, "old_ab_avg_up_threshold":F
    sget v2, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    .line 1127
    .local v2, "old_ab_avg_low_threshold":F
    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    .line 1128
    .local v5, "old_ab_avg_stb_debounce":I
    sget v6, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    .line 1129
    .local v6, "old_ab_avg_stb_threshold":F
    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    .line 1132
    .local v3, "old_ab_avg_min_thvalue":I
    :try_start_0
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    .line 1133
    const-string v8, "persist.htc.pms.abavg.deb"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    .line 1134
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    div-int/2addr v8, v9

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .line 1135
    const-string v8, "persist.htc.pms.abavg.uth"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    .line 1136
    const-string v8, "persist.htc.pms.abavg.lth"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    .line 1137
    const-string v8, "persist.htc.pms.abavgs.deb"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    .line 1138
    const-string v8, "persist.htc.pms.abavgs.th"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD_TEMP:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    .line 1139
    const-string v8, "persist.htc.pms.minth"

    sget v9, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    .line 1142
    :cond_0
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    .line 1143
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    .line 1144
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    .line 1145
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    .line 1146
    const/high16 v8, -0x40800000    # -1.0f

    sput v8, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :cond_1
    :goto_0
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_2

    .line 1153
    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "aEBIARInit: sample=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_deb="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_sample_num="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_up_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_low_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_min_thvalue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_stb_deb="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", avg_stb_threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_2
    return-void

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_1

    .line 1149
    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoEBIAverageRuleInit exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private autoEBIAverageRuleReset()V
    .locals 6

    .prologue
    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    .line 1185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z

    .line 1186
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    .line 1187
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    .line 1188
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1195
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aEBIARReset: sample=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_1
    return-void

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1191
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoEBIAverageRuleReset exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private autoEBIAverageRuleStart(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1168
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    .line 1169
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v2, 0xb

    sget v3, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_DEBOUNCE:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1176
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aEBIARStart: sample=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_1
    return-void

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1172
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoEBIAverageRuleStart exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 423
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 424
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 425
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/high16 v10, -0x40800000    # -1.0f

    .line 448
    :goto_0
    return v10

    .line 428
    :cond_0
    const/4 v5, 0x0

    .line 429
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 430
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 431
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 432
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 433
    .local v6, "startTime":J
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    .line 434
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 440
    .local v4, "lux":F
    add-float/2addr v8, v9

    .line 441
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 442
    move-wide v2, v6

    .line 431
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 448
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_1
    div-float v10, v5, v8

    goto :goto_0
.end method

.method private static calculateWeight(JJ)F
    .locals 2
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    .prologue
    .line 452
    invoke-static {p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 727
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenEBI(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    const v1, 0x477fff00    # 65535.0f

    const/4 v0, 0x0

    .line 1111
    cmpg-float v2, p1, v0

    if-gtz v2, :cond_1

    move p1, v0

    .line 1117
    .end local p1    # "value":F
    :cond_0
    :goto_0
    return p1

    .line 1114
    .restart local p1    # "value":F
    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    move p1, v1

    .line 1115
    goto :goto_0
.end method

.method private convertEBIToDisplayBrightnessAlgorithm(F)I
    .locals 7
    .param p1, "EBI"    # F

    .prologue
    .line 1019
    const/4 v2, -0x1

    .line 1020
    .local v2, "screenDisplayBrightnessValue":I
    const/4 v3, 0x0

    .line 1021
    .local v3, "screenEBI":F
    move v3, p1

    .line 1022
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    .line 1023
    const/4 v3, 0x0

    .line 1029
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    if-lez v4, :cond_6

    .line 1030
    float-to-int v1, v3

    .line 1031
    .local v1, "indexEBI":I
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    if-lt v1, v4, :cond_1

    .line 1032
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EBI index more than table = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 1035
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEBIToDisplayBrightnessTable:[I

    aget v2, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    .end local v1    # "indexEBI":I
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v4, :cond_7

    .line 1047
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4, v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->clampScreenDisplayBrightness(I)I

    move-result v2

    .line 1052
    :goto_2
    if-gez v2, :cond_3

    .line 1053
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1054
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "screenDisplayBrightnessValue is -1"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_3
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    .line 1057
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EBIToDisBL=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_4
    return v2

    .line 1024
    :cond_5
    const v4, 0x477fff00    # 65535.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 1025
    const v3, 0x477fff00    # 65535.0f

    goto :goto_0

    .line 1037
    :cond_6
    :try_start_1
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "mEBIToDisplayBrightnessTable is invalid"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/high16 v4, 0x41700000    # 15.0f

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v3, v5}, Landroid/util/FloatMath;->pow(FF)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_1

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 1042
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertEBIToDisplayBrightnessAlgorithm exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1049
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "mCallbacks is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private debounceButtonLight()V
    .locals 3

    .prologue
    .line 1339
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1340
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d-B-L="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-interface {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->debounceButtonLight(F)V

    .line 1345
    :cond_1
    return-void
.end method

.method private getEBIAverageAlgorithm(F)F
    .locals 11
    .param p1, "EBI"    # F

    .prologue
    .line 1063
    const/high16 v0, -0x40800000    # -1.0f

    .line 1064
    .local v0, "EBIValue":F
    const/high16 v1, -0x40800000    # -1.0f

    .line 1066
    .local v1, "EBIValueTemp":F
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    .line 1067
    const-string v8, "AutomaticBrightnessController"

    const-string v9, "getEBIAverageAlgorithm start"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    sget v2, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    .line 1071
    .local v2, "downEBI":F
    sget v5, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    .line 1072
    .local v5, "upEBI":F
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_LOWER_THRESHOLD:F

    mul-float v4, v2, v8

    .line 1073
    .local v4, "downThresholdTemp":F
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_UPPER_THRESHOLD:F

    mul-float v7, v5, v8

    .line 1075
    .local v7, "upThresholdTemp":F
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    .line 1076
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v4, v8

    .line 1079
    :cond_1
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    .line 1080
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_MIN_THRESHOLD_VALUE:I

    int-to-float v7, v8

    .line 1083
    :cond_2
    sub-float v3, v2, v4

    .line 1084
    .local v3, "downThreshold":F
    add-float v6, v5, v7

    .line 1086
    .local v6, "upThreshold":F
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_3

    .line 1087
    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBI 11 = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBIThreshold = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenEBI(F)F

    move-result v1

    .line 1093
    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    .line 1094
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_4

    .line 1095
    const-string v8, "AutomaticBrightnessController"

    const-string v9, "EBI first update"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_4
    move v0, v1

    .line 1103
    :goto_0
    sget-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v8, :cond_5

    .line 1104
    const-string v8, "AutomaticBrightnessController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EBIValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_5
    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    .line 1107
    return v0

    .line 1098
    :cond_6
    cmpg-float v8, v6, v1

    if-lez v8, :cond_7

    cmpl-float v8, v3, v1

    if-ltz v8, :cond_8

    .line 1099
    :cond_7
    move v0, v1

    goto :goto_0

    .line 1101
    :cond_8
    sget v0, Lcom/android/server/display/AutomaticBrightnessController;->mPrevEBI:F

    goto :goto_0
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v8, 0x6ddd00

    const-wide/16 v6, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 732
    cmp-long v2, p2, v6

    if-ltz v2, :cond_0

    cmp-long v2, p4, v6

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 747
    :cond_1
    :goto_0
    return v0

    .line 737
    :cond_2
    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 738
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 742
    :cond_3
    sub-long v2, p4, v8

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 743
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleEBIAverageRuleUpdate()V
    .locals 10

    .prologue
    .line 1234
    const/4 v3, 0x0

    .line 1235
    .local v3, "totalEBI":F
    const/4 v0, 0x0

    .line 1238
    .local v0, "avgEBI":F
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 1239
    const-string v6, "AutomaticBrightnessController"

    const-string v7, "hEBIARU start"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget v6, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-ge v2, v6, :cond_1

    .line 1243
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleLevel:[F

    aget v6, v6, v2

    add-float/2addr v3, v6

    .line 1242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1245
    :cond_1
    sget v6, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    int-to-float v6, v6

    div-float v0, v3, v6

    .line 1246
    iget-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFullFirst:Z

    if-eqz v6, :cond_4

    .line 1247
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    .line 1248
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU first full pre=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_2
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    .line 1251
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    .line 1252
    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    iput-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    .line 1253
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    .line 1254
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU first full aft=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_3
    :goto_1
    return-void

    .line 1258
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1260
    .local v4, "nowTime":J
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_5

    .line 1261
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU prechk=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_5
    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    sub-long v6, v4, v6

    sget v8, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_DEBOUNCE:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_7

    .line 1264
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientEBIAverageStable(F)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1265
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    .line 1266
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 1268
    :cond_6
    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    iput-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    .line 1269
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    .line 1271
    :cond_7
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    .line 1272
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hEBIARU aftchk=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBITime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1274
    .end local v4    # "nowTime":J
    :catch_0
    move-exception v1

    .line 1275
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v6, :cond_3

    .line 1276
    const-string v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEBIAverageRuleUpdate exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleEBIAverageSampleTimeout()V
    .locals 14

    .prologue
    .line 1282
    const-wide/16 v2, 0x0

    .line 1283
    .local v2, "diffTime":J
    const-wide/16 v0, 0x0

    .line 1284
    .local v0, "delayTime":J
    const/4 v7, 0x0

    .line 1285
    .local v7, "overCount":I
    const/4 v6, 0x0

    .line 1286
    .local v6, "needUpdate":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1288
    .local v8, "tmpTime":J
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_0

    .line 1289
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "hEBIAST start"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_0
    :try_start_0
    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    sub-long v2, v8, v10

    .line 1294
    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v10, v10

    cmp-long v10, v2, v10

    if-ltz v10, :cond_3

    .line 1295
    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v10, v10

    div-long v10, v2, v10

    long-to-int v7, v10

    .line 1296
    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    sget v12, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    add-int/lit8 v13, v7, 0x1

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v10, v12

    sub-long v0, v10, v8

    .line 1304
    :goto_0
    sget v10, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    if-le v7, v10, :cond_2

    .line 1305
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_1

    .line 1306
    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hEBIAST oC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_1
    sget v7, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_SAMPLE_NUMBER:I

    .line 1310
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_4

    .line 1311
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->applyEBIAverageData()Z

    move-result v10

    or-int/2addr v6, v10

    .line 1310
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1300
    .end local v5    # "i":I
    :cond_3
    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    sget v12, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    sub-long v0, v10, v8

    goto :goto_0

    .line 1313
    .restart local v5    # "i":I
    :cond_4
    iget-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    sub-long v10, v8, v10

    sget v12, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STOP_UPDATE_DEBOUNCE:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_8

    .line 1314
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v11, 0xb

    invoke-virtual {v10, v11, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1320
    :cond_5
    :goto_2
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_6

    .line 1321
    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Time=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sample=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleFull:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSampleIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_6
    add-long v10, v8, v0

    sget v12, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_ONE_SAMPLE_TIME:I

    int-to-long v12, v12

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSampleTime:J

    .line 1326
    if-eqz v6, :cond_7

    .line 1328
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->handleEBIAverageRuleUpdate()V

    .line 1335
    .end local v5    # "i":I
    :cond_7
    :goto_3
    return-void

    .line 1316
    .restart local v5    # "i":I
    :cond_8
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_5

    .line 1317
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "hEBIAST no L c"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1330
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 1331
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v10, :cond_7

    .line 1332
    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleEBIAverageSampleTimeout exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 378
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 380
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientEBI(J)V

    .line 386
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 388
    return-void
.end method

.method private isAmbientEBIAverageStable(F)Z
    .locals 7
    .param p1, "EBI"    # F

    .prologue
    .line 999
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 1000
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "iAEBIAS start"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    .line 1004
    .local v0, "downStableEBI":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientEBI:F

    .line 1005
    .local v2, "upStableEBI":F
    sget v4, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    mul-float/2addr v4, v0

    sub-float v1, v0, v4

    .line 1006
    .local v1, "downStableThreshold":F
    sget v4, Lcom/android/server/display/AutomaticBrightnessController;->AUTO_BACKLIGHT_AVERAGE_STABLE_THRESHOLD:F

    mul-float/2addr v4, v2

    add-float v3, v2, v4

    .line 1008
    .local v3, "upStableThreshold":F
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 1009
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iAEBIAS 11 = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_1
    cmpg-float v4, v3, p1

    if-ltz v4, :cond_2

    cmpl-float v4, v1, p1

    if-lez v4, :cond_3

    .line 1012
    :cond_2
    const/4 v4, 0x0

    .line 1014
    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 462
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 463
    .local v0, "N":I
    move-wide v2, p1

    .line 464
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 465
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 470
    :cond_0
    sget-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    add-long/2addr v4, v2

    return-wide v4

    .line 468
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 464
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 474
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 475
    .local v0, "N":I
    move-wide v2, p1

    .line 476
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 477
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 482
    :cond_0
    sget-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    add-long/2addr v4, v2

    return-wide v4

    .line 480
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 476
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    .line 417
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 418
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 419
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 420
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    if-eqz p1, :cond_1

    .line 340
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v2, :cond_4

    .line 341
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 343
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 344
    const-string v1, "AutomaticBrightnessController"

    const-string v2, "Reg L Sensor"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    const v4, 0xf4240

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 371
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_4

    .line 352
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 353
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 354
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 356
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 358
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 359
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 361
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_2

    .line 362
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->autoEBIAverageRuleReset()V

    .line 365
    :cond_2
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    .line 366
    const-string v0, "AutomaticBrightnessController"

    const-string v2, "Unreg L Sensor"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_4
    move v0, v1

    .line 371
    goto :goto_0
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .prologue
    .line 409
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 410
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 411
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAmbientEBI(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 985
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 986
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "uAEBI start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_2

    .line 989
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 990
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "uAEBI 11"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_1
    :goto_0
    return-void

    .line 994
    :cond_2
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBITime:J

    .line 995
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->handleEBIAverageSampleTimeout()V

    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 486
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 487
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 488
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 489
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 19
    .param p1, "time"    # J

    .prologue
    .line 494
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v5, :cond_2

    .line 495
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v14, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 497
    .local v12, "timeWhenSensorWarmedUp":J
    cmp-long v5, p1, v12

    if-gez v5, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 570
    .end local v12    # "timeWhenSensorWarmedUp":J
    :goto_0
    return-void

    .line 509
    .restart local v12    # "timeWhenSensorWarmedUp":J
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 510
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 511
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 512
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 520
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v5, :cond_1

    .line 521
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->autoEBIAverageRuleStart(J)V

    .line 522
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedEBI:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    .line 525
    :cond_1
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 529
    .end local v12    # "timeWhenSensorWarmedUp":J
    :cond_2
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->USE_HTC_BACKLIGHT_MECHANISM:Z

    if-nez v5, :cond_8

    .line 530
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v6

    .line 531
    .local v6, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v8

    .line 532
    .local v8, "nextDarkenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v4

    .line 534
    .local v4, "ambientLux":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    cmp-long v5, v6, p1

    if-lez v5, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_6

    cmp-long v5, v8, p1

    if-gtz v5, :cond_6

    .line 536
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 545
    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v5, :cond_5

    .line 546
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 549
    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v6

    .line 550
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v8

    .line 552
    :cond_6
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 559
    .local v10, "nextTransitionTime":J
    cmp-long v5, v10, p1

    if-lez v5, :cond_7

    .line 565
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 559
    :cond_7
    const-wide/16 v14, 0x3e8

    add-long v10, p1, v14

    goto :goto_1

    .line 567
    .end local v4    # "ambientLux":F
    .end local v6    # "nextBrightenTransition":J
    .end local v8    # "nextDarkenTransition":J
    .end local v10    # "nextTransitionTime":J
    :cond_8
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxForHtc(J)V

    goto/16 :goto_0
.end method

.method private updateAmbientLuxForHtc(J)V
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    .line 574
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 575
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_0

    .line 576
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 577
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 579
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    add-long v2, v4, v6

    .line 580
    .local v2, "debounceTime":J
    cmp-long v4, p1, v2

    if-gez v4, :cond_2

    .line 581
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v8, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 624
    .end local v2    # "debounceTime":J
    :cond_1
    :goto_0
    return-void

    .line 584
    .restart local v2    # "debounceTime":J
    :cond_2
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAmbientLux to brighter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-direct {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 587
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v4, :cond_1

    .line 588
    invoke-direct {p0, v8}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    goto :goto_0

    .line 591
    .end local v2    # "debounceTime":J
    :cond_3
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 592
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_4

    .line 593
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 594
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 596
    :cond_4
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    add-long v2, v4, v6

    .line 598
    .restart local v2    # "debounceTime":J
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_BUTTON_LIGHT_DEBOUNCE:J

    add-long v0, v4, v6

    .line 600
    .local v0, "debounceButtonTime":J
    cmp-long v4, p1, v2

    if-gez v4, :cond_6

    .line 602
    cmp-long v4, p1, v0

    if-gtz v4, :cond_5

    .line 603
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v9, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 606
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v8, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 609
    :cond_6
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAmbientLux to darker = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-direct {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 612
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-nez v4, :cond_1

    .line 613
    invoke-direct {p0, v8}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    goto :goto_0

    .line 616
    .end local v0    # "debounceButtonTime":J
    .end local v2    # "debounceTime":J
    :cond_7
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_1

    .line 618
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxDirection:I

    .line 619
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDebounceLuxTime:J

    .line 621
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v4, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 1
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 629
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(ZI)V

    .line 630
    return-void
.end method

.method private static weightIntegral(J)F
    .locals 4
    .param p0, "x"    # J

    .prologue
    .line 458
    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZF)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v0

    .line 306
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 307
    if-eqz v0, :cond_0

    .line 308
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 310
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 314
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 321
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return v0
.end method

.method public initalizeDebounceTime()V
    .locals 10

    .prologue
    .line 281
    sget-wide v2, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    .line 282
    .local v2, "old_brighten_ls_debounce":J
    sget-wide v4, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    .line 284
    .local v4, "old_darken_ls_debounce":J
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 286
    :try_start_0
    const-string v1, "persist.htc.pms.brighten.ls"

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    invoke-static {v1, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    .line 287
    const-string v1, "persist.htc.pms.darken.ls"

    sget-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-static {v1, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    const-string v1, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialize:, brighten_ls_debounce="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/android/server/display/AutomaticBrightnessController;->BRIGHTENING_LIGHT_DEBOUNCE:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", darken_ls_debounce="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/android/server/display/AutomaticBrightnessController;->DARKENING_LIGHT_DEBOUNCE:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 290
    const-string v1, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initalizeDebounceTime fail, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateAutoBrightness(ZI)V
    .locals 19
    .param p1, "sendUpdate"    # Z
    .param p2, "DURATION"    # I

    .prologue
    .line 634
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v4, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v17

    .line 639
    .local v17, "value":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 641
    .local v12, "gamma":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    move/from16 v18, v0

    .line 644
    .local v18, "valueEBI":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 646
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    neg-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v9

    .line 648
    .local v9, "adjGamma":F
    mul-float/2addr v12, v9

    .line 649
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 650
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness1: adjGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v9    # "adjGamma":F
    :cond_2
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v4}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v16

    .line 656
    .local v16, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 658
    .local v2, "now":J
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v11

    .line 660
    .local v11, "earlyGamma":F
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v14

    .line 662
    .local v14, "lateGamma":F
    mul-float v4, v11, v14

    mul-float/2addr v12, v4

    .line 663
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    .line 664
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness2: earlyGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lateGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    .end local v2    # "now":J
    .end local v11    # "earlyGamma":F
    .end local v14    # "lateGamma":F
    .end local v16    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_3
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_a

    .line 672
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientEBI:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->getEBIAverageAlgorithm(F)F

    move-result v18

    .line 681
    :cond_4
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v12, v4

    if-eqz v4, :cond_5

    .line 682
    move/from16 v13, v17

    .line 683
    .local v13, "in":F
    move/from16 v0, v17

    invoke-static {v0, v12}, Landroid/util/MathUtils;->pow(FF)F

    move-result v17

    .line 684
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_5

    .line 685
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness3: gamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", in="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", out="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v13    # "in":F
    :cond_5
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v17

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v15

    .line 694
    .local v15, "newScreenAutoBrightness":I
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_6

    .line 695
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->convertEBIToDisplayBrightnessAlgorithm(F)I

    move-result v15

    .line 700
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v4, :cond_7

    .line 701
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 702
    .local v8, "LUX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getButtonValue(I)I

    move-result v10

    .line 703
    .local v10, "buttonValue":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4, v10}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->setButtonValue(I)V

    .line 707
    .end local v8    # "LUX":I
    .end local v10    # "buttonValue":I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ne v4, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getCurrentBrightness()I

    move-result v4

    if-eq v4, v15, :cond_0

    .line 709
    :cond_8
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_ON:Z

    if-eqz v4, :cond_9

    .line 710
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness4: mScreenAutoBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newScreenAutoBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_9
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 719
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 720
    if-eqz p1, :cond_0

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    move/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness(I)V

    goto/16 :goto_0

    .line 674
    .end local v15    # "newScreenAutoBrightness":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    if-eqz v4, :cond_4

    .line 675
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 676
    .restart local v8    # "LUX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-interface {v4, v8, v5}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->getBrightnessBaseOnAlgorithm(ILandroid/util/Spline;)F

    move-result v17

    goto/16 :goto_1
.end method
