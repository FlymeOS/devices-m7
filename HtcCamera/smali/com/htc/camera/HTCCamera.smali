.class public abstract Lcom/htc/camera/HTCCamera;
.super Landroid/app/Activity;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/base/c;
.implements Lcom/htc/camera/base/f;
.implements Lcom/htc/camera/component/au;
.implements Lcom/htc/camera/property/c;
.implements Lcom/htc/camera/t;


# static fields
.field public static final EVENT_ACTIVATED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_PAUSING:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_RESUMING:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_STOPPING:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/CameraPreviewState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_CONFIGURATION_ORIENTATION:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_INITIAL_CAMERA_OPEN_POLICY:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/InitialCameraOpenPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_CAMERA_THREAD_STARTED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_TOUCH_ON_SCREEN:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static SCREEN_DELAY_SIGHTSEEING:I

.field private static final SCREEN_DIAGONAL_LENGTH:D

.field public static bFocusFromPress:Z

.field private static mIsSelfPortraitTask:Z


# instance fields
.field public SCREEN_DELAY:I

.field private final TOUCH_CAPTURE_CANCEL_MOVEMENT_RATIO:D

.field public final accelerometerValues:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<[F>;"
        }
    .end annotation
.end field

.field public final actionScreenCloseReason:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/actionscreen/ActionScreenCloseReason;",
            ">;"
        }
    .end annotation
.end field

.field public final actionScreenState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final autoDetectedScene:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/AutoDetectedScene;",
            ">;"
        }
    .end annotation
.end field

.field public final autoFocusCanceledEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraType:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public final currentEffect:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final currentScene:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final deletingLatestMediaEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceOrientation:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final effectPanelState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final elapsedRecordingSeconds:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final externalCommendReceivedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/ExternalCommandEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final flashButtonClickedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final focusMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/AutoFocusMode;",
            ">;"
        }
    .end annotation
.end field

.field public final hasAutoFocus:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final hasDialog:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final hasPopupBubble:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAccelerometerStarted:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isActivityPaused:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isActivityPausing:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoFocusing:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCameraThreadRunning:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureDisabled:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureUIBlocked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCaptureUIOpen:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isContinuousAFSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isCoverClosed:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isLaunching:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPreviewStarted:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final isPreviewStarting:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final isQuickLaunchState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRemainingCounterVisible:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isResettingToDefault:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRotationLocked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSelfTimerDisabled:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSelfTimerStarted:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSuspendInSightSeeing:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSwitchingCamera:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSwitchingCameraMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isVideoPauseSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isZoomLocked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final keyDownEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final keyUpEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActionPerformedOnPreviewSurfaceCreated:Z

.field private mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

.field private mActionScreenDisableCounter:I

.field private mActivityOnPause:Z

.field private mAudioManager:Lcom/htc/camera/IAudioManager;

.field private mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

.field private mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

.field private final mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

.field private mBaseZoom:I

.field private mBlockPowerWarning:Z

.field private mBubbleToastManager:Lcom/htc/camera/u;

.field private mCameraThread:Lcom/htc/camera/CameraThread;

.field private mCanGSensorEnabled:Z

.field private final mCaptureDisableHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private mCaptureUIBlockManager:Lcom/htc/camera/w;

.field private mCaptureUiContainer:Landroid/view/ViewGroup;

.field private mChangingModeHandle:Lcom/htc/camera/Handle;

.field private final mCloseActionScreenRunnable:Ljava/lang/Runnable;

.field private mCloseTouchEvent:Z

.field private mComponentFactory:Lcom/htc/camera/component/UIComponentFactory;

.field private mComponentManager:Lcom/htc/camera/component/UIComponentManager;

.field private mContiAFDisableHandle:Lcom/htc/camera/Handle;

.field private final mControlIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mCountDownEndSoundHandle:Lcom/htc/camera/Handle;

.field private mCountDownSoundHandle:Lcom/htc/camera/Handle;

.field private mCountDownSoundMiddleHandle:Lcom/htc/camera/Handle;

.field private mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

.field private mCountDownTimerHandle:Lcom/htc/camera/Handle;

.field private mCountDownZeroSoundHandle:Lcom/htc/camera/Handle;

.field private mCurrentFocusHandle:Lcom/htc/camera/Handle;

.field private mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private mDisableFastShotToShotHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDotMatrixReceiver:Landroid/content/BroadcastReceiver;

.field private final mEAccessReceiver:Landroid/content/BroadcastReceiver;

.field private mEffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

.field private mEffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private mEnableSensorFocus:Z

.field private mFocused:Z

.field private mFocusingSoundHandle:Lcom/htc/camera/Handle;

.field public mFocusingState:I

.field private mForceHideKeyguard:Z

.field private mFullScreenCaptureUiContainer:Landroid/view/ViewGroup;

.field private final mGSensorListener:Landroid/hardware/SensorEventListener;

.field private mGSensorUsageCounter:I

.field private mHasAudioFocusForSelfTimer:Z

.field private mHasAudioFocusForVideo:Z

.field private mHtcFontscale:F

.field private mIdle:Z

.field private mInitSpan:F

.field private mIntentManager:Lcom/htc/camera/IntentManager;

.field private mIsBackQuit:Z

.field private mIsCaptureUIInflated:Z

.field private mIsCaptureUiInitialized:Z

.field private mIsFirstInstance:Z

.field private mIsFirstPreviewStarted:Z

.field private mIsLaunching:Z

.field private mIsOnResumeCompleted:Z

.field private mIsPinchZoomed:Z

.field private mIsPowerWarning:Z

.field private mIsRecordingInPhotoMode:Z

.field private mIsSipExist:Z

.field private mIsStorageSlotLocked:Z

.field private mIsTouchFaceFocus:Z

.field private mIsTouchScreen:Z

.field private mIsTouchingNavigationBarStub:Z

.field private mIsUIReady:Z

.field private mIsUpdatingStorageSlotSetting:Z

.field private final mLastTouchFocusPoint:Landroid/graphics/Point;

.field private mMainThread:Ljava/lang/Thread;

.field private mManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

.field private mNavigationBarStub:Landroid/view/View;

.field private mNeed_doOnResume:Z

.field private mNeed_unregisterReceiver:Z

.field private mObjectTracker:Lcom/htc/camera/IObjectTracker;

.field private volatile mOnCreateProfTimer:Lcom/htc/camera/Handle;

.field private volatile mOnNewIntentProfTimer:Lcom/htc/camera/Handle;

.field private volatile mOnPreviewSurfaceCreatedProfTimer:Lcom/htc/camera/Handle;

.field private mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

.field private final mPartitonReceiver:Landroid/content/BroadcastReceiver;

.field private mPauseVideoBubbleToastHandle:Lcom/htc/camera/Handle;

.field private mPendingTakingPictureStartTime:Ljava/lang/Long;

.field private mPopupBubbleCount:I

.field private mPreparedActionScreenSessionHandle:Lcom/htc/camera/SessionHandle;

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private final mReadOnlyPropertySetter:Lcom/htc/camera/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/data/d",
            "<*>;"
        }
    .end annotation
.end field

.field private mRecordingBlockHandle:Lcom/htc/camera/Handle;

.field private mRecordingLockHandle:Lcom/htc/camera/Handle;

.field private mRecordingTimer:Lcom/htc/camera/StopWatch;

.field private mResume:Z

.field private mRootLayout:Landroid/view/View;

.field private mRotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

.field private mRotationManager:Lcom/htc/camera/IUIRotationManager;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScreensave:Landroid/view/View;

.field private mScreensaveText:Landroid/widget/TextView;

.field private mScreensaveTextContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private mSelfTimerDisableCounter:I

.field private mSensorFocusDisabledCounter:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionHandle:Lcom/htc/camera/SessionHandle;

.field private mSettingsManager:Lcom/htc/camera/ISettingsManager;

.field private mSharedBackgroundWorker:Lcom/htc/camera/ag;

.field private final mShowNavigationBarHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowStatusBarHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private mStart:Z

.field private final mStartAccelerometerRunnable:Ljava/lang/Runnable;

.field private mStartMode:Lcom/htc/camera/CameraStartMode;

.field private mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

.field private mStartingPreviewFailureCount:I

.field private mStartingPreviewHandle:Lcom/htc/camera/Handle;

.field private final mStopAccelerometerRunnable:Ljava/lang/Runnable;

.field private mSwitchCameraSlidingUI:Lcom/htc/camera/ai;

.field private mSwitchingModeBlockHandle:Lcom/htc/camera/Handle;

.field private mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

.field private mTakingPictureLockHandle:Lcom/htc/camera/Handle;

.field private mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

.field private mThumbnailImagePool:Lcom/htc/camera/media/a;

.field private mTouchFocusDisabledCounter:I

.field private mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

.field private volatile mUIReadyEndProfTimer:Lcom/htc/camera/Handle;

.field private volatile mUIReadyStartProfTimer:Lcom/htc/camera/Handle;

.field private final mUnhandledExceptionHandler:Lcom/htc/camera/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/ExceptionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCountDuration:J

.field private final mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

.field private final mUpdateThemeIDHandler:Lcom/htc/camera/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private mViewfinder:Lcom/htc/camera/ui/IViewfinder;

.field private mZoeController:Lcom/htc/camera/zoe/IZoeController;

.field private mZoomLockCounter:I

.field private m_AecLockHandle:Lcom/htc/camera/Handle;

.field m_CancelFocusFromTouch:Z

.field private m_FocusLockHandle:Lcom/htc/camera/Handle;

.field private m_FrontSelfTimerIntervalListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Lcom/htc/camera/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private m_MainSelfTimerIntervalListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Lcom/htc/camera/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private m_NeedTapCapture:Z

.field m_NeedTriggerRecord:Z

.field private m_StorageSlotListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;"
        }
    .end annotation
.end field

.field private m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

.field public final mediaDeletedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaScannerFinishedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaScannerStartedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final popupOpeningEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final popupOutsideTouchEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final previewSize:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final queryConfirmDeletingMediaMessageEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/QueryEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final queryMediaToSetAsEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/media/MediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final queryMediaToShareEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/media/MediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final recordingState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public final resolutionSelectedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field public final restartingCameraEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public final selfTimerCountDownEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final settingsMenuState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field public final shutterEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final storageEjectedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final storageMountedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final storageState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/io/StorageState;",
            ">;"
        }
    .end annotation
.end field

.field public final storageUnmountedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;>;"
        }
    .end annotation
.end field

.field public final switchingCameraEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;>;"
        }
    .end annotation
.end field

.field public final switchingCameraModeEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;>;"
        }
    .end annotation
.end field

.field public final switchingCameraSlidingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final takingPictureState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;"
        }
    .end annotation
.end field

.field public final touchPreviewEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final zoomRange:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final zoomValue:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 136
    const/16 v0, 0x7530

    sput v0, Lcom/htc/camera/HTCCamera;->SCREEN_DELAY_SIGHTSEEING:I

    .line 260
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "ConfigurationOrientation"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CONFIGURATION_ORIENTATION:Lcom/htc/camera/base/PropertyKey;

    .line 261
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "HasSelfTimer"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    .line 262
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "InitialCameraOpenPolicy"

    const-class v2, Lcom/htc/camera/InitialCameraOpenPolicy;

    const-class v3, Lcom/htc/camera/HTCCamera;

    const/4 v4, 0x1

    sget-object v5, Lcom/htc/camera/InitialCameraOpenPolicy;->DIRECT:Lcom/htc/camera/InitialCameraOpenPolicy;

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_INITIAL_CAMERA_OPEN_POLICY:Lcom/htc/camera/base/PropertyKey;

    .line 263
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsCameraOpen"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    .line 264
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsCameraThreadStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_THREAD_STARTED:Lcom/htc/camera/base/PropertyKey;

    .line 265
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsCaptureUILoaded"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    .line 266
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsNormalComponentsInitialized"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    .line 267
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsRealtimeComponentsCreated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    .line 268
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsTouchOnScreen"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_TOUCH_ON_SCREEN:Lcom/htc/camera/base/PropertyKey;

    .line 269
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "CameraPreviewState"

    const-class v2, Lcom/htc/camera/CameraPreviewState;

    const-class v3, Lcom/htc/camera/HTCCamera;

    sget-object v4, Lcom/htc/camera/CameraPreviewState;->STOPPED:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    .line 270
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "SelfTimerInterval"

    const-class v2, Lcom/htc/camera/Duration;

    const-class v3, Lcom/htc/camera/HTCCamera;

    sget-object v4, Lcom/htc/camera/Duration;->ZERO:Lcom/htc/camera/Duration;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    .line 271
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "Settings"

    const-class v2, Lcom/htc/camera/CameraSettings;

    const-class v3, Lcom/htc/camera/HTCCamera;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    .line 276
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "Activated"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_ACTIVATED:Lcom/htc/camera/base/EventKey;

    .line 277
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "Deactivated"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    .line 278
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaSaveFailed"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    .line 279
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "MediaSaved"

    const-class v2, Lcom/htc/camera/io/MediaSaveEventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    .line 280
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "NewIntent"

    const-class v2, Lcom/htc/camera/IntentEventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    .line 281
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "Pausing"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    .line 282
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "Resuming"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_RESUMING:Lcom/htc/camera/base/EventKey;

    .line 283
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "SelfFinishing"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    .line 284
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "Stopping"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/HTCCamera;->EVENT_STOPPING:Lcom/htc/camera/base/EventKey;

    .line 518
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    mul-int/2addr v0, v1

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v2, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/htc/camera/HTCCamera;->SCREEN_DIAGONAL_LENGTH:D

    .line 616
    sput-boolean v6, Lcom/htc/camera/HTCCamera;->mIsSelfPortraitTask:Z

    .line 660
    sput-boolean v6, Lcom/htc/camera/HTCCamera;->bFocusFromPress:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v3, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 888
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    const v0, 0x1d4c0

    iput v0, p0, Lcom/htc/camera/HTCCamera;->SCREEN_DELAY:I

    .line 185
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    .line 222
    iput-object v11, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    .line 229
    new-instance v0, Lcom/htc/camera/HTCCamera$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$1;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mReadOnlyPropertySetter:Lcom/htc/camera/data/d;

    .line 239
    iput-boolean v10, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    .line 240
    iput-boolean v10, p0, Lcom/htc/camera/HTCCamera;->mIsFirstPreviewStarted:Z

    .line 249
    new-instance v0, Lcom/htc/camera/SessionHandle;

    invoke-direct {v0}, Lcom/htc/camera/SessionHandle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSessionHandle:Lcom/htc/camera/SessionHandle;

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 391
    new-instance v0, Lcom/htc/camera/HTCCamera$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$2;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    .line 398
    new-instance v0, Lcom/htc/camera/HTCCamera$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$3;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    .line 426
    new-instance v0, Lcom/htc/camera/HTCCamera$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$4;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    .line 448
    new-instance v0, Lcom/htc/camera/HTCCamera$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$5;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    .line 459
    new-instance v0, Lcom/htc/camera/HTCCamera$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$6;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mUnhandledExceptionHandler:Lcom/htc/camera/base/b;

    .line 467
    new-instance v0, Lcom/htc/camera/HTCCamera$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$7;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mUpdateThemeIDHandler:Lcom/htc/camera/base/b;

    .line 519
    const-wide v0, 0x3fb1eb851eb851ecL    # 0.07

    iput-wide v0, p0, Lcom/htc/camera/HTCCamera;->TOUCH_CAPTURE_CANCEL_MOVEMENT_RATIO:D

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mDisableFastShotToShotHandles:Ljava/util/List;

    .line 568
    iput-object v11, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    .line 570
    iput-object v11, p0, Lcom/htc/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    .line 573
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    .line 591
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mIsPinchZoomed:Z

    .line 619
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mIsSipExist:Z

    .line 625
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mEnableSensorFocus:Z

    .line 629
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mCloseTouchEvent:Z

    .line 633
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 635
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    .line 638
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mActivityOnPause:Z

    .line 642
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mIsUIReady:Z

    .line 651
    iput v10, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 658
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mIsTouchScreen:Z

    .line 661
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    .line 664
    iput-object v11, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    .line 666
    iput-object v11, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    .line 680
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mIsBackQuit:Z

    .line 683
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mBlockPowerWarning:Z

    .line 684
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mIsPowerWarning:Z

    .line 687
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 690
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 695
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mStart:Z

    .line 696
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    .line 697
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mResume:Z

    .line 698
    iput-boolean v8, p0, Lcom/htc/camera/HTCCamera;->mForceHideKeyguard:Z

    .line 706
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    .line 708
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mHtcFontscale:F

    .line 715
    new-instance v0, Lcom/htc/camera/HTCCamera$8;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$8;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    .line 3285
    new-instance v0, Lcom/htc/camera/HTCCamera$27;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$27;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mEAccessReceiver:Landroid/content/BroadcastReceiver;

    .line 3300
    new-instance v0, Lcom/htc/camera/HTCCamera$28;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$28;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mDotMatrixReceiver:Landroid/content/BroadcastReceiver;

    .line 3317
    new-instance v0, Lcom/htc/camera/HTCCamera$29;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$29;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    .line 3332
    new-instance v0, Lcom/htc/camera/HTCCamera$30;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$30;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mControlIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 9120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mShowNavigationBarHandles:Ljava/util/ArrayList;

    .line 9196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mShowStatusBarHandles:Ljava/util/ArrayList;

    .line 9258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureDisableHandles:Ljava/util/ArrayList;

    .line 889
    const-string v0, "HTCCamera"

    const-string v1, "Constructor() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    new-instance v0, Lcom/htc/camera/debug/ThreadMonitor;

    invoke-direct {v0}, Lcom/htc/camera/debug/ThreadMonitor;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    .line 900
    new-instance v0, Lcom/htc/camera/base/BaseObjectProxy;

    const-string v1, "HTCCamera"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/base/BaseObjectProxy;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    .line 903
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 904
    new-instance v0, Lcom/htc/camera/HTCCamera$9;

    const-string v2, "HTCCamera.AccelerometerValues"

    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    new-array v5, v3, [F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/HTCCamera$9;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;ILjava/lang/Object;[F)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    .line 931
    const-string v0, "HTCCamera.ActionScreenCloseReason"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->actionScreenCloseReason:Lcom/htc/camera/property/Property;

    .line 932
    const-string v0, "HTCCamera.ActionScreenState"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    .line 933
    const-string v0, "HTCCamera.AutoDetectedScene"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    .line 934
    const-string v0, "HTCCamera.CameraMode"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    .line 935
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_0

    .line 936
    const-string v0, "HTCCamera.CameraType"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    .line 939
    :goto_0
    const-string v0, "HTCCamera.CurrentEffect"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v10, v1, v11}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    .line 940
    const-string v0, "HTCCamera.CurrentScene"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v10, v1, v11}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    .line 941
    const-string v0, "HTCCamera.DeviceOrientation"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->deviceOrientation:Lcom/htc/camera/property/Property;

    .line 942
    const-string v0, "HTCCamera.EffectPanelState"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    .line 943
    const-string v0, "HTCCamera.ElapsedRecordingSeconds"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    .line 944
    const-string v0, "HTCCamera.AutoFocusMode"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    .line 945
    const-string v0, "HTCCamera.HasFocus"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    .line 946
    const-string v0, "HTCCamera.HasDialog"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    .line 947
    const-string v0, "HTCCamera.HasPopupBubble"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    .line 948
    const-string v0, "HTCCamera.IsAccelerometerStarted"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isAccelerometerStarted:Lcom/htc/camera/property/Property;

    .line 949
    const-string v0, "HTCCamera.IsActivityPaused"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v10}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    .line 950
    const-string v0, "HTCCamera.IsActivityPausing"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    .line 951
    const-string v0, "HTCCamera.IsAutoFocusing"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    .line 952
    const-string v0, "HTCCamera.IsCameraThreadRunning"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    .line 953
    const-string v0, "HTCCamera.IsCaptureDisabled"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    .line 954
    const-string v0, "HTCCamera.IsCaptureUIBlocked"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    .line 955
    const-string v0, "HTCCamera.IsCaptureUIOpen"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    .line 956
    const-string v0, "HTCCamera.IsCoverClosed"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isCoverClosed:Lcom/htc/camera/property/Property;

    .line 957
    const-string v0, "HTCCamera.IsLaunching"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v10}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isLaunching:Lcom/htc/camera/property/Property;

    .line 958
    const-string v0, "HTCCamera.IsPhotoCaptureButtonPressed"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    .line 959
    const-string v0, "HTCCamera.IsPreviewStarted"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    .line 960
    const-string v0, "HTCCamera.isFirstPreviewFrameReceived"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    .line 961
    const-string v0, "HTCCamera.IsPreviewStarting"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    .line 962
    const-string v0, "HTCCamera.IsQuickLaunchState"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v10}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    .line 963
    const-string v0, "HTCCamera.IsRemainingCounterVisible"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isRemainingCounterVisible:Lcom/htc/camera/property/Property;

    .line 964
    const-string v0, "HTCCamera.IsResettingToDefault"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    .line 965
    const-string v0, "HTCCamera.IsRotationLocked"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isRotationLocked:Lcom/htc/camera/property/Property;

    .line 966
    const-string v0, "HTCCamera.IsSelfTimerDisabled"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerDisabled:Lcom/htc/camera/property/Property;

    .line 967
    const-string v0, "HTCCamera.IsSelfTimerStarted"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    .line 968
    const-string v0, "HTCCamera.IsSuspendInSightSeeing"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v8}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isSuspendInSightSeeing:Lcom/htc/camera/property/Property;

    .line 969
    const-string v0, "HTCCamera.IsSwitchingCamera"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    .line 970
    const-string v0, "HTCCamera.IsSwitchingCameraMode"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCameraMode:Lcom/htc/camera/property/Property;

    .line 971
    const-string v0, "HTCCamera.IsVideoCaptureButtonPressed"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    .line 972
    const-string v0, "HTCCamera.IsVideoPauseSupported"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v10}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    .line 973
    const-string v0, "HTCCamera.IsZoomLocked"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isZoomLocked:Lcom/htc/camera/property/Property;

    .line 974
    const-string v0, "HTCCamera.LastTakingPictureTriggerSource"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v10, v1, v11}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    .line 975
    const-string v0, "HTCCamera.PreviewSize"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v10, v1, v11}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    .line 976
    const-string v0, "HTCCamera.RecordingState"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    .line 977
    const-string v0, "HTCCamera.Rotation"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    .line 978
    const-string v0, "HTCCamera.SettingsMenuState"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    .line 979
    const-string v0, "HTCCamera.StorageState"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->storageState:Lcom/htc/camera/property/Property;

    .line 980
    const-string v0, "HTCCamera.SupportCAF"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    .line 981
    const-string v0, "HTCCamera.TakingPictureState"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    .line 982
    const-string v0, "HTCCamera.ZoomRange"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v10, v1, v11}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    .line 983
    const-string v0, "HTCCamera.ZoomValue"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    .line 985
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 986
    const-string v2, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor() - Create properties : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 990
    const-string v2, "HTCCamera.AutoFocusCanceled"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    .line 991
    const-string v2, "HTCCamera.DeletingLatestMedia"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->deletingLatestMediaEvent:Lcom/htc/camera/event/Event;

    .line 992
    const-string v2, "HTCCamera.ExternalCommentReceived"

    sget-object v4, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, v2, v4}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/htc/camera/event/Event;

    .line 993
    const-string v2, "HTCCamera.FlashButtonClicked"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->flashButtonClickedEvent:Lcom/htc/camera/event/Event;

    .line 994
    const-string v2, "HTCCamera.KeyDown"

    sget-object v4, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, v2, v4}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    .line 995
    const-string v2, "HTCCamera.KeyUp"

    sget-object v4, Lcom/htc/camera/event/EventMode;->SingleHandler:Lcom/htc/camera/event/EventMode;

    invoke-static {p0, v2, v4}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/camera/event/EventMode;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    .line 996
    new-instance v2, Lcom/htc/camera/event/Event;

    const-string v4, "HTCCamera.MediaDeleted"

    invoke-direct {v2, p0, v4}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    .line 997
    const-string v2, "HTCCamera.MediaScannerFinished"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mediaScannerFinishedEvent:Lcom/htc/camera/event/Event;

    .line 998
    const-string v2, "HTCCamera.MediaScannerStarted"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mediaScannerStartedEvent:Lcom/htc/camera/event/Event;

    .line 999
    const-string v2, "HTCCamera.PopupOpening"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->popupOpeningEvent:Lcom/htc/camera/event/Event;

    .line 1000
    const-string v2, "HTCCamera.PopupOutsideTouched"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/htc/camera/event/Event;

    .line 1001
    const-string v2, "HTCCamera.QueryConfirmDeletingMediaMessage"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/htc/camera/event/Event;

    .line 1002
    const-string v2, "HTCCamera.QueryMediaToSetAs"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/htc/camera/event/Event;

    .line 1003
    const-string v2, "HTCCamera.QueryMediaToShare"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->queryMediaToShareEvent:Lcom/htc/camera/event/Event;

    .line 1004
    const-string v2, "HTCCamera.ResolutionSelected"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->resolutionSelectedEvent:Lcom/htc/camera/event/Event;

    .line 1005
    const-string v2, "HTCCamera.RestartingCamera"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->restartingCameraEvent:Lcom/htc/camera/event/Event;

    .line 1006
    const-string v2, "HTCCamera.SelfTimerCountDown"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/htc/camera/event/Event;

    .line 1007
    const-string v2, "HTCCamera.Shutter"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->shutterEvent:Lcom/htc/camera/event/Event;

    .line 1008
    const-string v2, "HTCCamera.StorageEjected"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->storageEjectedEvent:Lcom/htc/camera/event/Event;

    .line 1009
    const-string v2, "HTCCamera.StorageMounted"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->storageMountedEvent:Lcom/htc/camera/event/Event;

    .line 1010
    const-string v2, "HTCCamera.StorageUnmounted"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->storageUnmountedEvent:Lcom/htc/camera/event/Event;

    .line 1011
    const-string v2, "HTCCamera.SwitchingCamera"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->switchingCameraEvent:Lcom/htc/camera/event/Event;

    .line 1012
    const-string v2, "HTCCamera.SwitchingCameraMode"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->switchingCameraModeEvent:Lcom/htc/camera/event/Event;

    .line 1013
    const-string v2, "HTCCamera.SwitchingCameraSliding"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->switchingCameraSlidingEvent:Lcom/htc/camera/event/Event;

    .line 1014
    const-string v2, "HTCCamera.TouchPreview"

    invoke-static {p0, v2}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->touchPreviewEvent:Lcom/htc/camera/event/Event;

    .line 1015
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 1016
    const-string v2, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor() - Create events : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1, v10}, Lcom/htc/camera/base/BaseObjectProxy;->enablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V

    .line 1020
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_INITIAL_CAMERA_OPEN_POLICY:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1, v10}, Lcom/htc/camera/base/BaseObjectProxy;->enablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V

    .line 1022
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1023
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1024
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1025
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1026
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1027
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1028
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCoverClosed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1029
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1030
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1031
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1032
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1033
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1034
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1035
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1036
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSuspendInSightSeeing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1039
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->touchPreviewEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, v3}, Lcom/htc/camera/event/Event;->disableLogs(I)V

    .line 1041
    const-string v0, "HTCCamera"

    const-string v1, "Constructor() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-void

    .line 938
    :cond_0
    const-string v0, "HTCCamera.CameraType"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/base/BaseObjectProxy;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/HTCCamera;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/camera/HTCCamera;Z)Z
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/htc/camera/HTCCamera;->mEnableSensorFocus:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CaptureHandle;J)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera;->completeCapture(Lcom/htc/camera/CaptureHandle;J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->leaveQuickLaunchState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->lock2A()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/HTCCamera;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/UIComponentManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateNavigationBarState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/HTCCamera;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$1904(Lcom/htc/camera/HTCCamera;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$1906(Lcom/htc/camera/HTCCamera;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/HTCCamera;)Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->startAccelerometer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->stopAccelerometer()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/HTCCamera;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mShowNavigationBarHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateSelfTimerInterval()V

    return-void
.end method

.method static synthetic access$2502(Lcom/htc/camera/HTCCamera;Z)Z
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/htc/camera/HTCCamera;->mIsTouchingNavigationBarStub:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onPreviewResourcesCreated()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onPreviewResourcesDestroyed()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onAutoFocusCanceled(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onAutoFocusFinished(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onAutoFocusStarting(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->unlock2A()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/w;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/CameraThread;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForSelfTimer:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/htc/camera/HTCCamera;Z)Z
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForSelfTimer:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownSoundMiddleHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownSoundHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/HTCCamera;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onUnhandledException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownZeroSoundHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IUIRotationManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->resetPreviewState()V

    return-void
.end method

.method static synthetic access$4502(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/io/StorageSlot;Z)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/HTCCamera;->onStorageSlotChanged(Lcom/htc/camera/io/StorageSlot;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->linkToCameraThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/HTCCamera$MainHandler;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera;->onCameraThreadEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/HTCCamera;->onCameraThreadEventReceived(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/HTCCamera;->onCameraThreadPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/RecordingLimitState;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onRecordingLimitStateChanged(Lcom/htc/camera/RecordingLimitState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/imaging/Size;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onPreviewSizeChanged(Lcom/htc/camera/imaging/Size;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/camera/HTCCamera;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onZoomValueChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/ExternalCommandEventArgs;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onExternalCommandReceived(Lcom/htc/camera/ExternalCommandEventArgs;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/io/StorageSlot;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onStorageEjected(Lcom/htc/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/io/StorageSlot;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onStorageMounted(Lcom/htc/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/io/StorageSlot;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onStorageUnmounted(Lcom/htc/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/camera/HTCCamera;Z)Z
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/htc/camera/HTCCamera;->mIsPinchZoomed:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->initializeCaptureUI()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThreadBlockReason;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onCameraThreadBlocked(Lcom/htc/camera/CameraThreadBlockReason;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/HTCCamera;)F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mInitSpan:F

    return v0
.end method

.method static synthetic access$702(Lcom/htc/camera/HTCCamera;F)F
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/htc/camera/HTCCamera;->mInitSpan:F

    return p1
.end method

.method static synthetic access$800(Lcom/htc/camera/HTCCamera;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mBaseZoom:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/camera/HTCCamera;I)I
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/htc/camera/HTCCamera;->mBaseZoom:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/camera/HTCCamera;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method private final autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 4815
    invoke-direct {p0, p1, p2, p2}, Lcom/htc/camera/HTCCamera;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 4824
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4826
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - Ignore focus for no AF sensor"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4827
    const/4 v0, 0x0

    .line 4984
    :goto_0
    return v0

    .line 4831
    :cond_0
    if-nez p1, :cond_1

    .line 4833
    const-string v0, "focusMode"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4834
    const/4 v0, 0x0

    goto :goto_0

    .line 4836
    :cond_1
    if-nez p2, :cond_2

    .line 4838
    const-string v0, "focusPoints"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4839
    const/4 v0, 0x0

    goto :goto_0

    .line 4841
    :cond_2
    if-nez p3, :cond_3

    .line 4843
    const-string v0, "meteringPoints"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4844
    const/4 v0, 0x0

    goto :goto_0

    .line 4848
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_4

    .line 4850
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4851
    const/4 v0, 0x0

    goto :goto_0

    .line 4853
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_6

    .line 4855
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - Activity is paused or idle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4856
    const/4 v0, 0x0

    goto :goto_0

    .line 4860
    :cond_6
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_8

    .line 4862
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4864
    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - Cannot cancel auto-focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4865
    const/4 v0, 0x0

    goto :goto_0

    .line 4869
    :cond_8
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_AUTO_FOCUS_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    if-ne p1, v0, :cond_9

    .line 4871
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - Focus mode is sensor, but canAutoFocus is false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4872
    const/4 v0, 0x0

    goto :goto_0

    .line 4875
    :cond_9
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4877
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - Cannot trigger focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4878
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 4882
    :cond_a
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - Block capture UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4883
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v1, "Auto focusing"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    .line 4886
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - Focus mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4887
    instance-of v0, p2, [Landroid/graphics/PointF;

    if-eqz v0, :cond_b

    move-object v0, p2

    .line 4889
    check-cast v0, [Landroid/graphics/PointF;

    check-cast v0, [Landroid/graphics/PointF;

    .line 4890
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 4891
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoFocus() - Focus point = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4906
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4907
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4908
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_c

    .line 4909
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 4916
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4917
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4920
    instance-of v0, p2, [Landroid/graphics/PointF;

    if-eqz v0, :cond_11

    .line 4922
    check-cast p2, [Landroid/graphics/PointF;

    check-cast p2, [Landroid/graphics/PointF;

    .line 4923
    const/4 v0, 0x0

    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_12

    .line 4925
    aget-object v3, p2, v0

    .line 4926
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x3e000000    # 0.125f

    sub-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x3e000000    # 0.125f

    sub-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x3e000000    # 0.125f

    add-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/PointF;->y:F

    const/high16 v9, 0x3e000000    # 0.125f

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4928
    sget-object v5, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne p1, v5, :cond_d

    .line 4929
    iget v5, v3, Landroid/graphics/PointF;->x:F

    const v6, 0x3d99999a    # 0.075f

    sub-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x3e000000    # 0.125f

    sub-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->x:F

    const v8, 0x3d99999a    # 0.075f

    add-float/2addr v7, v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3e000000    # 0.125f

    add-float/2addr v3, v8

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4931
    :cond_d
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4923
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4892
    :cond_e
    sget-boolean v1, Lcom/htc/camera/LOG;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 4894
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4895
    const-string v1, "autoFocus() - Focus point = {"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4896
    const/4 v1, 0x0

    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_10

    .line 4898
    if-eqz v1, :cond_f

    .line 4899
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4900
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4896
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4902
    :cond_10
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4903
    const-string v0, "HTCCamera"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4934
    :cond_11
    instance-of v0, p2, [Landroid/graphics/RectF;

    if-eqz v0, :cond_12

    .line 4936
    check-cast p2, [Landroid/graphics/RectF;

    check-cast p2, [Landroid/graphics/RectF;

    .line 4938
    const/4 v0, 0x0

    :goto_4
    array-length v3, p2

    if-ge v0, v3, :cond_12

    .line 4939
    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4938
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4943
    :cond_12
    instance-of v0, p3, [Landroid/graphics/PointF;

    if-eqz v0, :cond_13

    .line 4945
    check-cast p3, [Landroid/graphics/PointF;

    check-cast p3, [Landroid/graphics/PointF;

    .line 4946
    const/4 v0, 0x0

    :goto_5
    array-length v3, p3

    if-ge v0, v3, :cond_14

    .line 4948
    aget-object v3, p3, v0

    .line 4949
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x3e000000    # 0.125f

    sub-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x3e000000    # 0.125f

    sub-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x3e000000    # 0.125f

    add-float/2addr v7, v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3e000000    # 0.125f

    add-float/2addr v3, v8

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4950
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4946
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4953
    :cond_13
    instance-of v0, p3, [Landroid/graphics/RectF;

    if-eqz v0, :cond_14

    .line 4955
    check-cast p3, [Landroid/graphics/RectF;

    check-cast p3, [Landroid/graphics/RectF;

    .line 4957
    const/4 v0, 0x0

    :goto_6
    array-length v3, p3

    if-ge v0, v3, :cond_14

    .line 4958
    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4957
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4961
    :cond_14
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_16

    .line 4963
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    .line 4964
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_15

    .line 4965
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - Handle : \'"

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    iget-object v2, v2, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4984
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4967
    :cond_15
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - No focus handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 4971
    :cond_16
    const-string v0, "HTCCamera"

    const-string v1, "autoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4974
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 4975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    .line 4978
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 4979
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4980
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private blockCaptureUIForRecording(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4022
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 4023
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    .line 4024
    :cond_0
    return-void
.end method

.method private broadcastStopFM()V
    .locals 0

    .prologue
    .line 5396
    return-void
.end method

.method private broadcastStopMusic()V
    .locals 0

    .prologue
    .line 5404
    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 3

    .prologue
    .line 5381
    const-string v0, "HTCCamera"

    const-string v1, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5382
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5383
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5384
    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 5385
    const-string v0, "HTCCamera"

    const-string v1, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5387
    return-void
.end method

.method private changetoCameraMode(ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2863
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change mode to Camera, isUiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 2865
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Camera - but current mode is Camera !!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    :cond_0
    :goto_0
    return-void

    .line 2869
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2870
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->switchingCameraModeEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/OneValueEventArgs;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-direct {v1, v2}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 2872
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2874
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->changeMode(Lcom/htc/camera/CameraMode;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    .line 2875
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    .line 2876
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - Handle : "

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2879
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2882
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    if-eq v0, v1, :cond_5

    .line 2884
    if-eqz p2, :cond_3

    .line 2885
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 2895
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2897
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    if-eqz v0, :cond_4

    .line 2899
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 2900
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    .line 2901
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - Abandon audio focus for video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2906
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2889
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v3}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    .line 2890
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2891
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2892
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private changetoVideoMode(ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2911
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change mode to Video, isUiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 2913
    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Video - but current mode is Video !!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    :cond_0
    :goto_0
    return-void

    .line 2917
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2918
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->switchingCameraModeEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/OneValueEventArgs;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-direct {v1, v2}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 2924
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->broadcastStopFM()V

    .line 2927
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->broadcastStopMusic()V

    .line 2930
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->stopNotesRecording()V

    .line 2932
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    if-nez v0, :cond_2

    .line 2934
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v3}, Lcom/htc/camera/IAudioManager;->requestAudioFocus(I)V

    .line 2935
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    .line 2936
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - Request audio focus for video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2941
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->changeMode(Lcom/htc/camera/CameraMode;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    .line 2942
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    .line 2943
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - Handle : "

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2946
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2949
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    if-eq v0, v1, :cond_5

    .line 2951
    if-eqz p2, :cond_4

    .line 2952
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 2962
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2965
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2966
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2956
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v1, "Starting preview"

    invoke-interface {v0, v1, v4}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    .line 2957
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2958
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2959
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkCameraFocusType()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3729
    .line 3731
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 3733
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v3

    .line 3734
    if-eqz v3, :cond_2

    .line 3736
    invoke-virtual {v3}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 3738
    :goto_0
    invoke-virtual {v3}, Lcom/htc/camera/CameraController;->isPictureCAFSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 3742
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3743
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3744
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private checkStartMode(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1803
    instance-of v0, p0, Lcom/htc/camera/CameraServiceEntry;

    if-eqz v0, :cond_1

    .line 1804
    sget-object v0, Lcom/htc/camera/CameraStartMode;->GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    .line 1816
    :goto_0
    const-string v0, "RequestedFrom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    if-eqz v0, :cond_0

    .line 1819
    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1820
    sget-object v0, Lcom/htc/camera/CameraStartMode;->Album:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    .line 1850
    :cond_0
    :goto_1
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStartMode() - Start mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    return-void

    .line 1805
    :cond_1
    instance-of v0, p0, Lcom/htc/camera/VideoServiceEntry;

    if-eqz v0, :cond_2

    .line 1806
    sget-object v0, Lcom/htc/camera/CameraStartMode;->GenericServiceCamcorder:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto :goto_0

    .line 1808
    :cond_2
    sget-object v0, Lcom/htc/camera/CameraStartMode;->Generic:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto :goto_0

    .line 1821
    :cond_3
    const-string v1, "captureSquare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1822
    sget-object v0, Lcom/htc/camera/CameraStartMode;->SquarePhoto:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto :goto_1

    .line 1823
    :cond_4
    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1824
    sget-object v0, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto :goto_1

    .line 1825
    :cond_5
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1827
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    sget-object v1, Lcom/htc/camera/CameraStartMode;->GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

    if-ne v0, v1, :cond_6

    .line 1828
    sget-object v0, Lcom/htc/camera/CameraStartMode;->MmsPhoto:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto :goto_1

    .line 1830
    :cond_6
    sget-object v0, Lcom/htc/camera/CameraStartMode;->MmsVideo:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto :goto_1

    .line 1832
    :cond_7
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1834
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    sget-object v1, Lcom/htc/camera/CameraStartMode;->GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

    if-ne v0, v1, :cond_8

    .line 1835
    sget-object v0, Lcom/htc/camera/CameraStartMode;->NotesPhoto:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto :goto_1

    .line 1837
    :cond_8
    sget-object v0, Lcom/htc/camera/CameraStartMode;->NotesVideo:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto :goto_1

    .line 1839
    :cond_9
    const-string v1, "WatchCompanion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1841
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    sget-object v1, Lcom/htc/camera/CameraStartMode;->GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

    if-ne v0, v1, :cond_a

    .line 1842
    sget-object v0, Lcom/htc/camera/CameraStartMode;->WatchCompanionPhoto:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto/16 :goto_1

    .line 1844
    :cond_a
    sget-object v0, Lcom/htc/camera/CameraStartMode;->WatchCompanionVideo:Lcom/htc/camera/CameraStartMode;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    goto/16 :goto_1

    .line 1847
    :cond_b
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStartMode() - Unknown service requester : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private completeCapture(Lcom/htc/camera/CaptureHandle;J)V
    .locals 10

    .prologue
    const/16 v1, 0x277a

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 5610
    if-nez p1, :cond_1

    .line 5612
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Null capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5717
    :cond_0
    :goto_0
    return-void

    .line 5615
    :cond_1
    const-string v0, "HTCCamera"

    const-string v4, "completeCapture() - Handle : "

    const-string v5, ", camera mode : "

    iget-object v6, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    invoke-static {v0, v4, p1, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5618
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v4, :cond_b

    .line 5621
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v4, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v4}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 5638
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x320

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    move v0, v3

    .line 5639
    :goto_1
    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    iget-object v5, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v4, v5}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/htc/camera/SessionHandle;

    iget-object v5, p0, Lcom/htc/camera/HTCCamera;->mSessionHandle:Lcom/htc/camera/SessionHandle;

    if-eq v4, v5, :cond_6

    .line 5645
    :cond_3
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v2}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 5658
    :goto_2
    if-nez v0, :cond_4

    .line 5659
    iput-object v8, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5662
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onActionScreenClosed(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 5624
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_2

    .line 5626
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Invalid photo capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5627
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeCapture() - Current photo capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5630
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_2

    .line 5632
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Invalid video capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5633
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeCapture() - Current video capture handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 5638
    goto :goto_1

    .line 5648
    :pswitch_2
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v1, v2}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 5649
    iput-object v8, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    goto :goto_2

    .line 5652
    :pswitch_3
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v1, v2}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 5653
    iput-object v8, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    goto :goto_2

    .line 5667
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gtz v0, :cond_a

    .line 5670
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v1, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 5683
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_7

    .line 5685
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_8

    .line 5686
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Reviewing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5692
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_9

    .line 5694
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/ActionScreen;->open()V

    .line 5695
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_0

    .line 5697
    const-string v0, "HTCCamera"

    const-string v1, "Action Screen is not open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5698
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onActionScreenClosed(Lcom/htc/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 5673
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 5674
    iput-object v8, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    goto :goto_3

    .line 5677
    :pswitch_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 5678
    iput-object v8, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    goto :goto_3

    .line 5688
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    .line 5703
    :cond_9
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - No action screen to open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5704
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onActionScreenClosed(Lcom/htc/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 5708
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    move v3, v2

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 5710
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_c

    .line 5712
    const-string v0, "HTCCamera"

    const-string v4, "completeCapture() - Called from another thread"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5713
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v2, v2, v4}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5716
    :cond_c
    const-string v0, "HTCCamera"

    const-string v1, "completeCapture() - Cannot show action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5645
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5670
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private doOnDestory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2684
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/UIComponentManager;->deinitializeComponents()V

    .line 2689
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->exit()V

    .line 2691
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2695
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2698
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/UIComponentManager;->removeComponents()V

    .line 2699
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/UIComponentManager;->release()V

    .line 2707
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2709
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->releaseIntentManager()V

    .line 2711
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    .line 2714
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeActionScreen()V

    .line 2715
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    .line 2717
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 2718
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->releaseCameraThread()V

    .line 2719
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    .line 2723
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 2725
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=OFF"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2726
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    .line 2730
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "Destroy events"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 2734
    const-string v0, "HTCCamera"

    const-string v1, "Destroy properties"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 2738
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera$MainHandler;->release()V

    .line 2741
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_3

    .line 2743
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->abort()V

    .line 2744
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    .line 2748
    :cond_3
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 2749
    sget-object v1, Lcom/htc/camera/CameraApplication;->EVENT_THEME_ID_UPDATED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUpdateThemeIDHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 2750
    sget-object v1, Lcom/htc/camera/CameraApplication;->EVENT_UNHANDLED_EXCEPTION:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUnhandledExceptionHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 2753
    invoke-virtual {v0, p0}, Lcom/htc/camera/CameraApplication;->notifyInstanceDestroyed(Lcom/htc/camera/HTCCamera;)V

    .line 2755
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mDotMatrixReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2760
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEAccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2765
    :goto_2
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    return-void

    .line 2692
    :catch_0
    move-exception v0

    .line 2693
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - Joining with CameraThread has been interrupted"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2756
    :catch_1
    move-exception v0

    .line 2757
    const-string v1, "HTCCamera"

    const-string v2, "doOnDestory unregisterReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2761
    :catch_2
    move-exception v0

    .line 2762
    const-string v1, "HTCCamera"

    const-string v2, "doOnDestory unregisterReceiver mEAccessReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private doOnResume_after_preview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2284
    const-string v0, "HTCCamera"

    const-string v1, "doOnResume_after_preview() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mNeed_doOnResume:Z

    if-nez v0, :cond_0

    .line 2287
    const-string v0, "HTCCamera"

    const-string v1, "doOnResume_after_preview() - not need to do"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    :goto_0
    return-void

    .line 2290
    :cond_0
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 2294
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->resetLaunchedby()V

    .line 2296
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2297
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2299
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.camera.intent.action.CLOSE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2303
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2304
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mControlIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.htc.camera.permission.CONTROL"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2310
    :goto_1
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mEnableSensorFocus:Z

    .line 2313
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 2314
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2316
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/camera/n;->a(Landroid/content/ContentResolver;)Lcom/htc/camera/io/StorageSlot;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2317
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v2, v1}, Lcom/htc/camera/CameraThread;->changeStorageSlot(Lcom/htc/camera/io/StorageSlot;)V

    .line 2319
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraThread;->checkStorageState(Z)V

    .line 2322
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->m_StorageSlotListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    if-nez v1, :cond_2

    .line 2324
    new-instance v1, Lcom/htc/camera/HTCCamera$26;

    const-string v2, "Settings.StorageSlot"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/camera/HTCCamera$26;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/camera/HTCCamera;->m_StorageSlotListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 2336
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeActionScreen()V

    .line 2338
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    .line 2347
    sget-object v1, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2349
    const-string v1, "pref_sdcard_state"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2351
    if-eqz v0, :cond_3

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2353
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->queryToggleStorage()V

    .line 2355
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->saveSDCardState()V

    .line 2357
    const-string v0, "HTCCamera"

    const-string v1, "doOnResume_after_preview() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2305
    :catch_0
    move-exception v0

    .line 2306
    const-string v1, "HTCCamera"

    const-string v2, "registerReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private inflateCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1424
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsCaptureUIInflated:Z

    if-eqz v0, :cond_0

    .line 1464
    :goto_0
    return-void

    .line 1426
    :cond_0
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsCaptureUIInflated:Z

    .line 1428
    const-string v0, "HTCCamera"

    const-string v1, "inflateCaptureUI() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1432
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mFullScreenCaptureUiContainer:Landroid/view/ViewGroup;

    .line 1433
    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1434
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    .line 1437
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-boolean v0, v0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 1440
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1441
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    invoke-static {v0, v2, v2, v1, v2}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    .line 1446
    :goto_1
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mNavigationBarStub:Landroid/view/View;

    .line 1447
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mNavigationBarStub:Landroid/view/View;

    new-instance v1, Lcom/htc/camera/HTCCamera$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$14;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1457
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mNavigationBarStub:Landroid/view/View;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    invoke-static {v0, v1}, Lcom/htc/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 1461
    :cond_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1463
    const-string v0, "HTCCamera"

    const-string v1, "inflateCaptureUI() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1443
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    invoke-static {v0, v2, v2, v2, v1}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    goto :goto_1
.end method

.method private initializeCaptureUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1473
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    if-eqz v0, :cond_0

    .line 1509
    :goto_0
    return-void

    .line 1475
    :cond_0
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    .line 1477
    const-string v0, "HTCCamera"

    const-string v1, "initializeCaptureUI() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->inflateCaptureUI()V

    .line 1483
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentFactory:Lcom/htc/camera/component/UIComponentFactory;

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Normal:Lcom/htc/camera/component/ComponentCategory;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentFactory;->createComponents(Lcom/htc/camera/component/ComponentCategory;)I

    .line 1486
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->enableAutoInitialization(Z)V

    .line 1489
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1492
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->linkToOptionalServiceComponents()V

    .line 1495
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    if-nez v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->requestAudioFocus(I)V

    .line 1501
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    .line 1502
    const-string v0, "HTCCamera"

    const-string v1, "initializeCaptureUI() - Request audio focus for video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    .line 1508
    const-string v0, "HTCCamera"

    const-string v1, "initializeCaptureUI() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDotMatrixCovered()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1353
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.cover.closed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1354
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1356
    if-eqz v1, :cond_0

    .line 1357
    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1361
    :goto_0
    return v0

    .line 1359
    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "isDotMatrixCovered xxxxx"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTapCaptureEnabled()Z
    .locals 2

    .prologue
    .line 4539
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 4540
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_MAIN_TAP_TO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FRONT_TAP_TO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchRegionCanTriggerTouchFocus(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4548
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v2, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    .line 4549
    if-eqz v0, :cond_1

    .line 4550
    invoke-virtual {v0}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->getExpandableMenuBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 4555
    const/4 v0, 0x0

    .line 4559
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 4557
    goto :goto_0

    :cond_1
    move v0, v1

    .line 4559
    goto :goto_0
.end method

.method private leaveQuickLaunchState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8987
    const-string v0, "HTCCamera"

    const-string v1, "leaveQuickLaunchState()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8990
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9001
    :cond_0
    :goto_0
    return-void

    .line 8992
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8996
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 8997
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 9000
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private linkToCameraThread()V
    .locals 6

    .prologue
    .line 6532
    const-string v0, "HTCCamera"

    const-string v1, "linkToCameraThread() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6535
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    .line 6536
    if-nez v1, :cond_0

    .line 6538
    const-string v0, "HTCCamera"

    const-string v1, "linkToCameraThread() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6654
    :goto_0
    return-void

    .line 6543
    :cond_0
    new-instance v0, Lcom/htc/camera/HTCCamera$36;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$36;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 6556
    new-instance v2, Lcom/htc/camera/HTCCamera$37;

    invoke-direct {v2, p0}, Lcom/htc/camera/HTCCamera$37;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 6572
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->cameraClosedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v3, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6573
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v3, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6574
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v3, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6575
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->captureStartedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v3, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6576
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->captureStoppedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v3, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6577
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v3, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6578
    sget-object v3, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {v1, v3, v2}, Lcom/htc/camera/CameraThread;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 6579
    sget-object v3, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {v1, v3, v2}, Lcom/htc/camera/CameraThread;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 6580
    iget-object v2, v1, Lcom/htc/camera/CameraThread;->modeChangedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6581
    iget-object v2, v1, Lcom/htc/camera/CameraThread;->modeChangeFailedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6582
    iget-object v2, v1, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6583
    iget-object v2, v1, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6584
    iget-object v2, v1, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6585
    iget-object v2, v1, Lcom/htc/camera/CameraThread;->shutterEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6588
    new-instance v0, Lcom/htc/camera/HTCCamera$38;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$38;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 6601
    new-instance v2, Lcom/htc/camera/HTCCamera$39;

    invoke-direct {v2, p0}, Lcom/htc/camera/HTCCamera$39;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 6617
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 6618
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 6619
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 6620
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 6621
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 6622
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 6623
    iget-object v3, v1, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v3, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 6626
    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v3, Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRecordingLimitController;

    .line 6627
    if-eqz v0, :cond_1

    .line 6628
    iget-object v0, v0, Lcom/htc/camera/IRecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 6633
    :goto_1
    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 6634
    :goto_2
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/imaging/Size;

    .line 6635
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 6636
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/camera/Range;

    .line 6637
    new-instance v0, Lcom/htc/camera/HTCCamera$40;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/HTCCamera$40;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/imaging/Size;Ljava/lang/Integer;ZLcom/htc/camera/Range;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 6653
    const-string v0, "HTCCamera"

    const-string v1, "linkToCameraThread() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6630
    :cond_1
    const-string v0, "HTCCamera"

    const-string v2, "linkToCameraThread() - No IRecordingLimitController interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6633
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private linkToOptionalServiceComponents()V
    .locals 4

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/IAudioManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    .line 1554
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-nez v0, :cond_0

    .line 1555
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    .line 1559
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_8

    .line 1561
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$16;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$16;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1569
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$17;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$17;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1577
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$18;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$18;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1590
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    .line 1591
    if-eqz v0, :cond_9

    .line 1593
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/ICaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1594
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v0, v0, Lcom/htc/camera/ICaptureBar;->isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1600
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/effect/IEffectControlUI;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectControlUI;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    .line 1601
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    if-nez v0, :cond_1

    .line 1602
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IEffectControlUI interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 1606
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_a

    .line 1608
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1609
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1615
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    .line 1616
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-eqz v0, :cond_b

    .line 1619
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    iget-object v1, v1, Lcom/htc/camera/IRotateDialogManager;->hasDialog:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1625
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-nez v0, :cond_2

    .line 1627
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/IObjectTracker;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IObjectTracker;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    .line 1628
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-nez v0, :cond_2

    .line 1629
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IObjectTracker interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 1635
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_c

    .line 1638
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/HTCCamera$19;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$19;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1648
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->deviceOrientation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->deviceOrientation:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1649
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isRotationLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1650
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1656
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/ag;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/htc/camera/ag;

    .line 1657
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/htc/camera/ag;

    if-nez v0, :cond_3

    .line 1658
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ISharedBackgroundWorker interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/panorama/IPanoramaPlusController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    .line 1662
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-nez v0, :cond_4

    .line 1663
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IPanoramaPlusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 1667
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-nez v0, :cond_5

    .line 1668
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IZoeController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/ai;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ai;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSwitchCameraSlidingUI:Lcom/htc/camera/ai;

    .line 1673
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSwitchCameraSlidingUI:Lcom/htc/camera/ai;

    if-nez v0, :cond_6

    .line 1674
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ISwitchCameraSlidingUI interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 1678
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_d

    .line 1679
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ICaptureModeManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    .line 1693
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-nez v0, :cond_7

    .line 1694
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IManualCaptureController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/component/ICountDownTimer;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ICountDownTimer;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    .line 1697
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    if-nez v0, :cond_e

    .line 1698
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ICountDownTimer interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    :goto_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/media/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mThumbnailImagePool:Lcom/htc/camera/media/a;

    .line 1795
    return-void

    .line 1587
    :cond_8
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1597
    :cond_9
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ICaptureBar interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1612
    :cond_a
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IEffectManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1622
    :cond_b
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1653
    :cond_c
    const-string v0, "HTCCamera"

    const-string v1, "linkToOptionalServiceComponents() - Cannot find IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1681
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/HTCCamera$20;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$20;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    goto :goto_5

    .line 1701
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v1, v1, Lcom/htc/camera/component/ICountDownTimer;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 1702
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v0, v0, Lcom/htc/camera/component/ICountDownTimer;->timerTickEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$21;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$21;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1736
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v0, v0, Lcom/htc/camera/component/ICountDownTimer;->timerFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$22;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$22;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1781
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v0, v0, Lcom/htc/camera/component/ICountDownTimer;->timerCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$23;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$23;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    goto :goto_6
.end method

.method private linkToRequiredServiceComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1517
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v2, Lcom/htc/camera/w;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    .line 1518
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    if-nez v0, :cond_0

    .line 1520
    const-string v0, "HTCCamera"

    const-string v2, "linkToRequiredServiceComponents() - No ICaptureUIBlockManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1544
    :goto_0
    return v0

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v2, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    .line 1526
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-nez v0, :cond_1

    .line 1528
    const-string v0, "HTCCamera"

    const-string v2, "linkToRequiredServiceComponents() - No IViewfinder interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1529
    goto :goto_0

    .line 1531
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/HTCCamera$15;

    invoke-direct {v2, p0}, Lcom/htc/camera/HTCCamera$15;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/IViewfinder;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 1544
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lock2A()V
    .locals 2

    .prologue
    .line 4297
    const-string v0, "HTCCamera"

    const-string v1, "lock2A()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4300
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_0

    .line 4301
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    const-string v1, "Long touch Focus"

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->lockAutoFocus(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->m_FocusLockHandle:Lcom/htc/camera/Handle;

    .line 4304
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 4305
    if-eqz v0, :cond_1

    .line 4307
    const-string v1, "Long touch Focus"

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->lockAutoExposure(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->m_AecLockHandle:Lcom/htc/camera/Handle;

    .line 4309
    :cond_1
    return-void
.end method

.method private needToAddShowWhenLocked()Z
    .locals 1

    .prologue
    .line 5505
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mResume:Z

    if-eqz v0, :cond_0

    .line 5506
    const/4 v0, 0x1

    .line 5508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToClearShowWhenLocked()Z
    .locals 4

    .prologue
    .line 5513
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->isDotMatrixCovered()Z

    move-result v0

    .line 5514
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "covered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5515
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mResume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    if-nez v0, :cond_0

    .line 5516
    const/4 v0, 0x1

    .line 5518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToDismissKeyguard()Z
    .locals 1

    .prologue
    .line 5522
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    if-eqz v0, :cond_0

    .line 5523
    const/4 v0, 0x1

    .line 5525
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActionScreenClosed(Lcom/htc/camera/CaptureHandle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5871
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5872
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Capture handle : \'"

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5873
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Camera mode : "

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5874
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionScreenClosed() - Current mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5877
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    .line 5879
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v1, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5905
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_2

    .line 5908
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Complete video snapshot"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5909
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5910
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 6013
    :cond_1
    :goto_1
    return-void

    .line 5884
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 5885
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;

    .line 5888
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    goto :goto_0

    .line 5894
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 5895
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mRecordingLockHandle:Lcom/htc/camera/Handle;

    .line 5898
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    goto :goto_0

    .line 5925
    :cond_2
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    if-eq v0, v1, :cond_3

    .line 5927
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5928
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5932
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5933
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Power warning"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5934
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    goto :goto_1

    .line 5939
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5941
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5944
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 5947
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_5

    .line 5949
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Enable continuous auto-focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5950
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V

    .line 5951
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    .line 5955
    :cond_5
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    if-eqz v0, :cond_1

    .line 5957
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Switch back to photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5958
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0, v4, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5959
    iput-boolean v5, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    goto/16 :goto_1

    .line 5961
    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Fail to switch back to photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5968
    :cond_7
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_d

    .line 5971
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5973
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Take picture immediately"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5974
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5975
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5976
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5979
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Cannot take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5983
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5986
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_a

    .line 5988
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Enable continuous auto-focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5989
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V

    .line 5990
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    .line 5994
    :cond_a
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    if-eqz v0, :cond_b

    .line 5996
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Switch back to photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5997
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0, v4, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5998
    iput-boolean v5, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    .line 6003
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/htc/camera/SessionHandle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/htc/camera/SessionHandle;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mSessionHandle:Lcom/htc/camera/SessionHandle;

    if-ne v0, v1, :cond_f

    .line 6004
    :cond_c
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->startPreview()Z

    .line 6010
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    .line 6012
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6000
    :cond_e
    const-string v0, "HTCCamera"

    const-string v1, "onActionScreenClosed() - Fail to switch back to photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6006
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-direct {p0, v5, v0}, Lcom/htc/camera/HTCCamera;->startPreview(ZLcom/htc/camera/CameraType;)Z

    goto :goto_3

    .line 5879
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onActionScreenOpening()V
    .locals 0

    .prologue
    .line 5863
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    .line 5864
    return-void
.end method

.method private onAutoFocusCanceled(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 8435
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusCanceled() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    iget-object v2, v2, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8438
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    iget-object v1, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    if-eq v0, v1, :cond_1

    .line 8440
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusCanceled() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8441
    const-string v1, "HTCCamera"

    const-string v2, "onAutoFocusCanceled() - Current handle : \'"

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    iget-object v0, v0, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8460
    :goto_1
    return-void

    .line 8441
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 8446
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->performActionsAfterAutoFocus()V

    .line 8449
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mIsTouchFaceFocus:Z

    .line 8450
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    .line 8451
    iput v4, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 8452
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8455
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 8456
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    .line 8459
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_1
.end method

.method private onAutoFocusFinished(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 4

    .prologue
    .line 8322
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - Handle : \'"

    iget-object v2, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    iget-object v2, v2, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8325
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    iget-object v1, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    if-eq v0, v1, :cond_1

    .line 8327
    const-string v0, "HTCCamera"

    const-string v1, "onAutoFocusFinished() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8328
    const-string v1, "HTCCamera"

    const-string v2, "onAutoFocusFinished() - Current handle : \'"

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    iget-object v0, v0, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8338
    :goto_1
    return-void

    .line 8328
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 8331
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    .line 8334
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8337
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->performActionsAfterAutoFocus()V

    goto :goto_1
.end method

.method private onAutoFocusStarting(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8276
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    iget-object v1, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    if-eq v0, v1, :cond_0

    .line 8315
    :goto_0
    return-void

    .line 8278
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_2

    .line 8283
    :cond_1
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIsTouchFaceFocus:Z

    goto :goto_0

    .line 8288
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isMuteFocusSound()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8291
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_3

    .line 8292
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f07000b

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingSoundHandle:Lcom/htc/camera/Handle;

    .line 8294
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-eq v0, v1, :cond_4

    sget-boolean v0, Lcom/htc/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v0, :cond_6

    .line 8297
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8298
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mFocusingSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 8314
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIsTouchFaceFocus:Z

    goto :goto_0

    .line 8300
    :cond_6
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8302
    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8303
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mFocusingSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    goto :goto_1

    .line 8305
    :cond_7
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Facetouch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_5

    :cond_8
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsTouchFaceFocus:Z

    if-eqz v0, :cond_5

    .line 8307
    const-string v0, "HTCCamera"

    const-string v1, "Play Focusing Sound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8308
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mFocusingSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 8309
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIsTouchFaceFocus:Z

    goto :goto_1
.end method

.method private onCameraClosed(Lcom/htc/camera/event/EventArgs;)V
    .locals 2

    .prologue
    .line 6369
    const-string v0, "HTCCamera"

    const-string v1, "onCameraClosed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6370
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->unlock2A()V

    .line 6371
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6372
    return-void
.end method

.method private onCameraModeChangeFailed(Lcom/htc/camera/CameraModeChangeEventArgs;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8245
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to switching mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/CameraModeChangeEventArgs;->targetMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8248
    iget-object v0, p1, Lcom/htc/camera/CameraModeChangeEventArgs;->targetMode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    .line 8249
    :goto_0
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {v0}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 8260
    :goto_1
    iget-object v0, p1, Lcom/htc/camera/CameraModeChangeEventArgs;->targetMode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8262
    const-string v0, "HTCCamera"

    const-string v1, "onCameraModeChangeFailed() - Cancel video recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8263
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8267
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onPreviewStarted(Lcom/htc/camera/CameraPreviewEventArgs;)V

    .line 8268
    return-void

    .line 8248
    :cond_1
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    goto :goto_0

    .line 8252
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/htc/camera/HTCCamera;->changetoCameraMode(ZZ)V

    goto :goto_1

    .line 8255
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/htc/camera/HTCCamera;->changetoVideoMode(ZZ)V

    goto :goto_1

    .line 8249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCameraModeChanged(Lcom/htc/camera/CameraModeChangeEventArgs;)V
    .locals 3

    .prologue
    .line 8227
    const-string v0, "HTCCamera"

    const-string v1, "onCameraModeChanged() - Handle : "

    iget-object v2, p1, Lcom/htc/camera/CameraModeChangeEventArgs;->handle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8230
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    iget-object v1, p1, Lcom/htc/camera/CameraModeChangeEventArgs;->handle:Lcom/htc/camera/Handle;

    if-eq v0, v1, :cond_0

    .line 8232
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraModeChanged() - Invalid handle, current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8238
    :goto_0
    return-void

    .line 8237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private onCameraThreadBlocked(Lcom/htc/camera/CameraThreadBlockReason;)V
    .locals 3

    .prologue
    .line 9060
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraThreadBlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9062
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9063
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 9064
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    .line 9065
    return-void
.end method

.method private onCameraThreadEventReceived(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/EventKey",
            "<*>;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6941
    sget-object v0, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    if-ne p1, v0, :cond_1

    .line 6942
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    check-cast p2, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-direct {p0, v0, p2}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 6945
    :cond_0
    :goto_0
    return-void

    .line 6943
    :cond_1
    sget-object v0, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    if-ne p1, v0, :cond_0

    .line 6944
    check-cast p2, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p2}, Lcom/htc/camera/HTCCamera;->onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    goto :goto_0
.end method

.method private onCameraThreadEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6907
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_1

    .line 6938
    :cond_0
    :goto_0
    return-void

    .line 6911
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraClosedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_2

    .line 6912
    invoke-direct {p0, p3}, Lcom/htc/camera/HTCCamera;->onCameraClosed(Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 6913
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_3

    .line 6914
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6915
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_4

    .line 6916
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {p0, p3}, Lcom/htc/camera/HTCCamera;->onCaptureFailed(Lcom/htc/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 6917
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureStartedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_5

    .line 6918
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {p0, p3}, Lcom/htc/camera/HTCCamera;->onCaptureStarted(Lcom/htc/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 6919
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureStoppedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_6

    .line 6920
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-direct {p0, p3}, Lcom/htc/camera/HTCCamera;->onCaptureStopped(Lcom/htc/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 6921
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_7

    .line 6922
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    check-cast p3, Lcom/htc/camera/MediaEventArgs;

    invoke-virtual {v0, p0, p3}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0

    .line 6923
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->modeChangedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_8

    .line 6924
    check-cast p3, Lcom/htc/camera/CameraModeChangeEventArgs;

    invoke-direct {p0, p3}, Lcom/htc/camera/HTCCamera;->onCameraModeChanged(Lcom/htc/camera/CameraModeChangeEventArgs;)V

    goto :goto_0

    .line 6925
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->modeChangeFailedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_9

    .line 6926
    check-cast p3, Lcom/htc/camera/CameraModeChangeEventArgs;

    invoke-direct {p0, p3}, Lcom/htc/camera/HTCCamera;->onCameraModeChangeFailed(Lcom/htc/camera/CameraModeChangeEventArgs;)V

    goto :goto_0

    .line 6927
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_a

    .line 6928
    check-cast p3, Lcom/htc/camera/CameraPreviewEventArgs;

    invoke-direct {p0, p3}, Lcom/htc/camera/HTCCamera;->onPreviewStarted(Lcom/htc/camera/CameraPreviewEventArgs;)V

    goto :goto_0

    .line 6929
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewStartFailedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_b

    .line 6930
    check-cast p3, Lcom/htc/camera/CameraPreviewEventArgs;

    invoke-direct {p0, p3}, Lcom/htc/camera/HTCCamera;->onPreviewStartFailed(Lcom/htc/camera/CameraPreviewEventArgs;)V

    goto :goto_0

    .line 6931
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->shutterEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_c

    .line 6932
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->shutterEvent:Lcom/htc/camera/event/Event;

    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {v0, p0, p3}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 6933
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_0

    .line 6935
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    if-ne v0, v1, :cond_0

    .line 6936
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onCameraThreadPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3

    .prologue
    .line 6954
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_1

    .line 6978
    :cond_0
    :goto_0
    return-void

    .line 6958
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_2

    .line 6960
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 6961
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onPreviewSizeChanged(Lcom/htc/camera/imaging/Size;)V

    goto :goto_0

    .line 6963
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_3

    .line 6964
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onCameraThreadRecordingStateChanged(Lcom/htc/camera/RecordingState;)V

    goto :goto_0

    .line 6965
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_4

    .line 6967
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 6968
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->onStorageSlotChanged(Lcom/htc/camera/io/StorageSlot;Z)V

    goto :goto_0

    .line 6970
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_5

    .line 6971
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/StorageState;

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onStorageStateChanged(Lcom/htc/camera/io/StorageState;)V

    goto :goto_0

    .line 6972
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_6

    .line 6973
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onZoomValueChanged(Ljava/lang/Integer;)V

    goto :goto_0

    .line 6974
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->zoomRange:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_7

    .line 6975
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Range;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6976
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_0

    .line 6977
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->isVideoPauseSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onCameraThreadRecordingStateChanged(Lcom/htc/camera/RecordingState;)V
    .locals 3

    .prologue
    .line 7499
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRecordingStateChanged() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7500
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRecordingStateChanged() - RecordingState  : \'"

    const-string v2, "\'"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7503
    sget-object v0, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {p1, v0}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7505
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 7513
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {p1, v0}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7515
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->unblockCaptureUIForRecording()V

    .line 7516
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7532
    :cond_1
    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRecordingStateChanged() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7533
    return-void

    .line 7509
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 7518
    :cond_2
    sget-object v0, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {p1, v0}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7520
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onVideoRecordingPaused()V

    goto :goto_1

    .line 7522
    :cond_3
    sget-object v0, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {p1, v0}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7524
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onVideoRecordingResumed()V

    goto :goto_1

    .line 7526
    :cond_4
    sget-object v0, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {p1, v0}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7528
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->unblockCaptureUIForRecording()V

    .line 7529
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 7505
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraThreadRunning()V
    .locals 3

    .prologue
    .line 6473
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6476
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_0

    .line 6478
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6524
    :goto_0
    return-void

    .line 6483
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->changeMode(Lcom/htc/camera/CameraMode;)Lcom/htc/camera/Handle;

    .line 6486
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6488
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Activity is paused, close camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6489
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 6493
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    new-instance v1, Lcom/htc/camera/HTCCamera$35;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$35;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6502
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Cannot link to camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 6506
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6509
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    if-eq v0, v1, :cond_3

    .line 6513
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6515
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6516
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/HTCCamera;->startPreview(ZLcom/htc/camera/CameraType;)Z

    .line 6520
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    .line 6523
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6519
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - Activity is paused, ignore preview starting"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onCaptureFailed(Lcom/htc/camera/CaptureEventArgs;)V
    .locals 2

    .prologue
    .line 5799
    if-nez p1, :cond_0

    .line 5801
    const-string v0, "HTCCamera"

    const-string v1, "onCaptureFailed() - No event arguments"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5808
    :goto_0
    return-void

    .line 5804
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->cameraMode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 5805
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onTakingPictureFailed(Lcom/htc/camera/CaptureEventArgs;)V

    goto :goto_0

    .line 5807
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onRecordingFailed(Lcom/htc/camera/CaptureEventArgs;)V

    goto :goto_0
.end method

.method private onCaptureStarted(Lcom/htc/camera/CaptureEventArgs;)V
    .locals 4

    .prologue
    .line 5747
    const-string v0, "HTCCamera"

    const-string v1, "onCaptureStarted() - Capture handle : \'"

    iget-object v2, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v2, v2, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5748
    const-string v0, "HTCCamera"

    const-string v1, "onCaptureStarted() - Camera mode : "

    iget-object v2, p1, Lcom/htc/camera/CaptureEventArgs;->cameraMode:Lcom/htc/camera/CameraMode;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5751
    const/4 v0, 0x0

    .line 5752
    iget-object v1, p1, Lcom/htc/camera/CaptureEventArgs;->cameraMode:Lcom/htc/camera/CameraMode;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v1, v2, :cond_5

    .line 5754
    iget-object v1, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v1, v2, :cond_2

    .line 5756
    const-string v0, "HTCCamera"

    const-string v1, "onCaptureStarted() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5757
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted() - Current capture handle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5783
    :cond_0
    :goto_1
    return-void

    .line 5757
    :cond_1
    const-string v0, "null"

    goto :goto_0

    .line 5760
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5762
    const-string v0, "HTCCamera"

    const-string v1, "onCaptureStarted() - Video snapshot"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5763
    const/4 v0, 0x1

    .line 5777
    :cond_3
    if-nez v0, :cond_4

    .line 5778
    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->prepareActionScreen(Lcom/htc/camera/CaptureHandle;)V

    .line 5781
    :cond_4
    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->cameraMode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 5782
    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onRecordingStarted(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_1

    .line 5768
    :cond_5
    iget-object v1, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v1, v2, :cond_3

    .line 5770
    const-string v0, "HTCCamera"

    const-string v1, "onCaptureStarted() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5771
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted() - Current capture handle : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "null"

    goto :goto_2
.end method

.method private onCaptureStopped(Lcom/htc/camera/CaptureEventArgs;)V
    .locals 2

    .prologue
    .line 5790
    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->cameraMode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 5791
    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onRecordingStopped(Lcom/htc/camera/CaptureHandle;)V

    .line 5792
    :cond_0
    return-void
.end method

.method private onEffectPanelStateChanged(Lcom/htc/camera/UIState;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8579
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$UIState:[I

    invoke-virtual {p1}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 8598
    :cond_0
    :goto_0
    return-void

    .line 8583
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "Effect Panel is opening"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8585
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_0

    .line 8586
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 8587
    const-string v0, "HTCCamera"

    const-string v1, "onEffectPanelOpening when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8588
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 8589
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - onEffectPanelOpening and cancel focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8591
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onPanelMove when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onExternalCommandReceived(Lcom/htc/camera/ExternalCommandEventArgs;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8917
    iget-object v0, p1, Lcom/htc/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    .line 8918
    const-string v1, "activate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8919
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->activate()V

    .line 8958
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/camera/ExternalCommandEventArgs;->setHandled()V

    .line 8959
    :cond_1
    :goto_1
    return-void

    .line 8920
    :cond_2
    const-string v1, "deactivate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8921
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->deactivate()V

    goto :goto_0

    .line 8922
    :cond_3
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8924
    const-string v0, "HTCCamera"

    const-string v1, "activate"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 8925
    const-string v0, "HTCCamera"

    const-string v1, "deactivate"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 8926
    const-string v0, "HTCCamera"

    const-string v1, "switch_camera CAMERA_TYPE(Main/Main3D/Front/Front3D)"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 8927
    const-string v0, "HTCCamera"

    const-string v1, "take_picture"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8930
    :cond_4
    const-string v1, "switch_camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8932
    iget-object v0, p1, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 8936
    :try_start_0
    const-class v0, Lcom/htc/camera/CameraType;

    iget-object v1, p1, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 8937
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8938
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot switch camera to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8940
    :catch_0
    move-exception v0

    .line 8942
    const-string v0, "HTCCamera"

    const-string v1, "onExternalCommandReceived() - Unknow camera argument from external command"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8943
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown camera \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8947
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "No camera specified"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8949
    :cond_6
    const-string v1, "take_picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8951
    const-string v0, "External Command"

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8952
    const-string v0, "HTCCamera"

    const-string v1, "Take one picture"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8954
    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "Cannot take picture"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onPopupBubbleShown()V
    .locals 1

    .prologue
    .line 6380
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6381
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeSelfTimer()V

    .line 6382
    :cond_0
    return-void
.end method

.method private onPreviewResourcesCreated()V
    .locals 3

    .prologue
    .line 6986
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewResourcesCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6989
    const-string v0, "HTCCamera.PreviewSurfaceCreated"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnPreviewSurfaceCreatedProfTimer:Lcom/htc/camera/Handle;

    .line 6990
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isLaunching:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6991
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnCreateProfTimer:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mOnPreviewSurfaceCreatedProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 6996
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6998
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewResourcesCreated() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7035
    :cond_1
    :goto_1
    return-void

    .line 6992
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnNewIntentProfTimer:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 6993
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnNewIntentProfTimer:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mOnPreviewSurfaceCreatedProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    goto :goto_0

    .line 7003
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsOnResumeCompleted:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_7

    .line 7004
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 7005
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7007
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7009
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewResourcesCreated() - Start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7010
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 7033
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7034
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    goto :goto_1

    .line 7014
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewResourcesCreated() - Camera thread is not running, start preview later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7015
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->inflateCaptureUI()V

    goto :goto_2

    .line 7020
    :cond_6
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewResourcesCreated() - Start preview later, taking picture state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recording state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7021
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v0, :cond_4

    .line 7023
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->printDataReadyPerformanceLog()V

    .line 7024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    goto :goto_2

    .line 7028
    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewResourcesCreated() - SurfaceCreated before onResume, set mIdle = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    goto :goto_2
.end method

.method private onPreviewResourcesDestroyed()V
    .locals 2

    .prologue
    .line 7042
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewResourcesDestroyed()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    .line 7044
    return-void
.end method

.method private onPreviewSizeChanged(Lcom/htc/camera/imaging/Size;)V
    .locals 2

    .prologue
    .line 7119
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7120
    return-void
.end method

.method private onPreviewStartFailed(Lcom/htc/camera/CameraPreviewEventArgs;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7127
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStartFailed() - Result : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/htc/camera/CameraPreviewEventArgs;->startResult:Lcom/htc/camera/CameraPreviewStartResult;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/camera/CameraPreviewEventArgs;->startResult:Lcom/htc/camera/CameraPreviewStartResult;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7130
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_1

    .line 7132
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7217
    :goto_1
    return-void

    .line 7127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7135
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7137
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - Activity is pausing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7140
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7142
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7145
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    iget-object v1, p1, Lcom/htc/camera/CameraPreviewEventArgs;->handle:Lcom/htc/camera/Handle;

    if-eq v0, v1, :cond_4

    .line 7147
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7148
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - Handle : "

    iget-object v2, p1, Lcom/htc/camera/CameraPreviewEventArgs;->handle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7149
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - Current handle : "

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 7154
    :cond_4
    iget-object v0, p1, Lcom/htc/camera/CameraPreviewEventArgs;->startResult:Lcom/htc/camera/CameraPreviewStartResult;

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/htc/camera/CameraPreviewStartResult;

    if-ne v0, v1, :cond_5

    .line 7156
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - No camera token, start preview again"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7157
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->startPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    goto :goto_1

    .line 7162
    :cond_5
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 7163
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStartFailed() - FailureCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewFailureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7164
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewFailureCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6

    iget-object v0, p1, Lcom/htc/camera/CameraPreviewEventArgs;->startResult:Lcom/htc/camera/CameraPreviewStartResult;

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v0, v1, :cond_6

    iget-object v0, p1, Lcom/htc/camera/CameraPreviewEventArgs;->startResult:Lcom/htc/camera/CameraPreviewStartResult;

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v0, v1, :cond_6

    .line 7168
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - Start preview again"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7169
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->startPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_1

    .line 7175
    :cond_6
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    iget-object v1, p1, Lcom/htc/camera/CameraPreviewEventArgs;->startResult:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7202
    const/4 v0, 0x0

    .line 7205
    :goto_2
    if-eqz v0, :cond_7

    .line 7206
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7209
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_8

    .line 7210
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->cancelStartingPreview()V

    .line 7213
    :cond_8
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStartFailed() - Finish activity"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7214
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7215
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 7216
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    goto/16 :goto_1

    .line 7178
    :pswitch_0
    const v0, 0x7f08018d

    .line 7179
    goto :goto_2

    .line 7181
    :pswitch_1
    const v0, 0x7f0803d7

    .line 7182
    goto :goto_2

    .line 7184
    :pswitch_2
    const v0, 0x7f08018b

    .line 7185
    goto :goto_2

    .line 7187
    :pswitch_3
    const v0, 0x7f080185

    .line 7188
    goto :goto_2

    .line 7190
    :pswitch_4
    const v0, 0x7f080186

    .line 7191
    goto :goto_2

    .line 7193
    :pswitch_5
    const v0, 0x7f080187

    .line 7194
    goto :goto_2

    .line 7196
    :pswitch_6
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isSprint()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7197
    const v0, 0x7f08018a

    goto :goto_2

    .line 7199
    :cond_9
    const v0, 0x7f080189

    .line 7200
    goto :goto_2

    .line 7175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onPreviewStarted(Lcom/htc/camera/CameraPreviewEventArgs;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/16 v7, 0x277b

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 7224
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7225
    if-eqz p1, :cond_0

    .line 7226
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Handle : "

    iget-object v4, p1, Lcom/htc/camera/CameraPreviewEventArgs;->handle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7231
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    iget-object v1, p1, Lcom/htc/camera/CameraPreviewEventArgs;->handle:Lcom/htc/camera/Handle;

    if-eq v0, v1, :cond_1

    .line 7233
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7234
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Current handle : "

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7406
    :goto_1
    return-void

    .line 7228
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - No preview starting information"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7239
    :cond_1
    const-string v0, "HTCCamera.UIReady.Start"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIReadyStartProfTimer:Lcom/htc/camera/Handle;

    .line 7240
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isLaunching:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7241
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getStartProfTimer()Lcom/htc/camera/Handle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUIReadyStartProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 7242
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getStartPreviewEndProfTimer()Lcom/htc/camera/Handle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUIReadyStartProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 7245
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    if-ne v0, v1, :cond_3

    move v1, v2

    .line 7246
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7247
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isLaunching:Lcom/htc/camera/property/Property;

    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7248
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    .line 7249
    iput v3, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 7252
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7254
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - isActivityPaused = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 7245
    goto :goto_2

    .line 7259
    :cond_4
    if-eqz v1, :cond_5

    .line 7261
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 7262
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    .line 7263
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - UnBlock Capture UI - after start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7267
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7269
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "SWITCH_TO_MAIN_CAMERA"

    .line 7270
    :goto_3
    invoke-static {v0}, Lcom/htc/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    .line 7274
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7277
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->checkCameraFocusType()V

    .line 7280
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->initializeCaptureUI()V

    .line 7283
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->doOnResume_after_preview()V

    .line 7287
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v4, v4, Lcom/htc/camera/CameraThread;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v4}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7291
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_7

    .line 7292
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/htc/camera/HTCCamera$ScaleListener;

    invoke-direct {v1, p0, v6}, Lcom/htc/camera/HTCCamera$ScaleListener;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/HTCCamera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 7295
    :cond_7
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7296
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7297
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7298
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7303
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 7304
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v0, :cond_9

    .line 7305
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->startAccelerometer()V

    .line 7308
    :cond_9
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 7309
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIsUIReady:Z

    .line 7310
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - mIsUIReady = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7311
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_a

    .line 7312
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7313
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_b

    .line 7314
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7317
    :cond_b
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Unblock UI to prevent unexpected behavior"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7318
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7320
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 7321
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    .line 7322
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_c

    .line 7323
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 7324
    :cond_c
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;

    .line 7326
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7328
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 7329
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    .line 7330
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_e

    .line 7331
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 7332
    :cond_e
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mRecordingLockHandle:Lcom/htc/camera/Handle;

    .line 7336
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7338
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Remove unexpected CAF disable handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7339
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V

    .line 7340
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    .line 7344
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-nez v0, :cond_13

    .line 7347
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_12

    .line 7348
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 7349
    :cond_12
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    .line 7350
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Abandon audio focus for video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7354
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7356
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7358
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Start recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7359
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->triggerRecord()V

    .line 7381
    :cond_14
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-virtual {v0, v7}, Lcom/htc/camera/HTCCamera$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 7382
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-virtual {v0, v7, v8, v9}, Lcom/htc/camera/HTCCamera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 7385
    :cond_15
    const-string v0, "HTCCamera.UIReady.End"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIReadyEndProfTimer:Lcom/htc/camera/Handle;

    .line 7386
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v0, :cond_16

    .line 7388
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->printDataReadyPerformanceLog()V

    .line 7389
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    .line 7391
    :cond_16
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsFirstPreviewStarted:Z

    if-eqz v0, :cond_17

    .line 7393
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsFirstPreviewStarted:Z

    .line 7394
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnNewIntentProfTimer:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1c

    .line 7395
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnCreateProfTimer:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUIReadyEndProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 7399
    :cond_17
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIReadyStartProfTimer:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUIReadyEndProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 7405
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7269
    :cond_18
    const-string v0, "SWITCH_TO_FRONT_CAMERA"

    goto/16 :goto_3

    .line 7361
    :cond_19
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    if-eqz v0, :cond_14

    .line 7363
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Switch back to photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7364
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    .line 7365
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraMode;)Z

    goto :goto_4

    .line 7368
    :cond_1a
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_14

    .line 7370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-gtz v0, :cond_1b

    .line 7372
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStarted() - Take picture immediately"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7373
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 7374
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 7377
    :cond_1b
    iput-object v6, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    goto/16 :goto_4

    .line 7397
    :cond_1c
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnNewIntentProfTimer:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUIReadyEndProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    goto :goto_5
.end method

.method private onPreviewStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7413
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStopped() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7416
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 7417
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->stopAccelerometer()V

    .line 7420
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7421
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7422
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7423
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7424
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7425
    const-string v0, "HTCCamera"

    const-string v1, "onPreviewStopped() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7426
    return-void
.end method

.method private onRecordingFailed(Lcom/htc/camera/CaptureEventArgs;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 7949
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7950
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingFailed() - Handle : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7951
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingFailed() - Reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/CaptureEventArgs;->failedReason:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7954
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, v1, :cond_2

    .line 7956
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7957
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingFailed() - Current handle : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8057
    :goto_2
    return-void

    .line 7950
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 7957
    :cond_1
    const-string v0, "null"

    goto :goto_1

    .line 7960
    :cond_2
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 7963
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7964
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_3

    .line 7965
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7968
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7970
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - isActivityPaused = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7971
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 7976
    :cond_4
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CaptureFailedReason:[I

    iget-object v1, p1, Lcom/htc/camera/CaptureEventArgs;->failedReason:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 8003
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8004
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - failed to stop recording after recording started, reset preview related properties"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8005
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->resetPreviewState()V

    .line 8006
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8007
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8011
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8012
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8015
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 8016
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    .line 8019
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_7

    .line 8021
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 8022
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mRecordingLockHandle:Lcom/htc/camera/Handle;

    .line 8026
    :cond_7
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    .line 8029
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_8

    .line 8031
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - Enable continuous auto-focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8032
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V

    .line 8033
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    .line 8037
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8039
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    if-eqz v0, :cond_d

    .line 8041
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - Switch back to photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8042
    iput-boolean v6, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    .line 8043
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0, v5, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8044
    invoke-virtual {p0, v5}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 8056
    :cond_9
    :goto_4
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7979
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->showStorageToast()V

    goto/16 :goto_3

    .line 7983
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 7984
    if-eqz v0, :cond_a

    .line 7985
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "low_internal_storage_view_text"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto/16 :goto_3

    .line 7987
    :cond_a
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 7992
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 7993
    if-eqz v0, :cond_b

    .line 7994
    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto/16 :goto_3

    .line 7997
    :cond_b
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8046
    :cond_c
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - Fail to switch mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 8050
    :cond_d
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingFailed() - Switch back to video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8051
    invoke-virtual {p0, v5}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    goto :goto_4

    .line 7976
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onRecordingLimitStateChanged(Lcom/htc/camera/RecordingLimitState;)V
    .locals 3

    .prologue
    .line 7709
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingLimitStateChanged("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7713
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    invoke-virtual {p1}, Lcom/htc/camera/RecordingLimitState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7734
    :goto_0
    return-void

    .line 7716
    :pswitch_0
    const v0, 0x7f080162

    move v1, v0

    .line 7729
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v2, Lcom/htc/camera/ak;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 7730
    if-eqz v0, :cond_1

    .line 7731
    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 7719
    :pswitch_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7720
    const v0, 0x7f080157

    move v1, v0

    goto :goto_1

    .line 7722
    :cond_0
    const v0, 0x7f080158

    move v1, v0

    .line 7723
    goto :goto_1

    .line 7733
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingLimitStateChanged() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onRecordingStarted(Lcom/htc/camera/CaptureHandle;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7443
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStarted() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7444
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStarted() - Capture handle : \'"

    iget-object v2, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7447
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 7449
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStarted() - Invalid handle, current handle : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7492
    :goto_1
    return-void

    .line 7449
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 7454
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-eq v0, v1, :cond_2

    .line 7456
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStarted() - current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7461
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7464
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 7465
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateRecordingTime()V

    .line 7468
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isSlowMotionMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7470
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 7471
    if-eqz v0, :cond_5

    .line 7473
    iget-object v1, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 7474
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->isMmsVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7476
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v2, Lcom/htc/camera/ak;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ak;

    .line 7477
    if-eqz v1, :cond_4

    .line 7479
    const-string v2, "%d %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    const v0, 0x7f080360

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7480
    const v2, 0x7f080361

    invoke-virtual {p0, v2}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7481
    invoke-virtual {v1, v0}, Lcom/htc/camera/ak;->showToast(Ljava/lang/String;)Lcom/htc/camera/Handle;

    .line 7491
    :cond_3
    :goto_2
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStarted() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7484
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStarted() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7488
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStarted() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onRecordingStopped(Lcom/htc/camera/CaptureHandle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7612
    const-string v0, "HTCCamera"

    const-string v3, "onRecordingStopped() - Start"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7613
    const-string v0, "HTCCamera"

    const-string v3, "onRecordingStopped() - Capture handle : \'"

    iget-object v4, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    const-string v5, "\'"

    invoke-static {v0, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7616
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 7618
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStopped() - Invalid handle, current handle : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7702
    :goto_1
    return-void

    .line 7618
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 7623
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_2

    .line 7624
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7627
    :cond_2
    sget-object v3, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 7636
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7638
    const-string v0, "HTCCamera"

    const-string v3, "onRecordingStopped() - Clear focus state"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7639
    iput v1, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 7640
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 7643
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7646
    new-instance v0, Lcom/htc/camera/CaptureEventArgs;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    sget-object v4, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v0, v3, v4}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onTakingPictureFailed(Lcom/htc/camera/CaptureEventArgs;)V

    move v0, v1

    .line 7650
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v1, v3}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 7651
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    .line 7654
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7677
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 7691
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->resetPreviewState()V

    .line 7692
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7695
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7696
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    .line 7697
    :cond_4
    if-nez v0, :cond_5

    .line 7698
    invoke-virtual {p0, p1}, Lcom/htc/camera/HTCCamera;->completeRecording(Lcom/htc/camera/CaptureHandle;)V

    .line 7701
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopped() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7631
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    .line 7627
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onRecordingStopping()V
    .locals 2

    .prologue
    .line 7591
    const-string v0, "HTCCamera"

    const-string v1, "onRecordingStopping()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7594
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    if-eqz v0, :cond_0

    .line 7596
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 7600
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPauseVideoBubbleToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 7602
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPauseVideoBubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 7603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPauseVideoBubbleToastHandle:Lcom/htc/camera/Handle;

    .line 7605
    :cond_1
    return-void
.end method

.method private onRotationChanged(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 2096
    return-void
.end method

.method private onStorageEjected(Lcom/htc/camera/io/StorageSlot;)V
    .locals 2

    .prologue
    .line 6390
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->saveSDCardState()V

    .line 6393
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-ne v0, v1, :cond_1

    .line 6396
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6411
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 6412
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->checkStorageState(Z)V

    .line 6414
    :cond_1
    :goto_0
    return-void

    .line 6401
    :pswitch_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6403
    const-string v0, "HTCCamera"

    const-string v1, "storage eject, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6404
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 6405
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 6396
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onStorageMounted(Lcom/htc/camera/io/StorageSlot;)V
    .locals 2

    .prologue
    .line 6422
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->saveSDCardState()V

    .line 6425
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6427
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6430
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->queryToggleStorage()V

    .line 6438
    :cond_0
    :goto_0
    return-void

    .line 6436
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 6437
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->checkStorageState(Z)V

    goto :goto_0
.end method

.method private onStorageSlotChanged(Lcom/htc/camera/io/StorageSlot;Z)V
    .locals 6

    .prologue
    .line 8082
    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8085
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8087
    const-string v0, "HTCCamera"

    const-string v1, "onStorageSlotChanged() - Storage slot settings is locked, ignore change"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8106
    :cond_0
    :goto_0
    return-void

    .line 8092
    :cond_1
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageSlotChanged() - Storage slot has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8093
    if-eqz p2, :cond_2

    .line 8095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    .line 8096
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 8097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsUpdatingStorageSlotSetting:Z

    .line 8101
    :cond_2
    if-nez p2, :cond_0

    .line 8103
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraThread;->changeStorageSlot(Lcom/htc/camera/io/StorageSlot;)V

    .line 8104
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->checkStorageState()V

    goto :goto_0
.end method

.method private onStorageStateChanged(Lcom/htc/camera/io/StorageState;)V
    .locals 3

    .prologue
    .line 8113
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8116
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->storageState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8139
    :cond_0
    :goto_0
    return-void

    .line 8120
    :cond_1
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    invoke-virtual {p1}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 8130
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->showStorageToast()V

    .line 8133
    sget-object v0, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    sget-object v1, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    if-eq v0, v1, :cond_0

    .line 8136
    const-string v0, "HTCCamera"

    const-string v1, "onStorageStateChanged() - Close self-timer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8137
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeSelfTimer()V

    goto :goto_0

    .line 8124
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "onStorageStateChanged() - Close action screen"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8125
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeActionScreen()V

    goto :goto_1

    .line 8120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onStorageUnmounted(Lcom/htc/camera/io/StorageSlot;)V
    .locals 2

    .prologue
    .line 6446
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->saveSDCardState()V

    .line 6449
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6464
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 6465
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->checkStorageState(Z)V

    .line 6466
    :cond_1
    :goto_0
    return-void

    .line 6454
    :pswitch_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6456
    const-string v0, "HTCCamera"

    const-string v1, "storage unmounted, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6457
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 6458
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 6449
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTakingPictureFailed(Lcom/htc/camera/CaptureEventArgs;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7830
    const-string v0, "HTCCamera"

    const-string v4, "onTakingPictureFailed() - Start"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7831
    const-string v4, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTakingPictureFailed() - Handle : \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7832
    const-string v0, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTakingPictureFailed() - Reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/camera/CaptureEventArgs;->failedReason:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7835
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v4, p1, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, v4, :cond_2

    .line 7837
    const-string v0, "HTCCamera"

    const-string v1, "onTakingPictureFailed() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7838
    const-string v1, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTakingPictureFailed() - Current handle : \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 7942
    :goto_2
    return-void

    .line 7831
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 7838
    :cond_1
    const-string v0, "null"

    goto :goto_1

    .line 7841
    :cond_2
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 7844
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7847
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7848
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->completeRecording(Lcom/htc/camera/CaptureHandle;)V

    .line 7851
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "onTakingPictureFailed() - isActivityPaused = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7852
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 7857
    :cond_4
    sget-object v4, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v4, v3

    move v5, v3

    .line 7876
    :goto_3
    if-nez v5, :cond_8

    .line 7877
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->restartPreview()Z

    move-result v0

    .line 7882
    :goto_4
    if-eqz v0, :cond_9

    .line 7884
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v6}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7885
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v6}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7892
    :goto_5
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CaptureFailedReason:[I

    iget-object v1, p1, Lcom/htc/camera/CaptureEventArgs;->failedReason:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    move-object v1, v2

    .line 7908
    :goto_6
    if-eqz v1, :cond_5

    .line 7910
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v6, Lcom/htc/camera/ak;

    invoke-virtual {v0, v6}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 7911
    if-eqz v0, :cond_a

    .line 7912
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 7918
    :cond_5
    :goto_7
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 7919
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    .line 7922
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_6

    .line 7924
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 7925
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;

    .line 7929
    :cond_6
    if-nez v5, :cond_b

    .line 7930
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    .line 7939
    :cond_7
    :goto_8
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 7941
    const-string v0, "HTCCamera"

    const-string v1, "onTakingPictureFailed() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    move v4, v3

    move v5, v1

    .line 7862
    goto :goto_3

    :pswitch_2
    move v4, v1

    move v5, v1

    .line 7867
    goto :goto_3

    :cond_8
    move v0, v3

    .line 7879
    goto :goto_4

    .line 7888
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v6}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 7895
    :pswitch_3
    const v0, 0x7f080177

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 7896
    goto :goto_6

    .line 7899
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->showStorageToast()V

    move-object v1, v2

    .line 7900
    goto :goto_6

    .line 7902
    :pswitch_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "low_internal_storage_view_text"

    const-string v6, "string"

    const-string v7, "android"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 7903
    goto :goto_6

    .line 7914
    :cond_a
    const-string v0, "HTCCamera"

    const-string v1, "onTakingPictureFailed() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 7931
    :cond_b
    if-eqz v4, :cond_7

    .line 7933
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->resetPreviewState()V

    .line 7934
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7935
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->completeRecording(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_8

    .line 7857
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 7892
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private onTakingPictureStateChanged(Lcom/htc/camera/TakingPictureState;)V
    .locals 2

    .prologue
    .line 7809
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    invoke-virtual {p1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7823
    :cond_0
    :goto_0
    return-void

    .line 7812
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7813
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    .line 7819
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    goto :goto_0

    .line 7809
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUnhandledException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 9102
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_0

    .line 9103
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 9104
    :cond_0
    return-void
.end method

.method private onVideoRecordingPaused()V
    .locals 3

    .prologue
    .line 7537
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7539
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBubbleToastManager:Lcom/htc/camera/u;

    if-nez v0, :cond_0

    .line 7540
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/u;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mBubbleToastManager:Lcom/htc/camera/u;

    .line 7542
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_1

    .line 7543
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBubbleToastManager:Lcom/htc/camera/u;

    const v1, 0x7f08040c

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->showBubbleToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPauseVideoBubbleToastHandle:Lcom/htc/camera/Handle;

    .line 7545
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    if-eqz v0, :cond_3

    .line 7547
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_2

    .line 7548
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 7550
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 7554
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->unblockCaptureUIForRecording()V

    .line 7556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 7557
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v0, :cond_4

    .line 7558
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->startAccelerometer()V

    .line 7559
    :cond_4
    return-void
.end method

.method private onVideoRecordingResumed()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 7563
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPauseVideoBubbleToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 7564
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPauseVideoBubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 7565
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPauseVideoBubbleToastHandle:Lcom/htc/camera/Handle;

    .line 7567
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7569
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    if-eqz v0, :cond_2

    .line 7571
    const-wide/16 v4, 0x3e8

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    mul-long/2addr v0, v4

    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v4}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 7572
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 7575
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    .line 7576
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->start()V

    .line 7580
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->unblockCaptureUIForRecording()V

    .line 7582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 7583
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->stopAccelerometer()V

    .line 7584
    return-void
.end method

.method private onZoomValueChanged(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 8149
    return-void
.end method

.method private performActionsAfterAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 8345
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8348
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    .line 8349
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8428
    :goto_0
    return-void

    .line 8352
    :cond_0
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_1

    .line 8353
    const-string v0, "HTCCamera"

    const-string v1, "Enter this state only when interrupt focus !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8354
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8361
    :cond_1
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    packed-switch v0, :pswitch_data_0

    .line 8418
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - unknown focus state !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8422
    :cond_2
    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "Finish Focus - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8423
    iput v3, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 8425
    sput-boolean v3, Lcom/htc/camera/HTCCamera;->bFocusFromPress:Z

    .line 8427
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8363
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - take focus end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8364
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 8365
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    goto :goto_1

    .line 8381
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_2

    .line 8382
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - take focus end, and then take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8383
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 8384
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    .line 8385
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - Freeze UI - take focus end, and then take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8386
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_1

    .line 8398
    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - record after focusing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8399
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 8400
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    .line 8401
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->triggerRecord()V

    goto :goto_1

    .line 8406
    :pswitch_3
    const-string v0, "HTCCamera"

    const-string v1, "performActionsAfterAutoFocus() - UnBlock Capture UI - take picture after focusing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8407
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 8408
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    .line 8410
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    goto :goto_1

    .line 8361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private performActionsOnPreviewSurfaceCreated()V
    .locals 2

    .prologue
    .line 7052
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 7083
    :goto_0
    return-void

    .line 7054
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mActionPerformedOnPreviewSurfaceCreated:Z

    .line 7056
    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7059
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7061
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 7063
    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - Schedule to initialize capture UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7064
    new-instance v0, Lcom/htc/camera/HTCCamera$45;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$45;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 7082
    :cond_1
    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7074
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "performActionsOnPreviewSurfaceCreated() - Activity is not landscape, initialize capture UI later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private printDataReadyPerformanceLog()V
    .locals 4

    .prologue
    .line 9072
    const/16 v0, 0x130

    const-string v1, "LAUNCH_TIME"

    const-string v2, "LAUNCH"

    const-string v3, "DATA_READY"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->printPerformanceLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9073
    return-void
.end method

.method private queryToggleStorage()V
    .locals 3

    .prologue
    .line 5425
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsStorageSlotLocked:Z

    if-eqz v0, :cond_1

    .line 5460
    :cond_0
    :goto_0
    return-void

    .line 5429
    :cond_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 5430
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5431
    const v0, 0x7f080374

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5436
    :goto_1
    new-instance v1, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080372

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800ed

    new-instance v2, Lcom/htc/camera/HTCCamera$33;

    invoke-direct {v2, p0}, Lcom/htc/camera/HTCCamera$33;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800ee

    new-instance v2, Lcom/htc/camera/HTCCamera$32;

    invoke-direct {v2, p0}, Lcom/htc/camera/HTCCamera$32;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    .line 5458
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-eqz v1, :cond_0

    .line 5459
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v1, v0}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 5433
    :cond_2
    const v0, 0x7f080373

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;TTEventArgs;)V"
        }
    .end annotation

    .prologue
    .line 9424
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 9425
    return-void
.end method

.method private resetPreviewState()V
    .locals 2

    .prologue
    .line 8867
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 8876
    :goto_0
    return-void

    .line 8871
    :pswitch_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPING:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 8873
    :pswitch_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPED:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 8867
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resumeBackgroundEncoding()V
    .locals 3

    .prologue
    .line 9091
    const-string v0, "HTCCamera"

    const-string v1, "resumeBackgroundEncoding()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9092
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.RESUME_BACKGROUND_ENCODING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9093
    const-string v1, "requested_from"

    const-string v2, "com.htc.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9094
    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 9095
    return-void
.end method

.method private saveAndFinish(Landroid/net/Uri;[B)V
    .locals 5

    .prologue
    .line 3149
    if-eqz p1, :cond_2

    .line 3151
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAndFinish() - contentUri = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    if-eqz p2, :cond_1

    .line 3154
    const/4 v1, 0x0

    .line 3156
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3158
    const-string v0, "HTCCamera"

    const-string v2, "saveAndFinish() file - Check directory path"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->createDirectories(Ljava/lang/String;)Z

    .line 3164
    :cond_0
    :try_start_0
    const-string v0, "HTCCamera"

    const-string v2, "saveAndFinish() - Opening file"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 3166
    const-string v0, "HTCCamera"

    const-string v2, "saveAndFinish() - Writing data"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 3168
    const-string v0, "HTCCamera"

    const-string v2, "saveAndFinish() - Writing completed"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3176
    const-string v0, "HTCCamera"

    const-string v2, "saveAndFinish() - Closing file"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 3178
    const-string v0, "HTCCamera"

    const-string v1, "saveAndFinish() - File closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    :goto_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 3191
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    .line 3192
    return-void

    .line 3170
    :catch_0
    move-exception v0

    .line 3172
    :try_start_1
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - Cannot save data to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3176
    const-string v0, "HTCCamera"

    const-string v2, "saveAndFinish() - Closing file"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 3178
    const-string v0, "HTCCamera"

    const-string v1, "saveAndFinish() - File closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3176
    :catchall_0
    move-exception v0

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 3178
    const-string v1, "HTCCamera"

    const-string v2, "saveAndFinish() - File closed"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 3182
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "saveAndFinish() - data = NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3185
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "saveAndFinish() - contentUri = NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final saveSDCardState()V
    .locals 3

    .prologue
    .line 6360
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_sdcard_state"

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/htc/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 6361
    return-void
.end method

.method private setMaxBrightness()V
    .locals 0

    .prologue
    .line 3203
    return-void
.end method

.method private setOldBrightness()V
    .locals 0

    .prologue
    .line 3214
    return-void
.end method

.method private setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 9416
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setupEventHandlers()V
    .locals 2

    .prologue
    .line 6807
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$41;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$41;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6817
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->storageEjectedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$42;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$42;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6827
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->storageMountedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$43;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$43;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6837
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->storageUnmountedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/HTCCamera$44;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$44;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 6845
    return-void
.end method

.method private showStorageToast()V
    .locals 3

    .prologue
    .line 8157
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8212
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 8159
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    sget-object v1, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    if-eq v0, v1, :cond_0

    .line 8163
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 8164
    if-nez v0, :cond_2

    .line 8166
    const-string v0, "HTCCamera"

    const-string v1, "showStorageToast() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8172
    :cond_2
    sget-object v2, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 8208
    :pswitch_1
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown storage state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8177
    :pswitch_2
    sget-object v1, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8178
    const v1, 0x7f080412

    .line 8211
    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 8183
    :pswitch_3
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8185
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v1, v2, :cond_3

    .line 8186
    const v1, 0x7f080159

    goto :goto_1

    .line 8188
    :cond_3
    const v1, 0x7f08015a

    goto :goto_1

    .line 8192
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v1, v2, :cond_5

    .line 8193
    const v1, 0x7f08015b

    goto :goto_1

    .line 8195
    :cond_5
    const v1, 0x7f08015c

    .line 8197
    goto :goto_1

    .line 8199
    :pswitch_4
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-nez v1, :cond_6

    .line 8200
    const v1, 0x7f080157

    goto :goto_1

    .line 8202
    :cond_6
    const v1, 0x7f080158

    .line 8203
    goto :goto_1

    .line 8205
    :pswitch_5
    const v1, 0x7f080156

    .line 8206
    goto :goto_1

    .line 8172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startAccelerometer()V
    .locals 3

    .prologue
    .line 5329
    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5332
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mCanGSensorEnabled:Z

    if-nez v0, :cond_0

    .line 5334
    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - CanGSensorEnabled = false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5351
    :goto_0
    return-void

    .line 5337
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAccelerometerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5339
    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - isAccelerometerStarted = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5344
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/htc/camera/ag;

    if-eqz v0, :cond_2

    .line 5345
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/htc/camera/ag;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    .line 5348
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAccelerometerStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5350
    const-string v0, "HTCCamera"

    const-string v1, "startAccelerometer() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5347
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private startPreview(ZLcom/htc/camera/CameraType;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8672
    const-string v0, "HTCCamera"

    const-string v1, "startPreview("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8675
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 8685
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8687
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Activity is pausing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 8731
    :goto_0
    return v0

    .line 8678
    :pswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Preview is already starting"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8679
    const-string v0, "startPreview()"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    move v0, v6

    .line 8680
    goto :goto_0

    .line 8682
    :pswitch_1
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Preview is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 8683
    goto :goto_0

    .line 8690
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8692
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 8693
    goto :goto_0

    .line 8695
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_2

    .line 8697
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Camera is deactivated"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 8698
    goto :goto_0

    .line 8700
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_3

    .line 8702
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 8703
    goto :goto_0

    .line 8705
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8707
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Preview resource is not ready"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8708
    const-string v0, "startPreview()"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    move v0, v6

    .line 8709
    goto :goto_0

    .line 8713
    :cond_4
    if-nez p2, :cond_7

    .line 8714
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 8717
    :goto_1
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v1, v2}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 8718
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    if-eq v1, v2, :cond_5

    .line 8720
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Stop preview while starting preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 8721
    goto/16 :goto_0

    .line 8723
    :cond_5
    iput v6, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 8724
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v2, "Starting preview"

    invoke-interface {v1, v2, v6}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    .line 8725
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8726
    if-eqz p1, :cond_6

    .line 8727
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->startPreviewDirectly()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    .line 8730
    :goto_2
    const-string v0, "HTCCamera"

    const-string v1, "startPreview() - Handle : "

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v7

    .line 8731
    goto/16 :goto_0

    .line 8729
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->startPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    goto :goto_2

    :cond_7
    move-object v0, p2

    goto :goto_1

    .line 8675
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stopAccelerometer()V
    .locals 3

    .prologue
    .line 5358
    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5361
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAccelerometerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5363
    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - isAccelerometerStarted = false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5376
    :goto_0
    return-void

    .line 5368
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/htc/camera/ag;

    if-eqz v0, :cond_1

    .line 5369
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSharedBackgroundWorker:Lcom/htc/camera/ag;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    .line 5372
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAccelerometerStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5373
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [F

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5375
    const-string v0, "HTCCamera"

    const-string v1, "stopAccelerometer() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5371
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStopAccelerometerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private stopPreview(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 8805
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8808
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 8811
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 8827
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPING:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 8828
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPING:Lcom/htc/camera/CameraPreviewState;

    if-eq v0, v1, :cond_0

    .line 8830
    const-string v0, "HTCCamera"

    const-string v1, "stopPreview() - Start preview while stopping preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8831
    if-nez p1, :cond_0

    .line 8859
    :goto_1
    return-void

    .line 8816
    :pswitch_1
    const-string v0, "HTCCamera"

    const-string v1, "stopPreview() - Stop preview while starting preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8819
    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v1, "stopPreview() - Preview is not started yet"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8822
    :pswitch_3
    const-string v0, "HTCCamera"

    const-string v1, "stopPreview() - Preview is slready stopping"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8834
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8835
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8838
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 8840
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->cancelStartingPreview()V

    .line 8841
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->stopPreview()V

    .line 8847
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 8849
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 8850
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    .line 8854
    :cond_1
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    .line 8855
    iput-object v3, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    .line 8858
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPED:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 8844
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "stopPreview() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8811
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private stopRecordingIndicator()V
    .locals 2

    .prologue
    .line 3786
    const-string v0, "HTCCamera"

    const-string v1, "stopRecordingIndicator()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3788
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_0

    .line 3789
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3790
    :cond_0
    return-void
.end method

.method private suspendBackgroundEncoding()V
    .locals 3

    .prologue
    .line 9080
    const-string v0, "HTCCamera"

    const-string v1, "suspendBackgroundEncoding()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9081
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.PAUSE_BACKGROUND_ENCODING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9082
    const-string v1, "requested_from"

    const-string v2, "com.htc.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9083
    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 9084
    return-void
.end method

.method private threadAccessCheck()V
    .locals 2

    .prologue
    .line 6156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 6157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6158
    :cond_0
    return-void
.end method

.method private unblockCaptureUIForRecording()V
    .locals 2

    .prologue
    .line 4031
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 4033
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 4034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    .line 4036
    :cond_0
    return-void
.end method

.method private unlock2A()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4274
    const-string v0, "HTCCamera"

    const-string v1, "unlock2A()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4275
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x277c

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 4278
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_0

    .line 4279
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->m_FocusLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->unlockAutoFocus(Lcom/htc/camera/Handle;)V

    .line 4280
    :cond_0
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->m_FocusLockHandle:Lcom/htc/camera/Handle;

    .line 4283
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 4284
    if-eqz v0, :cond_1

    .line 4286
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->m_AecLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->unlockAutoExposure(Lcom/htc/camera/Handle;)V

    .line 4288
    :cond_1
    iput-object v2, p0, Lcom/htc/camera/HTCCamera;->m_AecLockHandle:Lcom/htc/camera/Handle;

    .line 4290
    return-void
.end method

.method private updateNavigationBarState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9167
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-boolean v0, v0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    if-nez v0, :cond_0

    .line 9191
    :goto_0
    return-void

    .line 9169
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 9171
    const-string v0, "HTCCamera"

    const-string v1, "updateSystemBarState() - No capture UI, update system bar later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9176
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mShowNavigationBarHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 9177
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 9178
    if-eqz v0, :cond_4

    .line 9180
    and-int/lit8 v0, v2, -0x3

    .line 9181
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mNavigationBarStub:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 9182
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mNavigationBarStub:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9190
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 9176
    goto :goto_1

    .line 9186
    :cond_4
    or-int/lit8 v0, v2, 0x2

    .line 9187
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mNavigationBarStub:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 9188
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mNavigationBarStub:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateRecordingTime()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x320

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3e8

    .line 7741
    const-string v0, "HTCCamera"

    const-string v1, "updateRecordingTime() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7744
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    .line 7746
    const-string v0, "HTCCamera"

    const-string v1, "updateRecordingTime() - mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 7802
    :goto_0
    return-void

    .line 7749
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    if-eq v0, v1, :cond_1

    .line 7751
    const-string v0, "HTCCamera"

    const-string v1, "updateRecordingTime() - isRecording = false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7755
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    .line 7756
    div-long v2, v0, v8

    .line 7758
    iput-wide v8, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    .line 7759
    iget-wide v4, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    mul-long v6, v2, v8

    sub-long/2addr v0, v6

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    .line 7760
    iget-wide v0, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    cmp-long v0, v0, v12

    if-gez v0, :cond_6

    .line 7761
    iput-wide v12, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    .line 7768
    :cond_2
    :goto_1
    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 7770
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnBlock Capture UI - start recorder, unblock time = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7771
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 7772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    .line 7776
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7779
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 7782
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 7783
    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 7785
    :goto_2
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7786
    const-wide v0, 0x7fffffffffffffffL

    .line 7791
    :goto_3
    cmp-long v2, v2, v10

    if-eqz v2, :cond_4

    cmp-long v0, v0, v10

    if-lez v0, :cond_9

    .line 7793
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_5

    .line 7794
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 7796
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    .line 7801
    :goto_4
    const-string v0, "HTCCamera"

    const-string v1, "updateRecordingTime() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7762
    :cond_6
    iget-wide v0, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 7763
    iput-wide v8, p0, Lcom/htc/camera/HTCCamera;->mUpdateCountDuration:J

    goto/16 :goto_1

    .line 7783
    :cond_7
    sget-object v0, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    goto :goto_2

    .line 7788
    :cond_8
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    sub-long/2addr v0, v2

    goto :goto_3

    .line 7799
    :cond_9
    const-string v0, "HTCCamera"

    const-string v1, "updateRecordingTime() - Timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateSelfTimerInterval()V
    .locals 6

    .prologue
    .line 6789
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    .line 6792
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6793
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 6796
    :goto_0
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6797
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6799
    :cond_0
    return-void

    .line 6795
    :cond_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    goto :goto_0

    .line 6797
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateStatusBarState()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 9241
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 9243
    const-string v0, "HTCCamera"

    const-string v1, "updateStatusBarState() - No capture UI, update status bar later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9253
    :goto_0
    return-void

    .line 9248
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mShowStatusBarHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 9249
    :goto_1
    if-eqz v0, :cond_2

    .line 9250
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 9248
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 9252
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public RequestVideoQualityLevel()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 3268
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-nez v1, :cond_1

    .line 3269
    const-string v1, "HTCCamera"

    const-string v2, "isRequestHighQualityVideo() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    :cond_0
    :goto_0
    return v0

    .line 3273
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    iget-object v1, v1, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    sget-object v2, Lcom/htc/camera/IntentManager$RequestName;->Notes:Lcom/htc/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/htc/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    iget-object v1, v1, Lcom/htc/camera/IntentManager;->mRequestName:Lcom/htc/camera/IntentManager$RequestName;

    sget-object v2, Lcom/htc/camera/IntentManager$RequestName;->Unknown_Service:Lcom/htc/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/htc/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3276
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->IsHighVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3277
    const/4 v0, 0x1

    goto :goto_0

    .line 3279
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public activate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5116
    const-string v0, "HTCCamera"

    const-string v2, "activate!!!!"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5118
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "activate - mCameraThread = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5185
    :goto_0
    return-void

    .line 5122
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-nez v0, :cond_2

    .line 5123
    const-string v0, "HTCCamera"

    const-string v1, "activate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5127
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_3

    .line 5128
    const-string v0, "HTCCamera"

    const-string v1, "activate in mIdle == false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5132
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5134
    const-string v0, "HTCCamera"

    const-string v1, "activate() - Activity is pausing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5137
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5139
    const-string v0, "HTCCamera"

    const-string v1, "activate() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5143
    :cond_5
    iput-boolean v1, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    .line 5144
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 5145
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5147
    :cond_6
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 5151
    const-string v0, "HTCCamera"

    const-string v2, "activate() - Block Capture UI - activate!!!!"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5153
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraThread;->setFirstFrameCacheState(Z)V

    .line 5155
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5157
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5159
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v2, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 5162
    const/4 v0, 0x1

    .line 5172
    :goto_1
    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    if-eqz v0, :cond_7

    .line 5174
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->printDataReadyPerformanceLog()V

    .line 5175
    iput-boolean v1, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    .line 5177
    :cond_7
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 5178
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->setMaxBrightness()V

    .line 5181
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateNavigationBarState()V

    .line 5184
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_ACTIVATED:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    goto/16 :goto_0

    .line 5165
    :cond_8
    const-string v0, "HTCCamera"

    const-string v2, "activate() - Preview resources are not ready yet, start preview later"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 5168
    :cond_9
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate() - Current taking picture state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recording state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Start preview later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 5171
    :cond_a
    const-string v0, "HTCCamera"

    const-string v2, "activate() - Camera thread is not running, start preview later"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method public addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 9355
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 9356
    return-void
.end method

.method public addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 9373
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 9374
    return-void
.end method

.method public final autoFocus(Lcom/htc/camera/AutoFocusMode;Landroid/graphics/PointF;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4796
    if-nez p2, :cond_0

    .line 4798
    const-string v1, "focusPoint"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4803
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/htc/camera/HTCCamera;->autoFocus(Lcom/htc/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0
.end method

.method public final autoFocus(Lcom/htc/camera/AutoFocusMode;[Landroid/graphics/PointF;)Z
    .locals 1

    .prologue
    .line 4807
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/HTCCamera;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final autoFocus(Lcom/htc/camera/AutoFocusMode;[Landroid/graphics/RectF;[Landroid/graphics/RectF;)Z
    .locals 1

    .prologue
    .line 4819
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<*>;",
            "Lcom/htc/camera/property/Property",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 8545
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 8548
    if-nez p1, :cond_0

    .line 8550
    const-string v0, "source"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 8551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 8553
    :cond_0
    if-nez p2, :cond_1

    .line 8555
    const-string v0, "target"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 8556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 8558
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/htc/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8560
    const-string v0, "HTCCamera"

    const-string v1, "bindProperty() - Cannot bind from HTCCamera\'s property"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 8563
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/htc/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8565
    const-string v0, "HTCCamera"

    const-string v1, "bindProperty() - Can only bind to HTCCamera\'s property"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 8570
    :cond_3
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8571
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    .line 8572
    return-void
.end method

.method public broadcastVideoRecordingStateIntent(Lcom/htc/camera/RecordingState;)V
    .locals 3

    .prologue
    .line 9324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.camera.intent.action.VIDEO_RECORDING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9325
    const-string v1, "RecordingState"

    invoke-virtual {p1}, Lcom/htc/camera/RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9327
    return-void
.end method

.method public canFaceFocus()Z
    .locals 2

    .prologue
    .line 4620
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4622
    :cond_0
    const/4 v0, 0x0

    .line 4624
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canSensorFocus()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4597
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_0

    move v0, v1

    .line 4616
    :goto_0
    return v0

    .line 4600
    :cond_0
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    if-lez v0, :cond_1

    move v0, v1

    .line 4601
    goto :goto_0

    .line 4607
    :cond_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_AUTO_FOCUS_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 4608
    goto :goto_0

    .line 4610
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 4611
    goto :goto_0

    .line 4613
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mEnableSensorFocus:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsTouchScreen:Z

    if-ne v0, v2, :cond_5

    :cond_4
    move v0, v1

    .line 4614
    goto :goto_0

    :cond_5
    move v0, v2

    .line 4616
    goto :goto_0
.end method

.method public canTriggerFocus()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4567
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4592
    :cond_0
    :goto_0
    return v3

    .line 4576
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    .line 4578
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v4}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsSipExist:Z

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsUIReady:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    if-eq v0, v4, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 4592
    goto :goto_0

    :cond_5
    move v1, v3

    .line 4576
    goto :goto_1
.end method

.method public cancelAutoFocus()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4657
    const-string v2, "HTCCamera"

    const-string v3, "cancelAutoFocus() - start"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4659
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v3, 0x283c

    invoke-static {v2, v3}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 4660
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v3, 0x277c

    invoke-static {v2, v3}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 4662
    iget v2, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-nez v2, :cond_0

    .line 4664
    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() - No focusing"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4695
    :goto_0
    return v0

    .line 4668
    :cond_0
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4669
    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - DisplayDevice.canCancelFocus() = false"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4670
    goto :goto_0

    .line 4673
    :cond_1
    iget v2, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v0, :cond_2

    .line 4674
    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - mFocusingState != FOCUSING_NO_ACTION"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4675
    goto :goto_0

    .line 4678
    :cond_2
    sput-boolean v1, Lcom/htc/camera/HTCCamera;->bFocusFromPress:Z

    .line 4681
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v2, :cond_3

    .line 4682
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/htc/camera/IAutoFocusController;->cancelAutoFocus(Lcom/htc/camera/Handle;)V

    .line 4683
    :cond_3
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mCurrentFocusHandle:Lcom/htc/camera/Handle;

    .line 4685
    iput v1, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 4686
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4687
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v1, :cond_4

    .line 4689
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v1, v2}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 4690
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusingBlockHandle:Lcom/htc/camera/Handle;

    .line 4693
    :cond_4
    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() - end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final cancelPendingCapture()V
    .locals 1

    .prologue
    .line 5586
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 5589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 5590
    return-void
.end method

.method public final changeZoom(I)V
    .locals 3

    .prologue
    .line 6060
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 6061
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isZoomLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6063
    const-string v0, "HTCCamera"

    const-string v1, "changeZoom() - Zoom is locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6090
    :goto_0
    return-void

    .line 6066
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_1

    .line 6068
    const-string v0, "HTCCamera"

    const-string v1, "changeZoom() - There is no camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6073
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Range;

    .line 6074
    if-eqz v0, :cond_4

    .line 6076
    iget-object v1, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 6077
    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6086
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6089
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraThread;->changeZoom(I)V

    goto :goto_0

    .line 6078
    :cond_3
    iget-object v1, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 6079
    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    .line 6082
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "changeZoom() - zoomRange is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkByPassState()V
    .locals 4

    .prologue
    const/16 v3, 0x28a1

    .line 1378
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mForceHideKeyguard:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->needToAddShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1380
    const-string v0, "HTCCamera"

    const-string v1, "add FLAG_SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mForceHideKeyguard:Z

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera$MainHandler;->removeMessages(I)V

    .line 1385
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/camera/HTCCamera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1386
    return-void
.end method

.method public final closeActionScreen()V
    .locals 2

    .prologue
    .line 5724
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 5727
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_0

    .line 5729
    const-string v0, "HTCCamera"

    const-string v1, "No action screen to close"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5740
    :goto_0
    return-void

    .line 5734
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/actionscreen/ActionScreen;->close(Z)V

    goto :goto_0

    .line 5736
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_2

    .line 5737
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5739
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "Cannot close action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeCaptureUI()V
    .locals 3

    .prologue
    .line 3717
    const-string v0, "HTCCamera"

    const-string v1, "closeCaptureUI()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3720
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3722
    :cond_0
    return-void
.end method

.method public final closeSelfTimer()V
    .locals 3

    .prologue
    .line 3748
    const-string v0, "HTCCamera"

    const-string v1, "closeSelfTimer() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3752
    const-string v0, "HTCCamera"

    const-string v1, "Self timer is not started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    :goto_0
    return-void

    .line 3755
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ICountDownTimer;->stopCountDown(Lcom/htc/camera/Handle;)V

    .line 3759
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_1

    .line 3761
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3762
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3767
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    .line 3769
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 3772
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForSelfTimer:Z

    if-eqz v0, :cond_2

    .line 3774
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 3775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForSelfTimer:Z

    .line 3778
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - close self timer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 3780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    .line 3782
    const-string v0, "HTCCamera"

    const-string v1, "closeSelfTimer() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3764
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final completeRecording(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 5605
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/HTCCamera;->completeCapture(Lcom/htc/camera/CaptureHandle;J)V

    .line 5606
    return-void
.end method

.method public final completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 5597
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/HTCCamera;->completeCapture(Lcom/htc/camera/CaptureHandle;J)V

    .line 5598
    return-void
.end method

.method public deactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5188
    const-string v0, "HTCCamera"

    const-string v1, "deactivate!!!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5190
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mCameraThread = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5285
    :goto_0
    return-void

    .line 5194
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-nez v0, :cond_2

    .line 5195
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5199
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-ne v0, v4, :cond_3

    .line 5200
    const-string v0, "HTCCamera"

    const-string v1, "deactivate in mIdle = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5205
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5207
    const-string v0, "HTCCamera"

    const-string v1, "deactivate() - Activity is pausing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5210
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5212
    const-string v0, "HTCCamera"

    const-string v1, "deactivate() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5216
    :cond_5
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    .line 5218
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    .line 5221
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeActionScreen()V

    .line 5224
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 5226
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5227
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->triggerRecord()V

    .line 5229
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-nez v0, :cond_7

    .line 5230
    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5231
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    .line 5232
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    new-instance v1, Lcom/htc/camera/HTCCamera$31;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$31;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5239
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const v1, 0x7f0e01eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensaveTextContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 5240
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensaveTextContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0e01ec

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    .line 5242
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-boolean v0, v0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    if-eqz v0, :cond_7

    .line 5244
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5245
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensaveTextContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    invoke-static {v0, v3, v3, v1, v3}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    .line 5251
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_9

    .line 5252
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v1, 0x7f08035c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5258
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mScreensaveTextContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 5259
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5261
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5264
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5266
    invoke-direct {p0, v4}, Lcom/htc/camera/HTCCamera;->stopPreview(Z)V

    .line 5267
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5268
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5269
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->cancelOpeningCamera()V

    .line 5270
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 5272
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->setOldBrightness()V

    .line 5275
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->leaveQuickLaunchState()V

    .line 5278
    new-instance v0, Lcom/htc/camera/SessionHandle;

    invoke-direct {v0}, Lcom/htc/camera/SessionHandle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSessionHandle:Lcom/htc/camera/SessionHandle;

    .line 5281
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateNavigationBarState()V

    .line 5284
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    goto/16 :goto_0

    .line 5247
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensaveTextContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    invoke-static {v0, v3, v3, v3, v1}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    goto :goto_1

    .line 5254
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v1, 0x7f08035b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public final disableActionScreen()V
    .locals 1

    .prologue
    .line 5569
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreenDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreenDisableCounter:I

    .line 5570
    return-void
.end method

.method public final disableCapture(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    .line 9262
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 9264
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableCapture() - Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9267
    new-instance v1, Lcom/htc/camera/SessionHandle;

    invoke-direct {v1, p1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 9268
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9269
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCapture() - Handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handle count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mCaptureDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9272
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9273
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9274
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeSelfTimer()V

    .line 9275
    :cond_0
    return-object v1
.end method

.method public final disableFastShotToShot(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 8467
    new-instance v0, Lcom/htc/camera/Handle;

    invoke-direct {v0, p1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 8468
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mDisableFastShotToShotHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8470
    const-string v1, "HTCCamera"

    const-string v2, "disableFastShotToShot() - Add disable handle: "

    invoke-static {v1, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8472
    return-object v0
.end method

.method public final disableSelfTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6766
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 6773
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 6776
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-ne v0, v2, :cond_0

    .line 6778
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerDisabled:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6779
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/Duration;->ZERO:Lcom/htc/camera/Duration;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6780
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 6782
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 5289
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 5292
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 5297
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 5300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5301
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsTouchScreen:Z

    .line 5305
    :goto_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_TOUCH_ON_SCREEN:Lcom/htc/camera/base/PropertyKey;

    iget-boolean v1, p0, Lcom/htc/camera/HTCCamera;->mIsTouchScreen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5308
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->touchPreviewEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/input/MotionEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/input/MotionEventArgs;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 5311
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsTouchingNavigationBarStub:Z

    .line 5314
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 5317
    if-nez v0, :cond_1

    .line 5318
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v2, 0x2904

    const-wide/16 v3, 0x12c

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IJ)V

    .line 5321
    :cond_1
    return v1

    .line 5303
    :cond_2
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIsTouchScreen:Z

    goto :goto_0
.end method

.method public doOnPause()V
    .locals 3

    .prologue
    .line 2601
    const-string v0, "HTCCamera"

    const-string v1, "doOnPause() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 2604
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->stopAccelerometer()V

    .line 2606
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2607
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeSelfTimer()V

    .line 2609
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "OnPause - hide UI, set mMainLayout invisible"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2616
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2617
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2618
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mControlIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-static {v1, v0}, Lcom/htc/camera/n;->a(Landroid/content/ContentResolver;Lcom/htc/camera/io/StorageSlot;)V

    .line 2626
    const-string v0, "HTCCamera"

    const-string v1, "doOnPause() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    return-void

    .line 2620
    :catch_0
    move-exception v0

    .line 2621
    const-string v1, "HTCCamera"

    const-string v2, "unregisterReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final enableActionScreen()V
    .locals 2

    .prologue
    .line 5552
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-nez v0, :cond_0

    .line 5554
    const-string v0, "HTCCamera"

    const-string v1, "Try to enable action screen, but counter is 0"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5555
    const-string v0, "enableActionScreen()"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 5561
    :goto_0
    return-void

    .line 5560
    :cond_0
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreenDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreenDisableCounter:I

    goto :goto_0
.end method

.method public final enableCapture(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 9284
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 9286
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCapture() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9289
    if-nez p1, :cond_1

    .line 9291
    const-string v0, "HTCCamera"

    const-string v1, "enableCapture() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9304
    :cond_0
    :goto_0
    return-void

    .line 9294
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9296
    const-string v0, "HTCCamera"

    const-string v1, "enableCapture() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9301
    :cond_2
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCapture() - Handle count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCaptureDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9302
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 9303
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final enableSelfTimer()V
    .locals 3

    .prologue
    .line 6743
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 6746
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_1

    .line 6758
    :cond_0
    :goto_0
    return-void

    .line 6750
    :cond_1
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mSelfTimerDisableCounter:I

    .line 6753
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    .line 6755
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerDisabled:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6756
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateSelfTimerInterval()V

    goto :goto_0
.end method

.method public final enableTouchFocus(Z)V
    .locals 2

    .prologue
    .line 4763
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    .line 4764
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4767
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    if-ne v0, v1, :cond_1

    .line 4769
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v0, 0x2

    .line 4770
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    .line 4777
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/HTCCamera;->takeFocus(II)V

    .line 4779
    :cond_0
    return-void

    .line 4774
    :cond_1
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v0, 0x2

    .line 4775
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public final getCameraThread()Lcom/htc/camera/CameraThread;
    .locals 1

    .prologue
    .line 6165
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    return-object v0
.end method

.method public final getCaptureUiContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 8966
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUiContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/htc/camera/component/ComponentFactory;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getComponentFactory()Lcom/htc/camera/component/UIComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/htc/camera/component/UIComponentFactory;
    .locals 1

    .prologue
    .line 6173
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentFactory:Lcom/htc/camera/component/UIComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/htc/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/htc/camera/component/UIComponentManager;
    .locals 1

    .prologue
    .line 6181
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    return-object v0
.end method

.method public getFocusingState()I
    .locals 1

    .prologue
    .line 4628
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    return v0
.end method

.method public final getFullScreenCaptureUiContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 8970
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mFullScreenCaptureUiContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    return-object v0
.end method

.method public final getMainThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getMmsMaximumSizeFromRequester()J
    .locals 2

    .prologue
    .line 6038
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->getMMS_MaximumSize()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getOnCreateProfTimer()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 9311
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnCreateProfTimer:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method public final getOnPreviewSurfaceCreatedProfTimer()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 9315
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnPreviewSurfaceCreatedProfTimer:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method public final getPreviewResourceLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9334
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v0, :cond_0

    .line 9335
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IViewfinder;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object p0

    .line 9336
    :cond_0
    return-object p0
.end method

.method public final getPreviewSurfaceHitRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 7433
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v0, :cond_0

    .line 7434
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 7435
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 9383
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 9384
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v1, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 9385
    :goto_0
    return-object v0

    .line 9384
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 9385
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1}, Lcom/htc/camera/base/BaseObjectProxy;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRequestedDurationLimit()Lcom/htc/camera/Duration;
    .locals 1

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->getDurationLimit()Lcom/htc/camera/Duration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 6028
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStartMode()Lcom/htc/camera/CameraStartMode;
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    return-object v0
.end method

.method public final getThreadMonitor()Lcom/htc/camera/debug/ThreadMonitor;
    .locals 1

    .prologue
    .line 8219
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    return-object v0
.end method

.method public getVideoMaximumSizeFromRequester()J
    .locals 2

    .prologue
    .line 6033
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->getVideoMaximum_Size()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleSensorFocus(Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 4703
    const-string v0, "HTCCamera"

    const-string v3, "handleSensorFocus() - start"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4705
    if-eqz p1, :cond_1

    .line 4707
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-nez v0, :cond_0

    .line 4709
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v3, Lcom/htc/camera/IObjectTracker;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IObjectTracker;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    .line 4712
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 4714
    const-string v0, "HTCCamera"

    const-string v3, "handleSensorFocus() - there is face on screen. return."

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4715
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    invoke-virtual {v0, v2}, Lcom/htc/camera/IObjectTracker;->focusOnObject(Lcom/htc/camera/ObjectTrackingInfo;)Z

    move v0, v1

    .line 4731
    :goto_0
    return v0

    .line 4720
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectControlUI;->effectCenter:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 4721
    :goto_1
    if-nez v0, :cond_2

    .line 4722
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4725
    :cond_2
    sget-object v2, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {p0, v2, v0}, Lcom/htc/camera/HTCCamera;->autoFocus(Lcom/htc/camera/AutoFocusMode;Landroid/graphics/PointF;)Z

    move-result v6

    .line 4726
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 4727
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/htc/camera/ui/IViewfinder;->convertFromRelativePreviewPosition(FFLandroid/graphics/Point;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4728
    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus("

    iget v2, v4, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ","

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") - end"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    move v0, v6

    .line 4731
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 4720
    goto :goto_1

    .line 4730
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "handleSensorFocus() - Fail to map to screen position"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/16 v5, 0x277c

    const/4 v4, 0x2

    const/16 v1, 0x283c

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 4324
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4327
    iput-boolean v7, p0, Lcom/htc/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 4328
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 4329
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    .line 4330
    const-string v0, "HTCCamera"

    const-string v2, "UnBlock Capture UI - touch down and cancel focus"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4333
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4335
    const-string v0, "HTCCamera"

    const-string v2, "onTouchEvent - UI Block !!!"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 4337
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-static {v0, v5}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 4338
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 4534
    :cond_1
    :goto_0
    return v7

    .line 4343
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsSipExist:Z

    if-ne v0, v7, :cond_3

    .line 4344
    const-string v0, "HTCCamera"

    const-string v1, "onTouchEvent - SIP is shown, UI Block !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4350
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v7, :cond_7

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4352
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4354
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_7

    .line 4356
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4358
    const-string v0, "HTCCamera"

    const-string v2, "Remove MSG_TOUCH_FOCUS"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 4362
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4364
    const-string v0, "HTCCamera"

    const-string v2, "set mInitSpan to 0 "

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4365
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mInitSpan:F

    .line 4366
    iput v3, p0, Lcom/htc/camera/HTCCamera;->mBaseZoom:I

    .line 4368
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4384
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4534
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 4386
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->isTouchRegionCanTriggerTouchFocus(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4387
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() - touch upon menubar, skip touch-focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4390
    :cond_9
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mCloseTouchEvent:Z

    .line 4392
    const-string v0, "HTCCamera"

    const-string v2, "handleTouchEvent() : ACTION_DOWN"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    const-string v0, "HTCCamera"

    const-string v2, "handleTouchEvent() : ACTION_DOWN - send MSG_TOUCH_FOCUS"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4399
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSwitchCameraSlidingUI:Lcom/htc/camera/ai;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSwitchCameraSlidingUI:Lcom/htc/camera/ai;

    invoke-virtual {v0}, Lcom/htc/camera/ai;->isTouchOnEdge()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v2, 0x320

    .line 4400
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4401
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    int-to-long v5, v2

    invoke-static/range {v0 .. v6}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 4410
    :cond_a
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->isTapCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4414
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4416
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - isAutoFocusing() is false."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4399
    :cond_b
    const/16 v2, 0x78

    goto :goto_2

    .line 4422
    :cond_c
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    if-eqz v0, :cond_d

    .line 4424
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - m_NeedTapCapture is already set to true."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4428
    :cond_d
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - set m_NeedTapCapture to true."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4429
    iput-boolean v7, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    .line 4430
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    .line 4436
    :cond_e
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->unlock2A()V

    goto/16 :goto_1

    .line 4442
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v0, v7, :cond_8

    .line 4444
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    if-eqz v0, :cond_8

    .line 4446
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/htc/camera/ar;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    .line 4447
    sget-wide v4, Lcom/htc/camera/HTCCamera;->SCREEN_DIAGONAL_LENGTH:D

    div-double/2addr v0, v4

    .line 4448
    const-wide v4, 0x3fb1eb851eb851ecL    # 0.07

    cmpg-double v0, v0, v4

    if-gez v0, :cond_f

    move v3, v7

    :cond_f
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    goto/16 :goto_1

    .line 4477
    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v2, "handleTouchEvent() : ACTION_UP"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4479
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v0, v7, :cond_8

    .line 4482
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-static {v0, v5}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 4485
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4487
    const-string v0, "HTCCamera"

    const-string v2, "handleTouchEvent() : ACTION_UP - There is pending touch focus, trigger it now"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4488
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 4489
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v0, :cond_14

    .line 4490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->takeFocus(II)V

    .line 4502
    :cond_10
    :goto_3
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->isTapCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4506
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsPinchZoomed:Z

    if-nez v0, :cond_15

    .line 4508
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4511
    :cond_11
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_UP - m_NeedTapCapture is true || isSelfTimerStarted, take picture."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4512
    const-string v0, "Tap Capture"

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    .line 4523
    :cond_12
    :goto_4
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_UP - set m_NeedTapCapture to false."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4524
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    .line 4525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->m_TouchCaptureFingerDownPoint:Landroid/graphics/PointF;

    .line 4529
    :cond_13
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsPinchZoomed:Z

    goto/16 :goto_1

    .line 4493
    :cond_14
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchEvent() : ACTION_DOWN - Will not take focus due to Touch Focus is disabled."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4520
    :cond_15
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEvent() : ACTION_UP - ,isPinchZoomed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIsPinchZoomed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchFocus(II)Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5046
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchFocus() - X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5048
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5050
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchFocus() - Ignore touch focus for no AF sensor"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 5108
    :goto_0
    return v0

    .line 5055
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_1

    .line 5057
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_FOCUS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_EXPOSURE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5061
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchFocus() - Ignore touch focus for manual focus and exposure"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 5062
    goto :goto_0

    .line 5067
    :cond_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/htc/camera/HTCCamera;->screenPointToNormalizedPoint(IIZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 5068
    if-nez v1, :cond_2

    .line 5070
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchFocus() - touch point not in mSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 5071
    goto :goto_0

    .line 5074
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v6

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, v0

    .line 5077
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5082
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->detectedObjects:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5084
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    :goto_2
    if-ltz v6, :cond_7

    .line 5086
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ObjectTrackingInfo;

    .line 5087
    if-eqz v1, :cond_4

    iget-object v7, v1, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    sget-object v8, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    if-ne v7, v8, :cond_4

    iget-object v7, v1, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5093
    :goto_3
    if-eqz v1, :cond_6

    .line 5095
    const-string v0, "HTCCamera"

    const-string v5, "handleTouchFocus() - Touch on face, use face focus"

    invoke-static {v0, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5096
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mObjectTracker:Lcom/htc/camera/IObjectTracker;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IObjectTracker;->focusOnObject(Lcom/htc/camera/ObjectTrackingInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5098
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mIsTouchFaceFocus:Z

    move v0, v4

    .line 5099
    goto/16 :goto_0

    :cond_3
    move-object v2, v1

    .line 5074
    goto :goto_1

    .line 5084
    :cond_4
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    goto :goto_2

    .line 5101
    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "handleTouchFocus() - Fail to trigger face focus, do touch focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    :cond_6
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsTouchFaceFocus:Z

    .line 5106
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mLastTouchFocusPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 5108
    sget-object v0, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/HTCCamera;->autoFocus(Lcom/htc/camera/AutoFocusMode;Landroid/graphics/PointF;)Z

    move-result v0

    goto/16 :goto_0

    :cond_7
    move-object v1, v5

    goto :goto_3
.end method

.method public hasVideoQuality()Z
    .locals 1

    .prologue
    .line 6043
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->hasVideoQuality()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hideNavigationBar(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 9141
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 9144
    if-nez p1, :cond_0

    .line 9146
    const-string v0, "HTCCamera"

    const-string v1, "hideSystemBar() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9159
    :goto_0
    return-void

    .line 9149
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mShowNavigationBarHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9151
    const-string v0, "HTCCamera"

    const-string v1, "hideSystemBar() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9156
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "hideSystemBar() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9157
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateNavigationBarState()V

    .line 9158
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x2904

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public final hideStatusBar(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 9216
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 9219
    if-nez p1, :cond_0

    .line 9221
    const-string v0, "HTCCamera"

    const-string v1, "hideStatusBar() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9233
    :goto_0
    return-void

    .line 9224
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mShowStatusBarHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9226
    const-string v0, "HTCCamera"

    const-string v1, "hideStatusBar() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9231
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "hideStatusBar() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9232
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateStatusBarState()V

    goto :goto_0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 9008
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final invokeAsync(Ljava/lang/Runnable;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9012
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v2, :cond_3

    .line 9014
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v3, 0x27d8

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 9015
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_1

    .line 9017
    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-virtual {v3, v2}, Lcom/htc/camera/HTCCamera$MainHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9029
    :cond_0
    :goto_0
    return v0

    .line 9020
    :cond_1
    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-virtual {v3, v2, p2, p3}, Lcom/htc/camera/HTCCamera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9022
    :cond_2
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 9023
    const-string v0, "HTCCamera"

    const-string v2, "invokeAsync() - Fail to post to UI thread handler"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 9024
    goto :goto_0

    .line 9028
    :cond_3
    const-string v0, "HTCCamera"

    const-string v2, "invokeAsync() - No UI thread handler"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 9029
    goto :goto_0
.end method

.method public final isActionScreenEnabled()Z
    .locals 1

    .prologue
    .line 5577
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionScreenOpen()Z
    .locals 2

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/UIState;

    .line 3240
    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCaptureTask()Z
    .locals 1

    .prologue
    .line 3221
    sget-boolean v0, Lcom/htc/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isAutoFocusing()Z
    .locals 1

    .prologue
    .line 5041
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlockPowerWarning()Z
    .locals 1

    .prologue
    .line 6720
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mBlockPowerWarning:Z

    return v0
.end method

.method public final isFastShotToShotMode()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8491
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    .line 8535
    :cond_0
    :goto_0
    return v2

    .line 8495
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8499
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/sina/GifModeScene;

    if-eqz v0, :cond_2

    move v2, v1

    .line 8500
    goto :goto_0

    .line 8503
    :cond_2
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    .line 8506
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8509
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8535
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mDisableFastShotToShotHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final isIdle()Z
    .locals 1

    .prologue
    .line 5533
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method public final isIdleOrPaused()Z
    .locals 1

    .prologue
    .line 5541
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPowerWarning()Z
    .locals 1

    .prologue
    .line 6729
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsPowerWarning:Z

    return v0
.end method

.method public final isPreviewResourceReady()Z
    .locals 2

    .prologue
    .line 9344
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v0, :cond_0

    .line 9345
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 9346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecordingFromPhotoMode()Z
    .locals 1

    .prologue
    .line 8979
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    return v0
.end method

.method public final isServiceMode()Z
    .locals 1

    .prologue
    .line 6020
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->isServiceMode:Z

    return v0
.end method

.method public final isSlowMotionMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5467
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 5468
    :goto_0
    if-nez v0, :cond_1

    .line 5471
    :goto_1
    return v1

    .line 5467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5471
    :cond_1
    instance-of v0, v0, Lcom/htc/camera/effect/SlowMotionScene;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->isServiceMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final isStorageSlotLocked()Z
    .locals 1

    .prologue
    .line 6051
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsStorageSlotLocked:Z

    return v0
.end method

.method public final lockZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6097
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6100
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 6105
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mZoomLockCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mZoomLockCounter:I

    .line 6106
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mZoomLockCounter:I

    if-le v0, v2, :cond_0

    .line 6120
    :goto_0
    return-void

    .line 6110
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 6111
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->resetZoom(Z)V

    .line 6116
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isZoomLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6117
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6119
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6113
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - There is no camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6117
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2
.end method

.method public final needsActionScreen()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5486
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5501
    :cond_0
    :goto_0
    return v2

    .line 5489
    :cond_1
    sget-boolean v0, Lcom/htc/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v0, :cond_0

    .line 5492
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreenDisableCounter:I

    if-lez v0, :cond_2

    move v2, v3

    .line 5493
    goto :goto_0

    .line 5495
    :cond_2
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 5496
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->frontReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 5501
    :goto_1
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    .line 5496
    :cond_3
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->mainReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    goto :goto_1

    :cond_4
    move v0, v3

    .line 5501
    goto :goto_2
.end method

.method public final notifyCameraThreadBlocked(Lcom/htc/camera/CameraThreadBlockReason;)V
    .locals 3

    .prologue
    .line 9038
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraThreadBlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9040
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 9041
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera;->onCameraThreadBlocked(Lcom/htc/camera/CameraThreadBlockReason;)V

    .line 9053
    :cond_0
    :goto_0
    return-void

    .line 9042
    :cond_1
    new-instance v0, Lcom/htc/camera/HTCCamera$47;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/HTCCamera$47;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThreadBlockReason;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9051
    const-string v0, "HTCCamera"

    const-string v1, "notifyCameraThreadBlocked() - Cannot notify UI thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final notifyPopupBubbleClosed()V
    .locals 3

    .prologue
    .line 8884
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 8887
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mPopupBubbleCount:I

    if-nez v0, :cond_1

    .line 8889
    const-string v0, "HTCCamera"

    const-string v1, "notifyPopupBubbleClosed() - Counter is 0"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8890
    const-string v0, "notifyPopupBubbleClosed()"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 8898
    :cond_0
    :goto_0
    return-void

    .line 8895
    :cond_1
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mPopupBubbleCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mPopupBubbleCount:I

    .line 8896
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mPopupBubbleCount:I

    if-nez v0, :cond_0

    .line 8897
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final notifyPopupBubbleOpened()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8902
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 8907
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mPopupBubbleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mPopupBubbleCount:I

    .line 8908
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mPopupBubbleCount:I

    if-ne v0, v2, :cond_0

    .line 8909
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8910
    :cond_0
    return-void
.end method

.method public final notifyProcessingTakenPictures()V
    .locals 3

    .prologue
    .line 8065
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 8066
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    if-eq v0, v1, :cond_0

    .line 8068
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProcessingTakenPictures() - current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8074
    :goto_0
    return-void

    .line 8073
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Processing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2834
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 2836
    const-string v0, "HTCCamera"

    const-string v1, "onActivityResult: requestCode = AlbumGifStarter.ALBUM_REQUEST_CODE"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    invoke-static {p0}, Lcom/htc/camera/sina/AlbumGifStarter;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/AlbumGifStarter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/camera/sina/AlbumGifStarter;->handleOnActivityResult(IILandroid/content/Intent;)V

    .line 2859
    :cond_0
    :goto_0
    return-void

    .line 2840
    :cond_1
    if-ne p2, v3, :cond_0

    .line 2843
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$Global$REQUEST_CODE:[I

    invoke-static {}, Lcom/htc/camera/Global$REQUEST_CODE;->values()[Lcom/htc/camera/Global$REQUEST_CODE;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/htc/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2856
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Unsupported REQUEST_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/camera/Global$REQUEST_CODE;->values()[Lcom/htc/camera/Global$REQUEST_CODE;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2845
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    .line 2850
    :pswitch_1
    invoke-virtual {p0, v3, p3}, Lcom/htc/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 2851
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    goto :goto_0

    .line 2843
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 7092
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7093
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 7096
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CONFIGURATION_ORIENTATION:Lcom/htc/camera/base/PropertyKey;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 7099
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsCaptureUiInitialized:Z

    if-nez v0, :cond_0

    .line 7101
    const-string v0, "HTCCamera"

    const-string v1, "onConfigurationChanged() - Activity has been changed to landscape, schedule to initialize capture UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 7102
    new-instance v0, Lcom/htc/camera/HTCCamera$46;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$46;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 7111
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1052
    const-string v0, "[ANALYTIC_com.htc.camera]"

    const-string v1, "[press_widget]launch"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v0, "HTCCamera"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v0, "HTCCamera.OnCreate"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnCreateProfTimer:Lcom/htc/camera/Handle;

    .line 1060
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 1061
    invoke-virtual {v0, p0}, Lcom/htc/camera/CameraApplication;->notifyInstanceCreated(Lcom/htc/camera/HTCCamera;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/camera/HTCCamera;->mIsFirstInstance:Z

    .line 1062
    iget-boolean v1, p0, Lcom/htc/camera/HTCCamera;->mIsFirstInstance:Z

    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getOnCreateEndProfTimer()Lcom/htc/camera/Handle;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mOnCreateProfTimer:Lcom/htc/camera/Handle;

    invoke-static {v1, v2}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Lcom/htc/camera/Handle;)V

    .line 1068
    :cond_0
    sget-object v1, Lcom/htc/camera/CameraApplication;->EVENT_THEME_ID_UPDATED:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUpdateThemeIDHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1069
    sget-object v1, Lcom/htc/camera/CameraApplication;->EVENT_UNHANDLED_EXCEPTION:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUnhandledExceptionHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1072
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_CONFIGURATION_ORIENTATION:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1076
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->checkNewThemeID()V

    .line 1078
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getThemeID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->setTheme(I)V

    .line 1081
    invoke-static {p0}, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 1082
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mHtcFontscale:F

    .line 1084
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1088
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    .line 1091
    new-instance v0, Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$MainHandler;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    .line 1094
    new-instance v0, Lcom/htc/camera/IntentManager;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/IntentManager;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    .line 1095
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    .line 1098
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1099
    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->checkStartMode(Landroid/content/Intent;)V

    .line 1100
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsStorageSlotLocked:Z

    .line 1103
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1106
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1109
    new-instance v0, Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/CameraThread;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    .line 1112
    new-instance v0, Lcom/htc/camera/component/UIComponentFactory;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/UIComponentFactory;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentFactory:Lcom/htc/camera/component/UIComponentFactory;

    .line 1113
    new-instance v0, Lcom/htc/camera/component/UIComponentManager;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/UIComponentManager;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    .line 1114
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentFactory:Lcom/htc/camera/component/UIComponentFactory;

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Launch:Lcom/htc/camera/component/ComponentCategory;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentFactory;->createComponents(Lcom/htc/camera/component/ComponentCategory;)I

    .line 1117
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 1118
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    if-nez v0, :cond_2

    .line 1120
    const-string v0, "HTCCamera"

    const-string v1, "[FATAL] No ISettingsManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No ISettingsManager interface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v7

    .line 1100
    goto :goto_0

    .line 1123
    :cond_2
    new-instance v0, Lcom/htc/camera/data/PropertyBinding;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    sget-object v2, Lcom/htc/camera/ISettingsManager;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    sget-object v4, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    iget-object v5, p0, Lcom/htc/camera/HTCCamera;->mReadOnlyPropertySetter:Lcom/htc/camera/data/d;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/data/PropertyBinding;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/d;)V

    invoke-static {v0}, Lcom/htc/camera/data/BindingManager;->addBinding(Lcom/htc/camera/data/Binding;)V

    .line 1144
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    invoke-virtual {v0, v6}, Lcom/htc/camera/component/UIComponentManager;->enableAutoInitialization(Z)V

    .line 1147
    const-string v0, "HTCCamera"

    const-string v1, "onCreate() - Start camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraMode;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_INITIAL_CAMERA_OPEN_POLICY:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/htc/camera/InitialCameraOpenPolicy;->DIRECT:Lcom/htc/camera/InitialCameraOpenPolicy;

    if-ne v2, v4, :cond_5

    move v2, v6

    :goto_1
    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/camera/CameraThread;->start(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V

    .line 1149
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_THREAD_STARTED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1156
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->requestWindowFeature(I)Z

    .line 1157
    invoke-virtual {p0, v6}, Lcom/htc/camera/HTCCamera;->requestWindowFeature(I)Z

    .line 1158
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 1162
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->setContentView(I)V

    .line 1163
    const v0, 0x7f0e00cd

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    .line 1165
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    new-instance v1, Lcom/htc/camera/HTCCamera$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$10;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1192
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.cover.closed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1194
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mDotMatrixReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    :goto_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.EASY_ACCESS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1201
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mEAccessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1207
    :goto_3
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-boolean v0, v0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    if-eqz v0, :cond_3

    .line 1210
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    or-int/lit16 v1, v1, 0x200

    or-int/lit16 v1, v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    new-instance v1, Lcom/htc/camera/HTCCamera$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$11;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1232
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRootLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1233
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1235
    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/autotest/AutoTestISREntry;

    .line 1236
    invoke-virtual {v0, p0}, Lcom/htc/camera/autotest/AutoTestISREntry;->setActivity(Lcom/htc/camera/HTCCamera;)V

    .line 1239
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 1243
    new-instance v0, Lcom/htc/camera/HTCCamera$12;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    const-string v2, "Settings.MainSelfTimerInterval"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/HTCCamera$12;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->m_MainSelfTimerIntervalListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 1251
    new-instance v0, Lcom/htc/camera/HTCCamera$13;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    const-string v2, "Settings.FrontSelfTimerInterval"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/HTCCamera$13;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->m_FrontSelfTimerIntervalListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 1259
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateSelfTimerInterval()V

    .line 1263
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1264
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1270
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1271
    iput-boolean v6, p0, Lcom/htc/camera/HTCCamera;->mForceHideKeyguard:Z

    .line 1274
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1276
    :try_start_2
    sget v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_FORBID_TRANSIENT_STATUS_BAR:I

    invoke-static {v0, v1}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->addCustomFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1277
    sget v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_NO_SCREEN_ROTATION_ANIMATION:I

    invoke-static {v0, v1}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->addCustomFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1278
    sget v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_FORBID_IMMERSIVE_CONFIRMATION:I

    invoke-static {v0, v1}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->addCustomFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1279
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1288
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    invoke-virtual {v0, v7}, Lcom/htc/camera/component/UIComponentManager;->enableAutoInitialization(Z)V

    .line 1289
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentFactory:Lcom/htc/camera/component/UIComponentFactory;

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentFactory;->createComponents(Lcom/htc/camera/component/ComponentCategory;)I

    .line 1290
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1291
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->openCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 1294
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->linkToRequiredServiceComponents()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1296
    const-string v0, "HTCCamera"

    const-string v1, "onCreate() - [Fatal] Some required interface is missing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    .line 1301
    :cond_4
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, p0}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 1302
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1303
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1304
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1305
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1306
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1309
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->setupEventHandlers()V

    .line 1312
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x38

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;IJ)V

    .line 1313
    return-void

    :cond_5
    move v2, v7

    .line 1148
    goto/16 :goto_1

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    const-string v1, "HTCCamera"

    const-string v2, "DOTMATRIX registerReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1202
    :catch_1
    move-exception v0

    .line 1203
    const-string v1, "HTCCamera"

    const-string v2, "EACCESS registerReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1280
    :catch_2
    move-exception v0

    .line 1282
    const-string v0, "HTCCamera"

    const-string v1, "Custom window flag not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 2363
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2659
    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    const-string v0, "[ANALYTIC_com.htc.camera]"

    const-string v1, "[press_back]close"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->doOnDestory()V

    .line 2668
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 2673
    invoke-static {p0}, Lcom/htc/camera/data/BindingManager;->clearBindings(Ljava/lang/Object;)V

    .line 2675
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2676
    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    const-string v0, "[ANALYTIC_com.htc.camera]"

    const-string v1, "[close_camera]complete"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4044
    new-instance v0, Lcom/htc/camera/input/KeyEventArgs;

    invoke-direct {v0, p2}, Lcom/htc/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 4045
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4046
    invoke-virtual {v0}, Lcom/htc/camera/input/KeyEventArgs;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 4225
    :goto_0
    return v0

    .line 4053
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x83

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v1

    .line 4054
    goto :goto_0

    .line 4057
    :cond_2
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v1, :cond_3

    .line 4058
    sparse-switch p1, :sswitch_data_0

    .line 4111
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4112
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - UI Block !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4113
    goto :goto_0

    .line 4062
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    .line 4063
    goto :goto_0

    .line 4068
    :cond_4
    :sswitch_1
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-ne v0, v2, :cond_5

    .line 4069
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 4070
    const-string v0, "HTCCamera"

    const-string v2, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4076
    :cond_5
    const-string v0, "HTCCamera"

    const-string v2, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 4079
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    move v0, v1

    .line 4082
    goto :goto_0

    .line 4101
    :sswitch_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 4102
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 4103
    const-string v0, "HTCCamera"

    const-string v2, "UnBlock Capture UI - press back key and cancel focus"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4116
    :cond_6
    sparse-switch p1, :sswitch_data_1

    .line 4225
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 4121
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_8

    move v0, v1

    .line 4122
    goto/16 :goto_0

    .line 4127
    :cond_8
    :sswitch_4
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-ne v0, v1, :cond_a

    .line 4128
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 4129
    const-string v0, "HTCCamera"

    const-string v2, "screen save mode -- action key pressed so activate camera"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4130
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->activate()V

    .line 4132
    :cond_9
    const-string v0, "HTCCamera"

    const-string v2, "save screen - block capture key"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4133
    goto/16 :goto_0

    .line 4137
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4138
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeSelfTimer()V

    move v0, v1

    .line 4139
    goto/16 :goto_0

    .line 4142
    :cond_b
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsSipExist:Z

    if-ne v0, v1, :cond_c

    .line 4143
    const-string v0, "HTCCamera"

    const-string v2, "SIP is shown, not handle center button"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4144
    goto/16 :goto_0

    .line 4147
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_d

    .line 4149
    const-string v0, "HTCCamera"

    const-string v2, "Press center button to take picture"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v0, v1

    .line 4156
    goto/16 :goto_0

    .line 4153
    :cond_d
    const-string v0, "HTCCamera"

    const-string v2, "Press center button to start video recording"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->triggerRecord()V

    goto :goto_3

    .line 4162
    :sswitch_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4163
    :cond_e
    const-string v0, "HTCCamera"

    const-string v2, "Press back key to stop video recording"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->triggerRecord()V

    move v0, v1

    .line 4165
    goto/16 :goto_0

    .line 4169
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4170
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeSelfTimer()V

    move v0, v1

    .line 4171
    goto/16 :goto_0

    .line 4174
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-ge v0, v1, :cond_7

    .line 4192
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4193
    iput-boolean v1, p0, Lcom/htc/camera/HTCCamera;->mIsBackQuit:Z

    goto/16 :goto_2

    .line 4199
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_11

    move v0, v1

    .line 4200
    goto/16 :goto_0

    .line 4202
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_12

    .line 4203
    const-string v0, "HTCCamera"

    const-string v2, "!! Menu Key block !! - mCameraThread = null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4204
    goto/16 :goto_0

    .line 4207
    :cond_12
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    if-ne v0, v2, :cond_13

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4210
    :cond_13
    const-string v0, "HTCCamera"

    const-string v2, "!! Menu Key block !!"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4211
    goto/16 :goto_0

    :cond_14
    move v0, v1

    .line 4214
    goto/16 :goto_0

    :sswitch_7
    move v0, v1

    .line 4217
    goto/16 :goto_0

    .line 4220
    :sswitch_8
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/VolumeKeyType;->None:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 4221
    goto/16 :goto_0

    .line 4058
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_1
        0x83 -> :sswitch_0
    .end sparse-switch

    .line 4116
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1b -> :sswitch_3
        0x42 -> :sswitch_4
        0x52 -> :sswitch_6
        0x54 -> :sswitch_7
        0x83 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 4234
    new-instance v0, Lcom/htc/camera/input/KeyEventArgs;

    invoke-direct {v0, p2}, Lcom/htc/camera/input/KeyEventArgs;-><init>(Landroid/view/KeyEvent;)V

    .line 4235
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 4236
    invoke-virtual {v0}, Lcom/htc/camera/input/KeyEventArgs;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4238
    const-string v0, "HTCCamera"

    const-string v2, "KeyUp event is handled by event handler"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4266
    :goto_0
    return v0

    .line 4242
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 4243
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 4245
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsBackQuit:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4246
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 4248
    :cond_1
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsBackQuit:Z

    .line 4249
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 4254
    :cond_2
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsBackQuit:Z

    .line 4256
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4257
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp - UI Block !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4258
    goto :goto_0

    .line 4261
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 4266
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 4263
    goto :goto_0

    .line 4261
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 2

    .prologue
    .line 3248
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 3253
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2773
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    const-string v0, "HTCCamera.OnNewIntent"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mOnNewIntentProfTimer:Lcom/htc/camera/Handle;

    .line 2777
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2778
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    .line 2779
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsFirstPreviewStarted:Z

    .line 2780
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mForceHideKeyguard:Z

    .line 2781
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->checkByPassState()V

    .line 2790
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    .line 2794
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 2796
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->changeMode(Lcom/htc/camera/CameraMode;)Lcom/htc/camera/Handle;

    .line 2797
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraThread;->resetZoom(Z)V

    .line 2813
    :cond_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/IntentEventArgs;

    invoke-direct {v1, p1}, Lcom/htc/camera/IntentEventArgs;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 2816
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateSelfTimerInterval()V

    .line 2825
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_1

    .line 2826
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->openCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 2828
    :cond_1
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    return-void
.end method

.method protected onPause()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HtcSynchronizedInUI"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2370
    const-string v0, "HTCCamera"

    const-string v1, "onPause() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    const-string v0, "HTCCamera"

    const-string v1, "onPause() - Stop recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/camera/CameraThread;->stopVideoRecording(Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 2377
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 2378
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mRecordingBlockHandle:Lcom/htc/camera/Handle;

    .line 2382
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2384
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mResume:Z

    .line 2385
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->checkByPassState()V

    .line 2388
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2391
    invoke-virtual {p0, v3, v3}, Lcom/htc/camera/HTCCamera;->overridePendingTransition(II)V

    .line 2394
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 2397
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->resetPreviewState()V

    .line 2398
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2399
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2400
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2401
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2402
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2411
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2412
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2413
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x277b

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera$MainHandler;->removeMessages(I)V

    .line 2415
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsOnResumeCompleted:Z

    .line 2416
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mActivityOnPause:Z

    .line 2417
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsUIReady:Z

    .line 2418
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 2419
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 2420
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mChangingModeHandle:Lcom/htc/camera/Handle;

    .line 2421
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->m_NeedTapCapture:Z

    .line 2423
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsPinchZoomed:Z

    .line 2425
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsLaunching:Z

    .line 2426
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2427
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2430
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    .line 2431
    iput v3, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 2434
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2436
    const-string v0, "HTCCamera"

    const-string v1, "onPause() - Clear focus state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    iput v4, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 2438
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 2440
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetFocusMode()V

    .line 2441
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsTouchFaceFocus:Z

    .line 2454
    const-string v0, "HTCCamera"

    const-string v1, "onPause() - mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->setOldBrightness()V

    .line 2467
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 2468
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->restoreAudioStreamVolume()V

    .line 2471
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    .line 2474
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    if-eqz v0, :cond_3

    .line 2476
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 2477
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    .line 2480
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUpdateRecordingTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 2489
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 2491
    sput-boolean v3, Lcom/htc/camera/HTCCamera;->bFocusFromPress:Z

    .line 2493
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 2501
    :goto_1
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_7

    .line 2506
    const-string v0, "HTCCamera"

    const-string v1, "onPause mIdle is false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeActionScreen()V

    .line 2515
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    .line 2530
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 2533
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mNeed_doOnResume:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2534
    :cond_5
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    .line 2544
    :goto_3
    const-string v0, "HTCCamera"

    const-string v1, "OnPause - Freeze UI !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.resumeSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2548
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.android.camera.HTCCamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2549
    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2551
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->doOnPause()V

    .line 2554
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_6

    .line 2556
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->cancelTakingPicture()V

    .line 2558
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 2559
    if-eqz v0, :cond_9

    .line 2563
    :try_start_0
    const-string v1, "HTCCamera"

    const-string v2, "onPause +++stopPreview()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2565
    const-string v0, "HTCCamera"

    const-string v1, "onPause ---stopPreview()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2575
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->cancelStartingPreview()V

    .line 2576
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->cancelOpeningCamera()V

    .line 2577
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 2581
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 2582
    invoke-static {p0}, Lcom/htc/camera/sina/GifGenerator;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifGenerator;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;->Undo:Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/sina/GifGenerator;->setState(Lcom/htc/camera/sina/GifGenerator$GifGenerator_State;)V

    .line 2585
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->resumeBackgroundEncoding()V

    .line 2587
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2591
    new-instance v0, Lcom/htc/camera/SessionHandle;

    invoke-direct {v0}, Lcom/htc/camera/SessionHandle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSessionHandle:Lcom/htc/camera/SessionHandle;

    .line 2594
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mOnCreateProfTimer:Lcom/htc/camera/Handle;

    .line 2595
    iput-object v5, p0, Lcom/htc/camera/HTCCamera;->mOnNewIntentProfTimer:Lcom/htc/camera/Handle;

    .line 2597
    const-string v0, "HTCCamera"

    const-string v1, "onPause() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    return-void

    .line 2406
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2497
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2522
    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "onPause mIdle is true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2524
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2536
    :cond_8
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    goto/16 :goto_3

    .line 2567
    :catch_0
    move-exception v0

    .line 2569
    const-string v1, "HTCCamera"

    const-string v2, "onPause() - Cannot stop preview"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2573
    :cond_9
    const-string v0, "HTCCamera"

    const-string v1, "onPause() - No open camera, no need to stop preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2402
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2493
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    .prologue
    .line 6853
    .line 6854
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_2

    .line 6856
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$UIState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6890
    :cond_0
    :goto_0
    return-void

    .line 6859
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onActionScreenOpening()V

    goto :goto_0

    .line 6862
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/ActionScreen;->getTargetCaptureHandle()Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onActionScreenClosed(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6866
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_3

    .line 6867
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onEffectPanelStateChanged(Lcom/htc/camera/UIState;)V

    goto :goto_0

    .line 6868
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_4

    .line 6870
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6871
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onPopupBubbleShown()V

    goto :goto_0

    .line 6873
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_5

    .line 6874
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onTakingPictureStateChanged(Lcom/htc/camera/TakingPictureState;)V

    goto :goto_0

    .line 6875
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    if-ne p1, v0, :cond_0

    .line 6877
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_7

    .line 6886
    :cond_6
    :goto_2
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->broadcastVideoRecordingStateIntent(Lcom/htc/camera/RecordingState;)V

    goto :goto_0

    .line 6880
    :cond_7
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_8

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_6

    .line 6883
    :cond_8
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_6

    .line 6884
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onRecordingStopping()V

    goto :goto_2

    .line 6856
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2

    .prologue
    .line 6894
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    if-ne p2, v0, :cond_0

    .line 6896
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPED:Lcom/htc/camera/CameraPreviewState;

    if-ne v0, v1, :cond_0

    .line 6897
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->onPreviewStopped()V

    .line 6899
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 2115
    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2119
    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    return-void
.end method

.method public onResume()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HtcSynchronizedInUI"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2133
    const-string v0, "HTCCamera"

    const-string v1, "onResume() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2136
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mResume:Z

    .line 2137
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->checkByPassState()V

    .line 2140
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 2141
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->checkNewThemeID()V

    .line 2144
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mHtcFontscale:F

    invoke-static {p0, v0}, Lcom/htc/lib2/configuration/HtcWrapConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/HTCCamera$24;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$24;-><init>(Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2154
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/htc/camera/HTCCamera;->overridePendingTransition(II)V

    .line 2158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.pauseSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2159
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.android.camera.HTCCamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2160
    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2163
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->broadcastStopVoiceRecording()V

    .line 2165
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_6

    .line 2167
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->broadcastStopFM()V

    .line 2170
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    if-nez v0, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v4}, Lcom/htc/camera/IAudioManager;->requestAudioFocus(I)V

    .line 2173
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    .line 2174
    const-string v0, "HTCCamera"

    const-string v1, "onResume() - Request audio focus for video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->stopNotesRecording()V

    .line 2187
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->suspendBackgroundEncoding()V

    .line 2195
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->setMaxBrightness()V

    .line 2199
    invoke-static {p0}, Lcom/htc/camera/component/PowerWarningController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2201
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-string v1, "PowerWarning UI"

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/component/Component;->initialize()V

    .line 2215
    :cond_3
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsSipExist:Z

    .line 2217
    const-string v0, "HTCCamera"

    const-string v1, "onResume() - mFocusingState = NO_FOCUSING"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    iput v3, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 2226
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_RESUMING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 2229
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2231
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mActivityOnPause:Z

    .line 2232
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mNeed_doOnResume:Z

    .line 2234
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() - mIdle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_7

    .line 2237
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2238
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2239
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 2242
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateNavigationBarState()V

    .line 2251
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateStatusBarState()V

    .line 2254
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2255
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->performActionsOnPreviewSurfaceCreated()V

    .line 2261
    :cond_5
    iput-boolean v3, p0, Lcom/htc/camera/HTCCamera;->mIsBackQuit:Z

    .line 2263
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2264
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2265
    const-string v0, "HTCCamera"

    const-string v1, "Camera is disabled by DevicePolicyManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const v0, 0x7f080189

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2267
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2268
    new-instance v0, Lcom/htc/camera/HTCCamera$25;

    invoke-direct {v0, p0}, Lcom/htc/camera/HTCCamera$25;-><init>(Lcom/htc/camera/HTCCamera;)V

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;J)Z

    .line 2280
    :goto_2
    return-void

    .line 2180
    :cond_6
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHalfPCB()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2182
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->broadcastStopFM()V

    goto/16 :goto_0

    .line 2245
    :cond_7
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start viewfinder directly, Activate, mFocused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    if-eqz v0, :cond_4

    .line 2247
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->activate()V

    goto :goto_1

    .line 2278
    :cond_8
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mIsOnResumeCompleted:Z

    .line 2279
    const-string v0, "HTCCamera"

    const-string v1, "onResume() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2100
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2101
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mStart:Z

    .line 2108
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->checkByPassState()V

    .line 2110
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2631
    const-string v0, "HTCCamera"

    const-string v1, "onStop() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2635
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mStart:Z

    .line 2636
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->checkByPassState()V

    .line 2639
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_STOPPING:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 2642
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    if-eqz v0, :cond_0

    .line 2647
    const-string v0, "HTCCamera"

    const-string v1, "onStop() - Switch back to photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2649
    iput-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    .line 2654
    :cond_0
    :goto_0
    const-string v0, "HTCCamera"

    const-string v1, "onStop() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    return-void

    .line 2651
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "onStop() - Fail to switch back to photo mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 4316
    invoke-virtual {p0, p1}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x28a1

    .line 1320
    iput-boolean p1, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    .line 1321
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera$MainHandler;->removeMessages(I)V

    .line 1322
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/camera/HTCCamera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1324
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged mFocused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIdle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->activate()V

    .line 1336
    :cond_0
    return-void
.end method

.method public openCaptureUI()V
    .locals 3

    .prologue
    .line 3708
    const-string v0, "HTCCamera"

    const-string v1, "openCaptureUI()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3713
    :cond_0
    return-void
.end method

.method public final pauseVideoRecord()V
    .locals 3

    .prologue
    .line 3976
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3977
    const-string v0, "HTCCamera"

    const-string v1, "pauseVideoRecord() - recordingState is not Started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3993
    :goto_0
    return-void

    .line 3981
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3982
    const-string v0, "HTCCamera"

    const-string v1, "pauseVideoRecord() - CaptureUI is Blocked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3987
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3988
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 3989
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->pauseVideoRecording()V

    .line 3992
    :cond_2
    const-string v0, "Pausing recording"

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->blockCaptureUIForRecording(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareActionScreen(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 5815
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_5

    .line 5818
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mSessionHandle:Lcom/htc/camera/SessionHandle;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPreparedActionScreenSessionHandle:Lcom/htc/camera/SessionHandle;

    .line 5821
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    .line 5823
    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "prepareActionScreen() - Action screen is not needed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5855
    :goto_0
    return-void

    .line 5826
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5828
    const-string v0, "HTCCamera"

    const-string v1, "prepareActionScreen() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5833
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_3

    .line 5834
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v1, Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/actionscreen/ActionScreen;

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    .line 5837
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_4

    .line 5838
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mActionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, p1}, Lcom/htc/camera/actionscreen/ActionScreen;->prepare(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 5840
    :cond_4
    const-string v0, "HTCCamera"

    const-string v1, "No available action screen"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5842
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    if-eqz v0, :cond_6

    .line 5844
    new-instance v0, Lcom/htc/camera/HTCCamera$34;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/HTCCamera$34;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5854
    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "Cannot prepare action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareRecording()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3630
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3632
    const-string v0, "HTCCamera"

    const-string v2, "prepareRecording() - Capture is disabled"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3703
    :goto_0
    return v0

    .line 3637
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3639
    const-string v0, "HTCCamera"

    const-string v2, "prepareRecording() - Activity is pausing"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3640
    goto :goto_0

    .line 3642
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3644
    const-string v0, "HTCCamera"

    const-string v2, "prepareRecording() - Activity is paused"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3645
    goto :goto_0

    .line 3649
    :cond_2
    sget-object v3, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 3655
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareRecording() - Taking picture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3656
    goto :goto_0

    .line 3660
    :pswitch_0
    sget-object v3, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    .line 3667
    :pswitch_1
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareRecording() - Recording state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3668
    goto/16 :goto_0

    .line 3672
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-nez v0, :cond_3

    .line 3674
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareRecording() - Cannot record video in current start mode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3675
    goto/16 :goto_0

    .line 3680
    :cond_3
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_5

    .line 3683
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3685
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 3686
    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v0, v2

    .line 3703
    goto/16 :goto_0

    .line 3690
    :cond_6
    const-string v0, "HTCCamera"

    const-string v2, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_RECORD"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 3694
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3697
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    move v0, v1

    .line 3698
    goto/16 :goto_0

    .line 3649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3660
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 9364
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 9365
    return-void
.end method

.method public removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 9394
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 9395
    return-void
.end method

.method public resetAutoCaptureTask()V
    .locals 1

    .prologue
    .line 3217
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/camera/HTCCamera;->mIsSelfPortraitTask:Z

    .line 3218
    return-void
.end method

.method public resetFocusMode()V
    .locals 3

    .prologue
    .line 5112
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5113
    return-void
.end method

.method public final resetScreenSaveTimer()V
    .locals 4

    .prologue
    .line 6661
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    .line 6662
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v3, 0x24

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSuspendInSightSeeing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/camera/HTCCamera;->SCREEN_DELAY_SIGHTSEEING:I

    int-to-long v0, v0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;IJ)V

    .line 6663
    :cond_0
    return-void

    .line 6662
    :cond_1
    iget v0, p0, Lcom/htc/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final resetToDefault()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 8605
    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 8608
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 8609
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 8615
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetToDefault() - Taking picture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8652
    :goto_0
    return-void

    .line 8618
    :pswitch_0
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 8624
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetToDefault() - Recording picture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8629
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->stopPreview()V

    .line 8630
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 8631
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 8634
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8637
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 8639
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8640
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->changeStorageSlot(Lcom/htc/camera/io/StorageSlot;)V

    .line 8641
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraThread;->checkStorageState(Z)V

    .line 8642
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraThread;->resetZoom(Z)V

    .line 8646
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8649
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/htc/camera/HTCCamera;->startPreview(ZLcom/htc/camera/CameraType;)Z

    .line 8651
    const-string v0, "HTCCamera"

    const-string v1, "resetToDefault() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 8618
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final restartPreview()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8740
    const-string v0, "HTCCamera"

    const-string v3, "restartPreview()"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 8743
    sget-object v3, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 8752
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8754
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Activity is pausing"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 8793
    :goto_1
    return v0

    .line 8746
    :pswitch_1
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Preview is already starting"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 8747
    goto :goto_1

    .line 8749
    :pswitch_2
    const-string v0, "HTCCamera"

    const-string v3, "restartPreview() - Start preview while stopping preview"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8757
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8759
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Activity is paused"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 8760
    goto :goto_1

    .line 8762
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_2

    .line 8764
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Camera is deactivated"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 8765
    goto :goto_1

    .line 8767
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_3

    .line 8769
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - No camera thread"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 8770
    goto :goto_1

    .line 8772
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v3, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8774
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Preview resource is not ready"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 8775
    const-string v0, "restartPreview()"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    move v0, v1

    .line 8776
    goto :goto_1

    .line 8780
    :cond_4
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v3, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    invoke-direct {p0, v0, v3}, Lcom/htc/camera/HTCCamera;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 8781
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    if-eq v0, v3, :cond_5

    .line 8783
    const-string v0, "HTCCamera"

    const-string v2, "restartPreview() - Stop preview while starting preview"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 8784
    goto :goto_1

    .line 8788
    :cond_5
    iput v1, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewFailureCount:I

    .line 8789
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v3, "Starting preview"

    invoke-interface {v0, v3, v1}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewBlockHandle:Lcom/htc/camera/Handle;

    .line 8790
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8791
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    .line 8792
    const-string v0, "HTCCamera"

    const-string v1, "restartPreview() - Handle : "

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mStartingPreviewHandle:Lcom/htc/camera/Handle;

    invoke-static {v0, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v2

    .line 8793
    goto/16 :goto_1

    .line 8743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public restoreBackgrounddataSetting()V
    .locals 0

    .prologue
    .line 5420
    return-void
.end method

.method public final restoreFastShotToShot(Lcom/htc/camera/Handle;)V
    .locals 5

    .prologue
    .line 8480
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mDisableFastShotToShotHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8482
    const-string v0, "HTCCamera"

    const-string v1, "restoreFastShotToShot() - Remove handle: "

    iget-object v2, p1, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, ", remaining handles size: "

    iget-object v4, p0, Lcom/htc/camera/HTCCamera;->mDisableFastShotToShotHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8483
    return-void
.end method

.method public final resumeVideoRecord()V
    .locals 3

    .prologue
    .line 3997
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3999
    const-string v0, "HTCCamera"

    const-string v1, "resumeVideoRecord() - recordingState is not Paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    :goto_0
    return-void

    .line 4003
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4004
    const-string v0, "HTCCamera"

    const-string v1, "pauseVideoRecord() - CaptureUI is Blocked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4009
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4010
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_2

    .line 4011
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->resumeVideoRecording()V

    .line 4014
    :cond_2
    const-string v0, "Resuming recording"

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->blockCaptureUIForRecording(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final returnRequestedMedia()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 2975
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2977
    const-string v0, "HTCCamera"

    const-string v1, "Returning media from non-service mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    :cond_0
    :goto_0
    return-void

    .line 2980
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 2984
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    .line 2985
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v1}, Lcom/htc/camera/IntentManager;->getCropValue()Ljava/lang/String;

    move-result-object v1

    .line 2988
    :goto_2
    if-eqz v1, :cond_7

    .line 2990
    const-string v1, "HTCCamera"

    const-string v2, "Has Crop Extras , pass to CropImage Activity"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2993
    if-eqz v1, :cond_2

    .line 2995
    if-eqz v0, :cond_6

    .line 2996
    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3001
    :cond_2
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3002
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3003
    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/lib1/mediamanager/i;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 3004
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3005
    if-eqz v1, :cond_3

    .line 3006
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3008
    :cond_3
    sget-object v1, Lcom/htc/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/htc/camera/Global$REQUEST_CODE;

    invoke-virtual {v1}, Lcom/htc/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 2984
    goto :goto_1

    :cond_5
    move-object v1, v2

    .line 2985
    goto :goto_2

    .line 2998
    :cond_6
    const-string v0, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 3014
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v1, :cond_19

    .line 3015
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getJpegData()[B

    move-result-object v1

    move-object v3, v1

    .line 3018
    :goto_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3019
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    iget-object v5, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v5}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 3099
    if-eqz v0, :cond_16

    .line 3101
    invoke-virtual {p0, v7}, Lcom/htc/camera/HTCCamera;->setResult(I)V

    .line 3102
    invoke-direct {p0, v0, v3}, Lcom/htc/camera/HTCCamera;->saveAndFinish(Landroid/net/Uri;[B)V

    goto/16 :goto_0

    .line 3023
    :pswitch_0
    if-nez v3, :cond_a

    .line 3024
    const-string v0, "HTCCamera"

    const-string v1, "contacts - jpeg data is null !!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_9

    .line 3138
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->resetJpegData()V

    .line 3139
    :cond_9
    invoke-virtual {p0, v7, v4}, Lcom/htc/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 3140
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 3027
    :cond_a
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->captrueFullSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3029
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 3030
    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 3031
    :goto_6
    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->contactPhotoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 3033
    :goto_7
    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    .line 3035
    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v2, v5, v0}, Lcom/htc/camera/ar;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3046
    :goto_8
    if-eqz v2, :cond_e

    .line 3047
    const-string v0, "inline-data"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5

    :cond_b
    move-object v1, v2

    .line 3030
    goto :goto_6

    :cond_c
    move-object v0, v2

    .line 3031
    goto :goto_7

    .line 3043
    :cond_d
    const-string v0, "HTCCamera"

    const-string v1, "returnRequestedMedia() - Cannot get photo resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 3049
    :cond_e
    const-string v0, "HTCCamera"

    const-string v1, "return jpeg decode error!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3052
    :cond_f
    const-string v0, "jpeg_data"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto/16 :goto_5

    .line 3059
    :pswitch_1
    if-nez v3, :cond_10

    .line 3060
    const-string v0, "HTCCamera"

    const-string v1, "square - jpeg data is null !!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3063
    :cond_10
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->captrueFullSize()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3065
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 3066
    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 3068
    :goto_9
    if-eqz v0, :cond_13

    .line 3070
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mIntentManager:Lcom/htc/camera/IntentManager;

    invoke-virtual {v0}, Lcom/htc/camera/IntentManager;->getSquarePictureSize()I

    move-result v0

    :goto_a
    invoke-static {v3, v1, v2, v0}, Lcom/htc/camera/ar;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3081
    :goto_b
    if-eqz v2, :cond_14

    .line 3082
    const-string v0, "inline-data"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_11
    move-object v0, v2

    .line 3066
    goto :goto_9

    .line 3070
    :cond_12
    sget v0, Lcom/htc/camera/DisplayDevice;->DEFAULT_SQUARE_PICTURE_SIZE:I

    goto :goto_a

    .line 3078
    :cond_13
    const-string v0, "HTCCamera"

    const-string v1, "returnRequestedMedia() - Cannot get photo resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 3084
    :cond_14
    const-string v0, "HTCCamera"

    const-string v1, "return jpeg decode error!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3088
    :cond_15
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib1/mediamanager/i;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 3089
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3090
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3107
    :cond_16
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib1/mediamanager/i;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 3108
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3109
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return request:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    sget-object v1, Lcom/htc/camera/CameraStartMode;->GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

    if-ne v0, v1, :cond_8

    .line 3115
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_8

    .line 3117
    if-eqz v3, :cond_18

    .line 3119
    const v0, 0x19000

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0, v1}, Lcom/htc/camera/ar;->a([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3123
    if-eqz v0, :cond_17

    .line 3124
    const-string v1, "inline-data"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 3126
    :cond_17
    const-string v0, "HTCCamera"

    const-string v1, "return jpeg decode error!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3129
    :cond_18
    const-string v0, "HTCCamera"

    const-string v1, "inline-data - jpeg data is null !!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_19
    move-object v3, v2

    goto/16 :goto_4

    .line 3019
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final screenPointToNormalizedPoint(IIZ)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 4992
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 4993
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4995
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5000
    if-nez p4, :cond_1

    .line 5033
    :cond_0
    :goto_0
    return v0

    .line 5004
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 5005
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5007
    if-eqz p3, :cond_0

    .line 5009
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v2, :cond_4

    .line 5010
    iget p1, v1, Landroid/graphics/Rect;->left:I

    .line 5013
    :cond_2
    :goto_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, v2, :cond_5

    .line 5014
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 5031
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v1, :cond_0

    .line 5032
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mViewfinder:Lcom/htc/camera/ui/IViewfinder;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-interface {v1, v2, v3, p4, v0}, Lcom/htc/camera/ui/IViewfinder;->convertToRelativePreviewPosition(FFLandroid/graphics/PointF;I)Z

    move-result v0

    goto :goto_0

    .line 5011
    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_2

    .line 5012
    iget p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5015
    :cond_5
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-le p2, v2, :cond_3

    .line 5016
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0

    .prologue
    .line 5412
    return-void
.end method

.method public setBlockPowerWarning(Z)V
    .locals 3

    .prologue
    .line 6724
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6725
    iput-boolean p1, p0, Lcom/htc/camera/HTCCamera;->mBlockPowerWarning:Z

    .line 6726
    return-void
.end method

.method public setPowerWarning(Z)V
    .locals 3

    .prologue
    .line 6733
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6734
    iput-boolean p1, p0, Lcom/htc/camera/HTCCamera;->mIsPowerWarning:Z

    .line 6735
    return-void
.end method

.method public setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 9403
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_INITIAL_CAMERA_OPEN_POLICY:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 9405
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_THREAD_STARTED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9406
    const-string v0, "HTCCamera"

    const-string v1, "Camera thread is already started."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 9408
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mBaseObjectProxy:Lcom/htc/camera/base/BaseObjectProxy;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/base/BaseObjectProxy;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final showNavigationBar()Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 9124
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 9127
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "ShowSystemBar"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 9128
    const-string v1, "HTCCamera"

    const-string v2, "showSystemBar() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9129
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mShowNavigationBarHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9130
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateNavigationBarState()V

    .line 9131
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v2, 0x2904

    invoke-static {v1, v2}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;I)V

    .line 9132
    return-object v0
.end method

.method public sinaCamera_IsGifMode()Z
    .locals 2

    .prologue
    .line 9107
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 9108
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 9109
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/htc/camera/sina/GifModeScene;

    if-eqz v0, :cond_0

    .line 9110
    const/4 v0, 0x1

    .line 9113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final startAlbum(Landroid/content/Intent;Lcom/htc/camera/media/MediaInfo;)Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6202
    if-nez p1, :cond_0

    .line 6204
    const-string v1, "HTCCamera"

    const-string v3, "startAlbum() - No intent specified"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 6339
    :goto_0
    return v1

    .line 6209
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 6212
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v5, "Starting album"

    invoke-interface {v1, v5, v2}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v6

    .line 6218
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 6219
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    sget-object v7, Lcom/htc/camera/CameraStartMode;->Album:Lcom/htc/camera/CameraStartMode;

    if-ne v1, v7, :cond_6

    move v1, v3

    .line 6220
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    .line 6222
    :cond_1
    if-eqz v1, :cond_7

    .line 6223
    const-string v5, "FROM_CAMERA"

    .line 6226
    :goto_2
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v5, v1

    .line 6232
    :goto_3
    if-nez v5, :cond_2

    .line 6234
    sget-object v7, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    aget v1, v7, v1

    packed-switch v1, :pswitch_data_0

    .line 6244
    :cond_2
    :goto_4
    const-string v1, "preview_mode"

    const-string v7, "filmstrip"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6245
    const-string v7, "camera_orientation"

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    iget v1, v1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6248
    if-eqz p2, :cond_e

    .line 6250
    iget-object v1, p2, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    if-eqz v1, :cond_a

    iget-object v1, p2, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    iget-object v1, v1, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    .line 6251
    :goto_5
    iget-object v7, p2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    if-nez v7, :cond_3

    .line 6252
    sget-object v1, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-object v1, v1, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    .line 6253
    :cond_3
    iget-object v7, p2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6254
    const-string v7, "HTCCamera"

    const-string v8, "startAlbum() - File path = \'"

    iget-object v9, p2, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    const-string v10, "\'"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6255
    const-string v7, "camera_last_file_path"

    invoke-virtual {p2}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6256
    const-string v7, "HTCCamera"

    const-string v8, "startAlbum() - MIME type = \'"

    const-string v9, "\'"

    invoke-static {v7, v8, v1, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6257
    const-string v7, "camera_last_file_mime"

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6258
    invoke-virtual {p2}, Lcom/htc/camera/media/MediaInfo;->isVideo()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6260
    const-string v1, "HTCCamera"

    const-string v7, "startAlbum() - Photo orientation = \'"

    iget v8, p2, Lcom/htc/camera/media/MediaInfo;->orientation:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "\'"

    invoke-static {v1, v7, v8, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6261
    const-string v1, "quick_view_orientation"

    iget v7, p2, Lcom/htc/camera/media/MediaInfo;->orientation:I

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6263
    :cond_4
    instance-of v1, p2, Lcom/htc/camera/media/ImageMediaInfo;

    if-eqz v1, :cond_5

    .line 6265
    move-object v0, p2

    check-cast v0, Lcom/htc/camera/media/ImageMediaInfo;

    move-object v1, v0

    iget-object v1, v1, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    .line 6266
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/htc/camera/imaging/Size;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 6268
    const-string v7, "HTCCamera"

    const-string v8, "startAlbum() - Image pixel size : "

    invoke-static {v7, v8, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6269
    const-string v7, "bitmap_srcW"

    iget v8, v1, Lcom/htc/camera/imaging/Size;->width:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6270
    const-string v7, "bitmap_srcH"

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6277
    :cond_5
    :goto_6
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mThumbnailImagePool:Lcom/htc/camera/media/a;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mThumbnailImagePool:Lcom/htc/camera/media/a;

    iget-object v7, p2, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    const/4 v8, 0x2

    invoke-interface {v1, v7, v8}, Lcom/htc/camera/media/a;->getThumbnailImage(Lcom/htc/camera/io/Path;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6278
    :goto_7
    if-eqz v1, :cond_d

    .line 6280
    const-string v7, "HTCCamera"

    const-string v8, "startAlbum() - Thumbnail image size : "

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6281
    const-string v7, "bitmap_data"

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6293
    :goto_8
    if-eqz v5, :cond_f

    .line 6295
    const-string v1, "HTCCamera"

    const-string v5, "startAlbum() - Returning to album"

    invoke-static {v1, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6296
    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1}, Lcom/htc/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 6297
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->finish()V

    .line 6298
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    sget-object v5, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-direct {p0, v1, v5}, Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 6305
    :goto_9
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    iget-object v5, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v1, v3

    .line 6306
    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 6219
    goto/16 :goto_1

    .line 6225
    :cond_7
    const-string v5, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    goto/16 :goto_2

    :cond_8
    move v5, v2

    .line 6229
    goto/16 :goto_3

    .line 6237
    :pswitch_0
    const-string v1, "capture_mode"

    const-string v7, "camera"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 6308
    :catch_0
    move-exception v1

    .line 6310
    const-string v3, "HTCCamera"

    const-string v5, "startAlbum() - Cannot start album"

    invoke-static {v3, v5, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6311
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    invoke-interface {v1, v6}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 6314
    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6317
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_9
    move v1, v2

    .line 6318
    goto/16 :goto_0

    .line 6240
    :pswitch_1
    :try_start_1
    const-string v1, "capture_mode"

    const-string v7, "comcorder"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 6250
    :cond_a
    sget-object v1, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-object v1, v1, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    goto/16 :goto_5

    .line 6273
    :cond_b
    const-string v1, "HTCCamera"

    const-string v7, "startAlbum() - No image pixel size"

    invoke-static {v1, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    move-object v1, v4

    .line 6277
    goto/16 :goto_7

    .line 6284
    :cond_d
    const-string v1, "HTCCamera"

    const-string v7, "startAlbum() - No thumbnail image"

    invoke-static {v1, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 6288
    :cond_e
    const-string v1, "HTCCamera"

    const-string v7, "startAlbum() - No media information"

    invoke-static {v1, v7}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6289
    const/4 v1, 0x0

    sget-object v7, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-object v7, v7, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    .line 6302
    :cond_f
    const-string v1, "HTCCamera"

    const-string v5, "startAlbum() - Going to album"

    invoke-static {v1, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6303
    invoke-virtual {p0, p1}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .line 6320
    :cond_10
    if-eqz p2, :cond_12

    .line 6322
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6323
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    .line 6326
    :goto_a
    if-eqz p2, :cond_11

    iget-object v1, p2, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    if-eqz v1, :cond_11

    iget-object v1, p2, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    iget-object v1, v1, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    .line 6327
    :goto_b
    invoke-virtual {v5, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6331
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    .line 6332
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_c
    move v1, v2

    .line 6339
    goto/16 :goto_0

    .line 6326
    :cond_11
    sget-object v1, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-object v1, v1, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    goto :goto_b

    .line 6334
    :catch_1
    move-exception v1

    .line 6336
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot start other album app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    move-object v3, v4

    goto :goto_a

    .line 6234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final startAlbum(Lcom/htc/camera/media/MediaInfo;)Z
    .locals 1

    .prologue
    .line 6197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/htc/camera/media/MediaInfo;)Z

    move-result v0

    return v0
.end method

.method public final startPreview()Z
    .locals 2

    .prologue
    .line 8659
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/HTCCamera;->startPreview(ZLcom/htc/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method public final startPreview(Lcom/htc/camera/CameraType;)Z
    .locals 1

    .prologue
    .line 8663
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/HTCCamera;->startPreview(ZLcom/htc/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method public final startPreview(Z)Z
    .locals 1

    .prologue
    .line 8667
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/HTCCamera;->startPreview(ZLcom/htc/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method public stopNotesRecording()V
    .locals 3

    .prologue
    .line 6349
    const-string v0, "com.htc.notes.notesrecordingstopped"

    .line 6350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.notes.notesrecordingstopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6351
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6352
    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 6353
    return-void
.end method

.method public final stopPreview()V
    .locals 1

    .prologue
    .line 8801
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->stopPreview(Z)V

    .line 8802
    return-void
.end method

.method public final switchMode(Lcom/htc/camera/CameraMode;)Z
    .locals 2

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    move-result v0

    .line 1868
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z
    .locals 1

    .prologue
    .line 1872
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    move-result v0

    return v0
.end method

.method public final switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1876
    const-string v0, "HTCCamera"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "switchMode("

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const/4 v4, 0x2

    const-string v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const-string v4, ", "

    aput-object v4, v3, v6

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, ")"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1879
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v1, :cond_0

    .line 1881
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1883
    const-string v0, "HTCCamera"

    const-string v3, "switchMode() - change camera mode when focusing, cancel focus"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 1885
    const-string v0, "HTCCamera"

    const-string v3, "switchMode() - UnBlock Capture UI - change camera mode and cancel focus"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_2

    .line 1895
    const-string v0, "HTCCamera"

    const-string v1, "switchMode() - No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    :goto_0
    return v2

    .line 1887
    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "switchMode() - change camera mode when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1900
    :cond_2
    sget-object v3, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 1906
    const-string v0, "HTCCamera"

    const-string v1, "switchMode() - Taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1911
    :pswitch_0
    sget-object v3, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    .line 1920
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "switchMode() - Recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1917
    :pswitch_1
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v6, :cond_3

    .line 1927
    :pswitch_2
    if-nez p1, :cond_4

    .line 1929
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    move v5, v2

    move-object p1, v0

    .line 1941
    :goto_1
    if-nez p2, :cond_7

    .line 1943
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    move v4, v2

    move-object p2, v0

    .line 1948
    :goto_2
    if-nez v5, :cond_9

    if-nez v4, :cond_9

    move v2, v1

    .line 1949
    goto :goto_0

    .line 1934
    :cond_4
    iget-boolean v0, p1, Lcom/htc/camera/CameraType;->isSupported:Z

    if-nez v0, :cond_5

    .line 1936
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchMode() - Camera \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' is not supported"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1939
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_6

    move v0, v1

    :goto_3
    move v5, v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    .line 1947
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_8

    move v0, v1

    :goto_4
    move v4, v0

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_4

    .line 1953
    :cond_9
    sget-object v3, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CAMERA_PREVIEW_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_2

    move v3, v2

    .line 1965
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1967
    const-string v0, "HTCCamera"

    const-string v1, "switchMode() - Capture UI is blocked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    move v3, v1

    .line 1958
    goto :goto_5

    .line 1970
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_b

    .line 1971
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v6, "Switching camera mode"

    invoke-interface {v0, v6, v2}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/htc/camera/Handle;

    .line 1974
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1975
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->leaveQuickLaunchState()V

    .line 1978
    :cond_c
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->resetFocusMode()V

    .line 1982
    if-eqz v5, :cond_e

    .line 1985
    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "SWITCH_TO_MAIN_CAMERA"

    .line 1986
    :goto_6
    invoke-static {v0}, Lcom/htc/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    .line 1989
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    iget-object v6, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1990
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->switchingCameraEvent:Lcom/htc/camera/event/Event;

    new-instance v6, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v6, p1}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v6}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1991
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->resetPreviewState()V

    .line 1992
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v6, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1995
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1996
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 1999
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->resetZoom(Z)V

    .line 2003
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    iget-object v6, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v6, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2006
    if-eqz v4, :cond_13

    .line 2008
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p2}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_3

    .line 2022
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchMode() - Try switching to unknown mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    if-eqz v5, :cond_f

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2024
    invoke-virtual {p0, p1}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 2027
    :cond_f
    :goto_7
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->unlock2A()V

    .line 2028
    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p3, :cond_10

    .line 2030
    const-string v0, "HTCCamera"

    const-string v2, "switchMode() - Switch mode and camera without restarting preview, open camera first"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraThread;->openCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 2046
    :cond_10
    :goto_8
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->updateSelfTimerInterval()V

    .line 2049
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->checkCameraFocusType()V

    .line 2052
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_11

    .line 2054
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v2}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 2055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mSwitchingModeBlockHandle:Lcom/htc/camera/Handle;

    :cond_11
    move v2, v1

    .line 2059
    goto/16 :goto_0

    .line 1985
    :cond_12
    const-string v0, "SWITCH_TO_FRONT_CAMERA"

    goto/16 :goto_6

    .line 2012
    :pswitch_4
    invoke-direct {p0, v2, p3}, Lcom/htc/camera/HTCCamera;->changetoCameraMode(ZZ)V

    goto :goto_7

    .line 2017
    :pswitch_5
    invoke-direct {p0, v2, p3}, Lcom/htc/camera/HTCCamera;->changetoVideoMode(ZZ)V

    goto :goto_7

    .line 2034
    :cond_13
    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2036
    const-string v0, "HTCCamera"

    const-string v2, "switchMode() - Open new camera"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraThread;->openCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 2038
    if-nez v3, :cond_14

    if-eqz p3, :cond_10

    .line 2040
    :cond_14
    const-string v0, "HTCCamera"

    const-string v2, "switchMode() - Start preview for camera change"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    invoke-virtual {p0, p1}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    goto :goto_8

    .line 1900
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1911
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1953
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2008
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final takeFocus(II)V
    .locals 1

    .prologue
    .line 4786
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4787
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/HTCCamera;->handleTouchFocus(II)Z

    .line 4788
    :cond_0
    return-void
.end method

.method public final takePicture(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 3384
    const-string v0, "HTCCamera"

    const-string v2, "takePicture(\'"

    const-string v3, "\')"

    invoke-static {v0, v2, p1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3387
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_0

    .line 3389
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - No camera thread"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3621
    :goto_0
    return v0

    .line 3394
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3396
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Capture is disabled"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3397
    goto :goto_0

    .line 3401
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3403
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Activity is pausing"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3404
    goto :goto_0

    .line 3406
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3408
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Activity is paused"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3409
    goto :goto_0

    .line 3413
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_4

    .line 3415
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Screen-save mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3416
    goto :goto_0

    .line 3420
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->sinaCamera_IsGifMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/htc/camera/sina/GifModeController;->getTempFileSavingPath(Lcom/htc/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3422
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;

    const-class v2, Lcom/htc/camera/ak;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 3423
    if-eqz v0, :cond_5

    .line 3424
    const v2, 0x7f080157

    invoke-virtual {v0, v2}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    :goto_1
    move v0, v1

    .line 3427
    goto :goto_0

    .line 3426
    :cond_5
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - No IToastManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3431
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_f

    .line 3433
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportVideoSnapshot()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3437
    :cond_8
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture() - Cannot take picture in video mode, recording state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3438
    goto/16 :goto_0

    .line 3441
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 3443
    :goto_2
    if-eqz v0, :cond_b

    instance-of v0, v0, Lcom/htc/camera/effect/SlowMotionScene;

    if-eqz v0, :cond_b

    .line 3445
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Cannot take picture in slow motion mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3446
    goto/16 :goto_0

    :cond_a
    move-object v0, v4

    .line 3441
    goto :goto_2

    .line 3448
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 3449
    if-nez v0, :cond_c

    .line 3451
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3452
    goto/16 :goto_0

    .line 3454
    :cond_c
    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 3455
    sget-object v2, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-virtual {v2, v0}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/htc/camera/Resolution;->Video_QCIF_Service:Lcom/htc/camera/Resolution;

    invoke-virtual {v2, v0}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3457
    :cond_d
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Cannot take picture in MMS video recording"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3458
    goto/16 :goto_0

    .line 3460
    :cond_e
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Take picture during video recording"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3464
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v0, :cond_10

    .line 3466
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture() - Cannot take picture in current start mode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3467
    goto/16 :goto_0

    .line 3471
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3473
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - There is still a visible dialog"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3474
    goto/16 :goto_0

    .line 3476
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3478
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - There is still a visible pop-up bubble"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3479
    goto/16 :goto_0

    .line 3483
    :cond_12
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v6, :cond_15

    .line 3485
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3488
    const-string v0, "HTCCamera"

    const-string v1, "takePicture() - Taking picture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    iput v5, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    .line 3492
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3493
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    .line 3496
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3497
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v6

    .line 3500
    goto/16 :goto_0

    .line 3504
    :cond_14
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture() - Taking picture when focusing, but taking picture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3505
    goto/16 :goto_0

    .line 3510
    :cond_15
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3512
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeSelfTimer()V

    move v0, v1

    .line 3513
    goto/16 :goto_0

    .line 3517
    :cond_16
    sget-object v2, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 3543
    :cond_17
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takePicture() - Cannot take picture due to current taking picture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3544
    goto/16 :goto_0

    .line 3523
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3527
    const-string v0, "HTCCamera"

    const-string v1, "takePicture() - Take picture immediately after previous picture is completed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_18

    .line 3529
    const-string v0, "HTCCamera"

    const-string v1, "takePicture() - Cancel previous pending taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 3531
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v6

    .line 3532
    goto/16 :goto_0

    .line 3536
    :cond_19
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Cannot take picture immediately after previous picture is completed"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3537
    goto/16 :goto_0

    .line 3540
    :pswitch_1
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-eq v0, v5, :cond_1a

    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    .line 3548
    :cond_1a
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3550
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Captutre UI is blocked"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3551
    goto/16 :goto_0

    .line 3555
    :cond_1b
    iput-object v4, p0, Lcom/htc/camera/HTCCamera;->mPendingTakingPictureStartTime:Ljava/lang/Long;

    .line 3558
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mStartMode:Lcom/htc/camera/CameraStartMode;

    sget-object v2, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    if-eq v0, v2, :cond_1c

    .line 3560
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v2, :cond_1c

    .line 3562
    new-instance v0, Lcom/htc/camera/CaptureEventArgs;

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->StorageError:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v0, v4, v2}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onTakingPictureFailed(Lcom/htc/camera/CaptureEventArgs;)V

    move v0, v1

    .line 3563
    goto/16 :goto_0

    .line 3568
    :cond_1c
    const-string v0, "HTCCamera"

    const-string v2, "takePicture() - Block Capture UI"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    const-string v2, "Taking picture"

    invoke-interface {v0, v2, v6}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    .line 3572
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v3

    .line 3573
    if-eqz v3, :cond_1d

    iget v0, p0, Lcom/htc/camera/HTCCamera;->mFocusingState:I

    if-eq v0, v5, :cond_1d

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3574
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    .line 3577
    :cond_1d
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->lastTakingPictureTriggerSource:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3578
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3581
    if-eqz v3, :cond_20

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v7

    long-to-int v0, v7

    move v2, v0

    .line 3582
    :goto_3
    if-gtz v2, :cond_21

    .line 3585
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_1e

    .line 3586
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v2, "Taking picture"

    invoke-virtual {v0, v2, v4}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;

    .line 3589
    :cond_1e
    if-eqz v3, :cond_1f

    .line 3591
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->resetPreviewState()V

    .line 3592
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3594
    :cond_1f
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3597
    const-string v0, "HTCCamera"

    const-string v1, "takePicture() - Take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3598
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraThread;->takePicture(Z)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    :goto_4
    move v0, v6

    .line 3621
    goto/16 :goto_0

    :cond_20
    move v2, v1

    .line 3581
    goto :goto_3

    .line 3603
    :cond_21
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_22

    .line 3605
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070010

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownSoundHandle:Lcom/htc/camera/Handle;

    .line 3606
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070012

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownSoundMiddleHandle:Lcom/htc/camera/Handle;

    .line 3607
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070011

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/htc/camera/Handle;

    .line 3608
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070013

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownZeroSoundHandle:Lcom/htc/camera/Handle;

    .line 3612
    :cond_22
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraThread;->checkStorageState(Z)V

    .line 3617
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    const-string v1, "HTCCamera takePicture"

    int-to-long v2, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ICountDownTimer;->startCountDown(Ljava/lang/String;JLcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCountDownTimerHandle:Lcom/htc/camera/Handle;

    goto :goto_4

    .line 3517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final triggerRecord()V
    .locals 1

    .prologue
    .line 3793
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->triggerRecord(Z)V

    .line 3794
    return-void
.end method

.method public final triggerRecord(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 3797
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3800
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - end, UI Block !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3972
    :goto_0
    return-void

    .line 3803
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3805
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - end, action screen open !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3809
    :cond_1
    sget-object v1, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3967
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerRecord() - current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    :cond_2
    :goto_1
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3812
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3814
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - Capture is disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3820
    :cond_3
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingLockHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_5

    .line 3822
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - Lock rotation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_5

    .line 3825
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 3826
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 3828
    :cond_4
    if-nez v0, :cond_9

    .line 3829
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    .line 3834
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v3, "Recording"

    invoke-virtual {v1, v3, v0}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mRecordingLockHandle:Lcom/htc/camera/Handle;

    .line 3839
    :cond_5
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusWhileRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_6

    .line 3841
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v4}, Lcom/htc/camera/IAudioManager;->requestAudioFocus(I)V

    .line 3842
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    .line 3843
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - Request audio focus for video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3849
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - Switch to video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    sget-object v0, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraMode;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3852
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3854
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_7

    .line 3855
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 3856
    :cond_7
    iput-boolean v5, p0, Lcom/htc/camera/HTCCamera;->mHasAudioFocusForVideo:Z

    .line 3857
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - Abandon audio focus for video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    :cond_8
    new-instance v0, Lcom/htc/camera/CaptureEventArgs;

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v0, v2, v1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onRecordingFailed(Lcom/htc/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    .line 3830
    :cond_9
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportIconRotate()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3831
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_2

    :cond_a
    move-object v0, v2

    .line 3833
    goto :goto_2

    .line 3865
    :cond_b
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mIsRecordingInPhotoMode:Z

    .line 3866
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3882
    :cond_c
    const-string v0, "[ANALYTIC_com.htc.camera]"

    const-string v1, "[press_jogball]recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3885
    :cond_d
    new-instance v0, Lcom/htc/camera/CaptureEventArgs;

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->HasPopupOrDialog:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v0, v2, v1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onRecordingFailed(Lcom/htc/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    .line 3889
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    if-eq v0, v1, :cond_f

    .line 3890
    new-instance v0, Lcom/htc/camera/CaptureEventArgs;

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->StorageError:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v0, v2, v1}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->onRecordingFailed(Lcom/htc/camera/CaptureEventArgs;)V

    goto/16 :goto_0

    .line 3895
    :cond_f
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3896
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - end, PowerWarning !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3899
    :cond_10
    invoke-virtual {p0, v4}, Lcom/htc/camera/HTCCamera;->setBlockPowerWarning(Z)V

    .line 3901
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - Start Recorder"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    const-string v0, "Start recording"

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->blockCaptureUIForRecording(Ljava/lang/String;)V

    .line 3910
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3913
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->lockFocusInVideo:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3915
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - Disable continuous auto-focus for recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3916
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_12

    .line 3918
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_11

    .line 3919
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V

    .line 3920
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/IAutoFocusController;->disableContinuousAutoFocus()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mContiAFDisableHandle:Lcom/htc/camera/Handle;

    .line 3925
    :cond_12
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->startVideoRecording()Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 3927
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    .line 3930
    iput-boolean v5, p0, Lcom/htc/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 3931
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->stopAccelerometer()V

    goto/16 :goto_1

    .line 3939
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isCaptureDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3941
    const-string v0, "HTCCamera"

    const-string v1, "triggerRecord() - Capture is disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3947
    :cond_13
    const-string v0, "[ANALYTIC_com.htc.camera]"

    const-string v1, "[press_jogball]stop_record"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3950
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3952
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - Stop Recorder"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3953
    const-string v0, "Stop recording"

    invoke-direct {p0, v0}, Lcom/htc/camera/HTCCamera;->blockCaptureUIForRecording(Ljava/lang/String;)V

    .line 3955
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1, p1, v5}, Lcom/htc/camera/CameraThread;->stopVideoRecording(Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 3957
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->stopRecordingIndicator()V

    .line 3960
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mCanGSensorEnabled:Z

    .line 3961
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I

    if-lez v0, :cond_2

    .line 3962
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->startAccelerometer()V

    goto/16 :goto_1

    .line 3809
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final unlockZoom()V
    .locals 3

    .prologue
    .line 6127
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 6130
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->threadAccessCheck()V

    .line 6133
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mZoomLockCounter:I

    if-nez v0, :cond_1

    .line 6135
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - Counter is 0"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 6136
    const-string v0, "unlockZoom()"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 6149
    :cond_0
    :goto_0
    return-void

    .line 6141
    :cond_1
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mZoomLockCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/HTCCamera;->mZoomLockCounter:I

    .line 6142
    iget v0, p0, Lcom/htc/camera/HTCCamera;->mZoomLockCounter:I

    if-gtz v0, :cond_0

    .line 6146
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isZoomLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6148
    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateWindowFlag()V
    .locals 5

    .prologue
    const/high16 v3, 0x80000

    const/4 v4, 0x0

    .line 1389
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWindowFlag mFocused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/HTCCamera;->mResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->needToAddShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1394
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1395
    const-string v0, "HTCCamera"

    const-string v1, "add FLAG_SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iput-boolean v4, p0, Lcom/htc/camera/HTCCamera;->mForceHideKeyguard:Z

    .line 1402
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->needToDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1403
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1404
    const-string v0, "HTCCamera"

    const-string v1, "add FLAG_DISMISS_KEYGUARD"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->mUIHandler:Lcom/htc/camera/HTCCamera$MainHandler;

    const/16 v1, 0x28a2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/HTCCamera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1408
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mResume:Z

    if-nez v0, :cond_2

    .line 1409
    iget-boolean v0, p0, Lcom/htc/camera/HTCCamera;->mFocused:Z

    if-eqz v0, :cond_4

    .line 1410
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSuspendInSightSeeing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1415
    :cond_2
    :goto_1
    return-void

    .line 1397
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/HTCCamera;->needToClearShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1399
    const-string v0, "HTCCamera"

    const-string v1, "clear FLAG_SHOW_WHEN_LOCKED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1412
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera;->isSuspendInSightSeeing:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method
