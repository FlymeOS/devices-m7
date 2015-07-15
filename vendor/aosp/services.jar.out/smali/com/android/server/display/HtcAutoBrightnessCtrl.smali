.class final Lcom/android/server/display/HtcAutoBrightnessCtrl;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;,
        Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    }
.end annotation


# static fields
.field private static CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

.field private static DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

.field private static MAX_AUTO_BRIGHTNESS_BASE_RATE:I

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z

.field private static mPrevLcdValue:I

.field private static mPrevLux:I


# instance fields
.field private final ACTION_AUDIO_STREAMING_MODE_CHANGE:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

.field private final ACTION_PREFIX:Ljava/lang/String;

.field private final AUDIO_STREAMING_TIMEOUT:I

.field private final BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

.field private final BRIGHTER_ONLY_TIMEOUT:I

.field private final DEBUG_ON:Z

.field private final DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

.field private final DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

.field private final DEFAULT_TRANSITION_DELAY:I

.field private final DURATION_BLOCK_BRIGHTNESS_TO_LOWER_TARGET:I

.field private final KEY_AUDIO_STREAMING_MODE:Ljava/lang/String;

.field private final KEY_AUDIO_STREAMING_UID:Ljava/lang/String;

.field private final KEY_BACKLIGHT_DELAY:Ljava/lang/String;

.field private final KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final TAG:Ljava/lang/String;

.field private final TRANSFORMED_LCD_VALUES:[I

.field private final VALID_MAX_TRANSITION_DELAY:I

.field private final VALID_MIN_TRANSITION_DELAY:I

.field dayDreamObserver:Landroid/os/FileObserver;

.field final dayDreamPath:Ljava/lang/String;

.field private mAudioStreamingMode:Z

.field private final mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

.field private mAudioStreamingUid:I

.field private mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

.field private final mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private final mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

.field private mButtonBacklightValues:[I

.field private final mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

.field private mCameraEnteringDelay:I

.field private mCameraForceUpdateBrightness:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDayDreamMode:Z

.field private final mDayDreamOffTask:Ljava/lang/Runnable;

.field private final mDayDreamOnTask:Ljava/lang/Runnable;

.field private mEnableBrighterOnly:Z

.field private mEnteringLcdValue:I

.field private mHandler:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLightSensorLevels:[I

.field private mMaxBacklightValue:I

.field private mPowerSaverMode:Z

.field private final mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenBrightness:[I

.field private mScreenState:Z

.field private final mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 75
    const/16 v0, 0x32

    sput v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->MAX_AUTO_BRIGHTNESS_BASE_RATE:I

    .line 121
    sput v1, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLux:I

    .line 122
    sput v1, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 153
    const v0, 0x3f333333    # 0.7f

    sput v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    .line 154
    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;[I[IZ)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    .param p3, "lux"    # [I
    .param p4, "screenBrightness"    # [I
    .param p5, "enableDisplayBrightness"    # Z

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v9, "HABCtrl"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    .line 40
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->MASTER_ENABLE:Z

    .line 43
    const-string v9, "com.htc.intent.action.CAMERA_"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->ACTION_PREFIX:Ljava/lang/String;

    .line 45
    const-string v9, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_ON"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

    .line 47
    const-string v9, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_OFF"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

    .line 51
    const-string v9, "entering.screen.brightness"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

    .line 53
    const-string v9, "backlight.delay"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->KEY_BACKLIGHT_DELAY:Ljava/lang/String;

    .line 56
    const v9, 0xea60

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_TIMEOUT:I

    .line 58
    const/16 v9, 0x7f

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

    .line 60
    const/16 v9, 0x10

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEFAULT_TRANSITION_DELAY:I

    .line 62
    const/16 v9, 0x14

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

    .line 63
    const/16 v9, 0x28

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

    .line 65
    const/16 v9, 0xfa

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->VALID_MAX_TRANSITION_DELAY:I

    .line 66
    const/16 v9, 0x10

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->VALID_MIN_TRANSITION_DELAY:I

    .line 69
    const-string v9, "com.htc.Audio.Streaming.ModeChange"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->ACTION_AUDIO_STREAMING_MODE_CHANGE:Ljava/lang/String;

    .line 70
    const-string v9, "audio_streaming_status"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->KEY_AUDIO_STREAMING_MODE:Ljava/lang/String;

    .line 71
    const-string v9, "uid"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->KEY_AUDIO_STREAMING_UID:Ljava/lang/String;

    .line 79
    const/16 v9, 0x100

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->TRANSFORMED_LCD_VALUES:[I

    .line 127
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 130
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    .line 131
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    .line 133
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 134
    const/16 v9, 0x7f

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 136
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 137
    const/16 v9, 0x14

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 140
    const v9, 0xea60

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->AUDIO_STREAMING_TIMEOUT:I

    .line 141
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 142
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 146
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->dayDreamObserver:Landroid/os/FileObserver;

    .line 147
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    .line 148
    const-string v9, "/sys/power/pnpmgr/apps/non_activity_trigger"

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->dayDreamPath:Ljava/lang/String;

    .line 157
    const/16 v9, 0x1f40

    iput v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DURATION_BLOCK_BRIGHTNESS_TO_LOWER_TARGET:I

    .line 309
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamOnTask:Ljava/lang/Runnable;

    .line 317
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$3;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$3;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamOffTask:Ljava/lang/Runnable;

    .line 463
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$4;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$4;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;

    .line 803
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$5;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$5;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

    .line 823
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$6;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$6;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 853
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 1144
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$8;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$8;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    .line 1190
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$9;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$9;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    .line 1483
    new-instance v9, Lcom/android/server/display/HtcAutoBrightnessCtrl$10;

    invoke-direct {v9, p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl$10;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    .line 167
    sput-boolean p5, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 170
    iget-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v9, :cond_0

    .line 171
    const-string v9, "HABCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Constructor: ENABLE=(true,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    .line 177
    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 178
    iput-object p2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    .line 181
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mLightSensorLevels:[I

    .line 182
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    .line 184
    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 187
    .local v8, "resources":Landroid/content/res/Resources;
    const/16 v5, 0x46

    .line 189
    .local v5, "powerSaverPercentage":I
    const-string v9, "config_changeDisplayBrightnessPercentageInPowerSaver"

    const-string v10, "integer"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 190
    .local v6, "resId":I
    if-eqz v6, :cond_1

    .line 191
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 193
    :cond_1
    int-to-float v9, v5

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    sput v9, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    .line 195
    const-string v9, "config_minDisplayBrightnessValueInCameraMode"

    const-string v10, "integer"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 196
    .local v7, "resId2":I
    if-eqz v7, :cond_2

    .line 197
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/android/server/display/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    .line 200
    :cond_2
    const-string v9, "HABCtrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/display/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const v9, 0x1070024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mButtonBacklightValues:[I

    .line 206
    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mButtonBacklightValues:[I

    if-nez v9, :cond_3

    .line 207
    iget-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v9, :cond_3

    .line 208
    const-string v9, "HABCtrl"

    const-string v10, "Error in config.xml - config_autoBrightnessButtonBacklightValues returned null."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v9, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_ON"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v9, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_OFF"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "com.htc.permission.APP_PLATFORM"

    iget-object v12, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v1, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 220
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v4, "filterPowerSaverMode":Landroid/content/IntentFilter;
    const-string v9, "com.htc.server.htcpowersaver.action.ON"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v9, "com.htc.server.htcpowersaver.action.OFF"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.DEVICE_POWER"

    iget-object v12, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v4, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 227
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v2, "filterAudio":Landroid/content/IntentFilter;
    const-string v9, "com.htc.Audio.Streaming.ModeChange"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingModeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v2, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 233
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v3, "filterPowerSaver":Landroid/content/IntentFilter;
    const-string v9, "com.htc.server.htcpowersaver.action.screenon"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v9, "com.htc.server.htcpowersaver.action.screenoff"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "com.htc.permission.APP_PLATFORM"

    iget-object v12, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v3, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 240
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->initObserver()V

    .line 245
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
        0x6
        0x7
        0x8
        0x9
        0x9
        0xa
        0xb
        0xc
        0xd
        0xd
        0xe
        0xf
        0x10
        0x10
        0x11
        0x12
        0x13
        0x14
        0x14
        0x15
        0x16
        0x17
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1b
        0x1c
        0x1d
        0x1e
        0x1e
        0x1f
        0x20
        0x21
        0x21
        0x22
        0x23
        0x24
        0x24
        0x25
        0x26
        0x27
        0x27
        0x28
        0x29
        0x2a
        0x2a
        0x2b
        0x2c
        0x2d
        0x2d
        0x2e
        0x2f
        0x30
        0x30
        0x31
        0x32
        0x32
        0x33
        0x34
        0x35
        0x35
        0x36
        0x37
        0x37
        0x38
        0x39
        0x3a
        0x3a
        0x3b
        0x3c
        0x3c
        0x3d
        0x3e
        0x3e
        0x3f
        0x40
        0x40
        0x41
        0x42
        0x42
        0x43
        0x44
        0x44
        0x45
        0x46
        0x46
        0x47
        0x48
        0x48
        0x49
        0x4a
        0x4a
        0x4b
        0x4c
        0x4c
        0x4d
        0x4d
        0x4e
        0x4f
        0x4f
        0x50
        0x51
        0x51
        0x52
        0x52
        0x53
        0x54
        0x54
        0x55
        0x55
        0x56
        0x56
        0x57
        0x58
        0x58
        0x59
        0x59
        0x5a
        0x5a
        0x5b
        0x5c
        0x5c
        0x5d
        0x5d
        0x5e
        0x5e
        0x5f
        0x5f
        0x60
        0x60
        0x61
        0x61
        0x62
        0x62
        0x63
        0x63
        0x64
        0x64
        0x65
        0x65
        0x66
        0x66
        0x67
        0x67
        0x68
        0x68
        0x69
        0x69
        0x69
        0x6a
        0x6a
        0x6b
        0x6b
        0x6c
        0x6c
        0x6c
        0x6d
        0x6d
        0x6e
        0x6e
        0x6e
        0x6f
        0x6f
        0x70
        0x70
        0x70
        0x71
        0x71
        0x71
        0x72
        0x72
        0x72
        0x73
        0x73
        0x73
        0x74
        0x74
        0x74
        0x75
        0x75
        0x75
        0x76
        0x76
        0x76
        0x77
        0x77
        0x77
        0x77
        0x78
        0x78
        0x78
        0x79
        0x79
        0x79
        0x79
        0x7a
        0x7a
        0x7a
        0x7a
        0x7a
        0x7b
        0x7b
        0x7b
        0x7b
        0x7b
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7d
        0x7d
        0x7d
        0x7d
        0x7d
        0x7d
        0x7d
        0x7e
        0x7e
        0x7e
        0x7e
        0x7e
        0x7e
        0x7e
        0x7e
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x7f
        0x80
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamOnTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return p1
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/HtcAutoBrightnessCtrl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->resetAudioStreamingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamOffTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setDayDreamMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/HtcAutoBrightnessCtrl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->checkAudioStreamingMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/HtcAutoBrightnessCtrl;Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/HtcAutoBrightnessCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method private applyMaxAutoBrightnessModeLcdValue(II)I
    .locals 8
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 618
    move v3, p1

    .line 620
    .local v3, "newLcdValue":I
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 622
    if-ltz p2, :cond_0

    const/16 v5, 0x64

    if-le p2, v5, :cond_2

    .line 623
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v5, :cond_1

    .line 624
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoPercentage error:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .line 646
    .end local v3    # "newLcdValue":I
    .local v4, "newLcdValue":I
    :goto_0
    return v4

    .line 630
    .end local v4    # "newLcdValue":I
    .restart local v3    # "newLcdValue":I
    :cond_2
    :try_start_0
    sget v5, Lcom/android/server/display/HtcAutoBrightnessCtrl;->MAX_AUTO_BRIGHTNESS_BASE_RATE:I

    mul-int/2addr v5, v3

    div-int/lit8 v0, v5, 0x64

    .line 631
    .local v0, "baseLcdValue":I
    sub-int v5, v3, v0

    mul-int/2addr v5, p2

    div-int/lit8 v1, v5, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .local v1, "diffLcdValue":I
    add-int v3, v0, v1

    .line 642
    .end local v0    # "baseLcdValue":I
    .end local v1    # "diffLcdValue":I
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v5, :cond_4

    .line 643
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getA:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v4, v3

    .line 646
    .end local v3    # "newLcdValue":I
    .restart local v4    # "newLcdValue":I
    goto :goto_0

    .line 633
    .end local v4    # "newLcdValue":I
    .restart local v3    # "newLcdValue":I
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/Exception;
    iget-boolean v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v5, :cond_5

    .line 635
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apply: Exception caught. lcdValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_5
    move v3, p1

    goto :goto_1
.end method

.method private checkAudioStreamingMode(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 991
    const-string v4, "audio_streaming_status"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 992
    .local v0, "audioStreamingValue":Z
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v1

    .line 993
    .local v1, "curLcdValue":I
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getTargetBrightness()I

    move-result v2

    .line 995
    .local v2, "endLcdValue":I
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 996
    const-string v4, "HABCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAudioStreamingMode : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 1005
    :cond_0
    if-ne v0, v9, :cond_3

    .line 1007
    const-string v4, "uid"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 1009
    iget v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    if-gez v4, :cond_2

    .line 1011
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 1012
    const-string v4, "HABCtrl"

    const-string v5, "uid < 0"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_1
    :goto_0
    return-void

    .line 1018
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1019
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1021
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v4, :cond_1

    .line 1025
    iput-boolean v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 1027
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v4, :cond_1

    .line 1031
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v4, :cond_1

    .line 1035
    const/4 v3, -0x1

    .line 1037
    .local v3, "newLcdValue":I
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v3

    .line 1039
    if-lez v3, :cond_1

    .line 1040
    invoke-direct {p0, v3, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 1045
    .end local v3    # "newLcdValue":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1047
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->closeAudioStreamingMode()V

    goto :goto_0
.end method

.method private checkPlayAudioStreamingUid()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1054
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 1055
    const-string v4, "HABCtrl"

    const-string v6, "checkAudioStreamingUid"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1060
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1062
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    move v4, v5

    .line 1085
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return v4

    .line 1066
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1068
    .local v3, "size":I
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_2

    .line 1069
    const-string v4, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 1073
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    if-ne v4, v6, :cond_4

    .line 1074
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    .line 1075
    const-string v4, "HABCtrl"

    const-string v6, "Uid is running"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1072
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1081
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "size":I
    :catch_0
    move-exception v4

    :cond_5
    move v4, v5

    .line 1085
    goto :goto_0
.end method

.method private closeAudioStreamingMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1090
    const/4 v0, -0x1

    .line 1092
    .local v0, "newLcdValue":I
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1093
    const-string v1, "HABCtrl"

    const-string v2, "closeAudioStreamingMode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    iput v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingUid:I

    .line 1098
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v1, :cond_2

    .line 1126
    :cond_1
    :goto_0
    return-void

    .line 1102
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    .line 1104
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v1, :cond_1

    .line 1108
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    .line 1112
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1113
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    if-eqz v1, :cond_3

    .line 1114
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v1, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->forceBrightnessUpdate(I)V

    .line 1122
    :cond_3
    :goto_1
    if-lez v0, :cond_1

    .line 1123
    invoke-direct {p0, v0, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 1116
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_5

    .line 1117
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto :goto_1

    .line 1119
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v0

    goto :goto_1
.end method

.method private getAudioStreamingModeLcdValue(I)I
    .locals 2
    .param p1, "lcdValue"    # I

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 743
    .local v0, "AUTO_BRIGHTNESS_MODE":Z
    if-eqz v0, :cond_0

    .line 744
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInAuto(I)I

    move-result v1

    .line 746
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v1

    goto :goto_0
.end method

.method private getAudioStreamingModeLcdValueInAuto(I)I
    .locals 4
    .param p1, "lcdValue"    # I

    .prologue
    .line 778
    move v0, p1

    .line 780
    .local v0, "newLcdValue":I
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_2

    .line 783
    sget-boolean v1, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_0

    .line 784
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValueInAuto(I)I

    move-result v1

    .line 800
    :goto_0
    return v1

    .line 788
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 789
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v0

    .line 792
    :cond_1
    mul-int/lit8 v0, v0, 0x1

    .line 794
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    .line 795
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioStreaming:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .line 800
    goto :goto_0
.end method

.method private getAudioStreamingModeLcdValueInManual(I)I
    .locals 5
    .param p1, "lcdValue"    # I

    .prologue
    .line 752
    move v0, p1

    .line 754
    .local v0, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_1

    .line 757
    sget-boolean v2, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_0

    .line 758
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValueInManual(I)I

    move-result v2

    .line 773
    :goto_0
    return v2

    .line 762
    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v1, v2, v3

    .line 763
    .local v1, "ratio":F
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 765
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 766
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioStreaming:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ratio":F
    :cond_1
    move v2, v0

    .line 773
    goto :goto_0
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1318
    const/4 v0, 0x0

    .line 1319
    .local v0, "autoBrightnessMode":I
    const/4 v2, 0x1

    .line 1321
    .local v2, "isAutoBrightnessAvailable":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1323
    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1327
    :goto_0
    if-ne v0, v3, :cond_0

    if-eqz v2, :cond_0

    :goto_1
    return v3

    .line 1324
    :catch_0
    move-exception v1

    .line 1325
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "HABCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAutoBrightnessEnabled: Exception caught: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 1327
    goto :goto_1
.end method

.method private getBrighterOnlyLcdValue(I)I
    .locals 4
    .param p1, "lcdValue"    # I

    .prologue
    .line 717
    move v0, p1

    .line 719
    .local v0, "newLcdValue":I
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_1

    .line 722
    sget-boolean v1, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_2

    .line 723
    sget v1, Lcom/android/server/display/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    .line 729
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 730
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrighterOnly:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1
    return v0

    .line 725
    :cond_2
    iget v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    :cond_3
    goto :goto_0
.end method

.method private getCustomizedBrightness(II)I
    .locals 5
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 479
    const/4 v0, 0x1

    .line 480
    .local v0, "applyMaxAutoBrightness":Z
    move v1, p1

    .line 482
    .local v1, "newLcdValue":I
    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 483
    const/16 v1, 0xff

    .line 487
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_4

    .line 489
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getDayDreamingLcdValue(I)I

    move-result v1

    .line 500
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 501
    invoke-direct {p0, v1, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->applyMaxAutoBrightnessModeLcdValue(II)I

    move-result v1

    .line 504
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 505
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCB:(true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v2

    return v2

    .line 490
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_5

    .line 491
    const/4 v0, 0x0

    .line 493
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v1

    goto :goto_0

    .line 494
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_6

    .line 495
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v1

    goto/16 :goto_0

    .line 496
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_1

    .line 497
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v1

    goto/16 :goto_0
.end method

.method private getCustomizedDisplayBrightness(II)I
    .locals 5
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 1396
    const/4 v0, 0x1

    .line 1397
    .local v0, "applyMaxAutoBrightness":Z
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getValidDisplayLcdValue(I)I

    move-result v1

    .line 1400
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_3

    .line 1402
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getDayDreamingLcdValue(I)I

    move-result v1

    .line 1413
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1414
    invoke-direct {p0, v1, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->applyMaxAutoBrightnessModeLcdValue(II)I

    move-result v1

    .line 1417
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 1418
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCDB:(true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getValidDisplayLcdValue(I)I

    move-result v2

    return v2

    .line 1403
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_4

    .line 1404
    const/4 v0, 0x0

    .line 1406
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v1

    goto :goto_0

    .line 1407
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_5

    .line 1408
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValue(I)I

    move-result v1

    goto/16 :goto_0

    .line 1409
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_0

    .line 1410
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v1

    goto/16 :goto_0
.end method

.method private getDayDreamingLcdValue(I)I
    .locals 6
    .param p1, "lcdValue"    # I

    .prologue
    .line 687
    move v1, p1

    .line 689
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_0

    .line 693
    :try_start_0
    sget-boolean v2, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_1

    .line 694
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValue(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 706
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 707
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDD:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    return v1

    .line 696
    :cond_1
    const-wide v2, 0x3ff3333333333333L    # 1.2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->TRANSFORMED_LCD_VALUES:[I

    aget v4, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 701
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDD: Exception caught. lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_2
    move v1, p1

    goto :goto_0
.end method

.method private getManualBrightness()I
    .locals 7

    .prologue
    .line 1331
    const/16 v0, 0x7f

    .line 1333
    .local v0, "currentLcdValue":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1334
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v3

    .line 1336
    .local v3, "screenBrightnessSettingDefault":I
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1343
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "screenBrightnessSettingDefault":I
    :goto_0
    sget-boolean v4, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_0

    .line 1344
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getManualDisplayBrightness(I)I

    move-result v0

    .line 1348
    :cond_0
    return v0

    .line 1338
    :catch_0
    move-exception v1

    .line 1339
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HABCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getManualBrightness: Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getManualDisplayBrightness(I)I
    .locals 1
    .param p1, "lcdValue"    # I

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getManualDisplayBrightness(I)I

    move-result p1

    .line 1441
    .end local p1    # "lcdValue":I
    :cond_0
    return p1
.end method

.method private getMaxBacklightValue()I
    .locals 3

    .prologue
    .line 1365
    :try_start_0
    iget v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 1366
    iget v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 1375
    :goto_0
    return v1

    .line 1368
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    if-eqz v1, :cond_1

    .line 1369
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HABCtrl"

    const-string v2, "getMaxBacklightValue: reset mMaxBacklightValue"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_1
.end method

.method private getPowerSaverDisplayBrightnessValue(I)I
    .locals 2
    .param p1, "displayValue"    # I

    .prologue
    .line 1446
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 1448
    .local v0, "autoMode":Z
    if-eqz v0, :cond_0

    .line 1449
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValueInAuto(I)I

    move-result v1

    .line 1451
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValueInManual(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPowerSaverDisplayBrightnessValueInAuto(I)I
    .locals 4
    .param p1, "displayValue"    # I

    .prologue
    .line 1457
    move v0, p1

    .line 1459
    .local v0, "lcdValue":I
    int-to-float v1, v0

    sget v2, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1461
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1462
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto DisBL=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    return v0
.end method

.method private getPowerSaverDisplayBrightnessValueInManual(I)I
    .locals 4
    .param p1, "displayValue"    # I

    .prologue
    .line 1470
    move v0, p1

    .line 1472
    .local v0, "lcdValue":I
    int-to-float v1, v0

    sget v2, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DISPLAY_BRIGHTNESS_TO_POWER_SAVER_PERCENTAGE:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1474
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1475
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manual DisBL=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_0
    return v0
.end method

.method private getPowerSaverLcdValue(I)I
    .locals 6
    .param p1, "lcdValue"    # I

    .prologue
    .line 651
    move v1, p1

    .line 653
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_1

    .line 656
    :try_start_0
    sget-boolean v2, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_2

    .line 657
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverDisplayBrightnessValue(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 675
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 676
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPS:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_1
    return v1

    .line 659
    :cond_2
    const-wide v2, 0x3ff3333333333333L    # 1.2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->TRANSFORMED_LCD_VALUES:[I

    aget v4, v4, v1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 661
    mul-int/lit8 v2, v1, 0x66

    div-int/lit8 v1, v2, 0x75
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 662
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 663
    const/16 v1, 0x14

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 670
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPS: Exception caught. lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_3
    move v1, p1

    goto :goto_0
.end method

.method private getValidDelay(I)I
    .locals 2
    .param p1, "delay"    # I

    .prologue
    const/16 v0, 0xfa

    const/16 v1, 0x10

    .line 1358
    if-ge p1, v1, :cond_0

    move p1, v1

    .line 1359
    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1360
    :cond_1
    return p1
.end method

.method private getValidDisplayLcdValue(I)I
    .locals 1
    .param p1, "lcdValue"    # I

    .prologue
    const/16 v0, 0x2800

    .line 1432
    if-le p1, v0, :cond_0

    move p1, v0

    .line 1433
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1434
    :cond_1
    return p1
.end method

.method private getValidLcdValue(I)I
    .locals 2
    .param p1, "lcdValue"    # I

    .prologue
    const/16 v1, 0xff

    const/16 v0, 0x14

    .line 1352
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1353
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1354
    :cond_1
    return p1
.end method

.method private initObserver()V
    .locals 3

    .prologue
    .line 249
    const-string v0, "HABCtrl"

    const-string v1, "initObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Lcom/android/server/display/HtcAutoBrightnessCtrl$1;

    const-string v1, "/sys/power/pnpmgr/apps/non_activity_trigger"

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->dayDreamObserver:Landroid/os/FileObserver;

    .line 305
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->dayDreamObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 307
    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 4

    .prologue
    .line 1379
    const/4 v0, 0x1

    .line 1380
    .local v0, "keyguardLocked":Z
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1381
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 1383
    if-eqz v0, :cond_0

    .line 1384
    const-string v2, "HABCtrl"

    const-string v3, "Keyguard is locked, skip"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->cancelAnimation()V

    .line 1387
    :cond_0
    return v0
.end method

.method private reset(I)V
    .locals 5
    .param p1, "delay"    # I

    .prologue
    const/4 v4, 0x0

    .line 1203
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 1204
    .local v0, "AUTO_BRIGHTNESS_MODE":Z
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1206
    if-nez v0, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setScreenBrightnessMode(I)V

    .line 1212
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_2

    .line 1249
    :cond_1
    :goto_0
    return-void

    .line 1216
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 1218
    const/4 v1, 0x0

    .line 1219
    .local v1, "manualBrightness":I
    if-eqz v0, :cond_3

    .line 1220
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    mul-int/lit8 v3, p1, 0x28

    invoke-interface {v2, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->forceBrightnessUpdate(I)V

    .line 1243
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 1244
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    .line 1224
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_4

    .line 1225
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 1226
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset Skip. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_6

    .line 1233
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v1

    .line 1239
    :cond_5
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklightForCamera(II)V

    goto :goto_1

    .line 1234
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_5

    .line 1235
    invoke-direct {p0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v1

    goto :goto_2
.end method

.method private resetAudioStreamingMode()V
    .locals 4

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1130
    const-string v0, "HABCtrl"

    const-string v1, "resetAudioStreamingMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1136
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->checkPlayAudioStreamingUid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1142
    :goto_0
    return-void

    .line 1139
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->closeAudioStreamingMode()V

    goto :goto_0
.end method

.method private setBacklight(II)V
    .locals 5
    .param p1, "targetLcdValue"    # I
    .param p2, "delay"    # I

    .prologue
    const/4 v1, 0x0

    .line 1286
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 1288
    .local v0, "noTransition":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 1289
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1290
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklight: screen off. Skip.("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    :goto_1
    return-void

    .end local v0    # "noTransition":Z
    :cond_1
    move v0, v1

    .line 1286
    goto :goto_0

    .line 1298
    .restart local v0    # "noTransition":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 1299
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklight:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_3
    if-lez p1, :cond_0

    .line 1309
    if-eqz v0, :cond_4

    .line 1310
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2, p1, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setSmoothBacklight(II)V

    goto :goto_1

    .line 1312
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 1313
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    mul-int/lit8 v2, p2, 0x28

    invoke-interface {v1, p1, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setSmoothBacklight(II)V

    goto :goto_1
.end method

.method private setBacklightForCamera(II)V
    .locals 5
    .param p1, "targetLcdValue"    # I
    .param p2, "delay"    # I

    .prologue
    const/4 v1, 0x0

    .line 1253
    const/16 v2, 0x10

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 1255
    .local v0, "noTransition":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 1256
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 1257
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklightForCamera: screen off. Skip.("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_0
    :goto_1
    return-void

    .end local v0    # "noTransition":Z
    :cond_1
    move v0, v1

    .line 1253
    goto :goto_0

    .line 1265
    .restart local v0    # "noTransition":Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 1266
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklightForCamera:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_3
    if-lez p1, :cond_0

    .line 1276
    if-eqz v0, :cond_4

    .line 1277
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2, p1, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setSmoothBacklight(II)V

    goto :goto_1

    .line 1279
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 1280
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    mul-int/lit8 v2, p2, 0x28

    invoke-interface {v1, p1, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setSmoothBacklightForCamera(II)V

    goto :goto_1
.end method

.method private setDayDreamMode(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 326
    const/4 v1, -0x1

    .line 328
    .local v1, "newLcdValue":I
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 329
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDDMode:("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    if-eqz p1, :cond_3

    .line 337
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_2

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    .line 343
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getDayDreamingLcdValue(I)I

    move-result v1

    .line 349
    if-lez v1, :cond_1

    .line 350
    invoke-direct {p0, v1, v6}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 355
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-eqz v2, :cond_1

    .line 359
    iput-boolean v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    .line 361
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-eqz v2, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->forceBrightnessUpdate(I)V

    goto :goto_0

    .line 370
    :cond_4
    const/4 v0, 0x0

    .line 371
    .local v0, "manualBrightness":I
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v0

    .line 373
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_7

    .line 374
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    .line 375
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 376
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v2, v5}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setScreenBrightnessMode(I)V

    .line 378
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    :cond_6
    :goto_1
    if-lez v0, :cond_1

    .line 387
    invoke-direct {p0, v0, v6}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 380
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v2, :cond_8

    .line 381
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAudioStreamingModeLcdValueInManual(I)I

    move-result v0

    goto :goto_1

    .line 382
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v2, :cond_6

    .line 383
    invoke-direct {p0, v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    goto :goto_1
.end method

.method private setPowerSaverMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 581
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 582
    .local v1, "PREV_POWER_MODE":Z
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 583
    .local v0, "AUTO_BRIGHTNESS_MODE":Z
    const/4 v2, -0x1

    .line 584
    .local v2, "newLcdValue":I
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 586
    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v3, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-nez v3, :cond_0

    .line 592
    if-nez v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v3, :cond_4

    .line 593
    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v2

    .line 601
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eq v3, v1, :cond_0

    .line 602
    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 603
    const-string v3, "HABCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPSM:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 610
    if-lez v2, :cond_0

    .line 611
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 594
    :cond_4
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-nez v3, :cond_2

    .line 595
    if-eqz v0, :cond_5

    .line 596
    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->forceBrightnessUpdate(I)V

    goto :goto_1

    .line 598
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method protected getBrightnessBaseOnAlgorithm(ILandroid/util/Spline;)F
    .locals 6
    .param p1, "LUX"    # I
    .param p2, "screenBrightnessSpline"    # Landroid/util/Spline;

    .prologue
    const/4 v4, 0x0

    .line 402
    const/4 v0, -0x1

    .line 403
    .local v0, "lcdValue":I
    sget v3, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLux:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v2

    .line 404
    .local v2, "old_level":I
    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v1

    .line 407
    .local v1, "new_level":I
    sget v3, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLux:I

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 408
    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    if-eqz v3, :cond_0

    .line 409
    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    .line 420
    :cond_0
    :goto_0
    if-gez v0, :cond_1

    .line 422
    sget v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    .line 423
    const-string v3, "HABCtrl"

    const-string v4, "lcdValue can\'t update normally"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1
    const-string v3, "HABCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lsvalue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLux:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th)->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sput p1, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLux:I

    .line 429
    sput v0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mPrevLcdValue:I

    .line 431
    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    return v3

    .line 412
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    if-eqz v3, :cond_3

    .line 413
    if-eq v1, v2, :cond_0

    .line 414
    iget-object v3, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenBrightness:[I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    goto :goto_0

    .line 417
    :cond_3
    const-string v3, "HABCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid light sensor value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected getButtonValue(I)I
    .locals 4
    .param p1, "LUX"    # I

    .prologue
    .line 1513
    const/4 v0, 0x0

    .line 1514
    .local v0, "buttonValue":I
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mButtonBacklightValues:[I

    if-eqz v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mButtonBacklightValues:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    .line 1518
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 1519
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getButton:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_1
    return v0
.end method

.method protected getCtrlBrightnessValue(II)I
    .locals 1
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getCustomizedBrightness(II)I

    move-result v0

    return v0
.end method

.method protected getCtrlDisplayBrightnessValue(II)I
    .locals 1
    .param p1, "lcdValue"    # I
    .param p2, "autoPercentage"    # I

    .prologue
    .line 1392
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getCustomizedDisplayBrightness(II)I

    move-result v0

    return v0
.end method

.method public getMappedValue_Hybrid(I[I)I
    .locals 5
    .param p1, "LUX"    # I
    .param p2, "table"    # [I

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mLightSensorLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mLightSensorLevels:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_2

    .line 444
    :cond_0
    if-nez p2, :cond_3

    .line 458
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v1

    .line 437
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_3
    aget v1, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_4

    .line 452
    const-string v2, "HABCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMappedValue_Hybrid: Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_4
    if-eqz p2, :cond_1

    .line 458
    const/16 v1, 0xff

    goto :goto_1
.end method

.method protected notifyHABCScreenState(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x0

    .line 520
    iput-boolean p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 522
    if-nez p1, :cond_3

    .line 524
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 527
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 528
    const-string v4, "HABCtrl"

    const-string v5, "TPE algorithm. remove timeout."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mTPEAlgorithmTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 535
    invoke-direct {p0, v6}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->reset(I)V

    .line 566
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingMode:Z

    if-eqz v4, :cond_2

    .line 567
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mAudioStreamingTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    .line 571
    return-void

    .line 539
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z

    if-eqz v4, :cond_1

    .line 540
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    if-eqz v4, :cond_8

    .line 541
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    const-string v4, "HABCtrl"

    const-string v5, "CFUB"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v0

    .line 543
    .local v0, "curLcdValue":I
    iget-object v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getTargetBrightness()I

    move-result v1

    .line 547
    .local v1, "endLcdValue":I
    sget-boolean v4, Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v4, :cond_5

    .line 548
    sget v2, Lcom/android/server/display/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I

    .line 554
    .local v2, "newLcdValue":I
    :goto_1
    if-le v2, v0, :cond_6

    .line 555
    :goto_2
    if-le v2, v1, :cond_7

    .line 557
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v3

    .line 558
    .local v3, "target":I
    iget v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_0

    .line 550
    .end local v2    # "newLcdValue":I
    .end local v3    # "target":I
    :cond_5
    iget v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .restart local v2    # "newLcdValue":I
    goto :goto_1

    :cond_6
    move v2, v0

    .line 554
    goto :goto_2

    :cond_7
    move v2, v1

    .line 555
    goto :goto_3

    .line 560
    .end local v0    # "curLcdValue":I
    .end local v1    # "endLcdValue":I
    .end local v2    # "newLcdValue":I
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    const-string v4, "HABCtrl"

    const-string v5, "CFUB, mCallbacks null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setLightSensorLevel(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 574
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->getMappedValue_Hybrid(I[I)I

    move-result v0

    .line 575
    .local v0, "lightSensorLevel":I
    iget-boolean v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 576
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change ls ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    return-void
.end method
