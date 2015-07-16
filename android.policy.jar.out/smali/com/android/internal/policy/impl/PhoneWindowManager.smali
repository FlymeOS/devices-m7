.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarDarkTheme;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarButton;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeHideBootMessage;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeShowBootMessage;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;
    }
.end annotation


# static fields
.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final APP_SWITCH_ACTION_ALWAYS_RECENTAPPS:I = 0x0

.field static final APP_SWITCH_ACTION_PRESS_MENU_HOLD_RECENTAPPS:I = 0x1

.field static final APP_SWITCH_ACTION_PRESS_RECENTAPPS_HOLD_MENU:I = 0x2

.field private static final AUTOBOT_ACTION_HTCMODE_USBPLUG:Ljava/lang/String; = "com.htc.autobot.htcmodeclient.USBPlug"

.field private static final AUTOBOT_ACTION_MIRRORLINK_STOP:Ljava/lang/String; = "com.htc.HTCMirrorLinkServer.ACTION_STOP"

.field private static final AUTOBOT_ACTION_PROJECTOR_STATE:Ljava/lang/String; = "com.htc.autobot.PROJECTOR_STATE"

.field private static final AUTOBOT_EXTRA_HTCMODE_USBPLUG:Ljava/lang/String; = "IsPlug"

.field private static final AUTOBOT_EXTRA_STATE:Ljava/lang/String; = "EXTRA_STATE"

.field private static final AUTOBOT_EXTRA_STATE_ENTER:I = 0x1

.field private static final AUTOBOT_EXTRA_STATE_EXIT:I = 0x0

.field private static final AUTOMOTIVE_ACTION_MODE_CHANGE:Ljava/lang/String; = "com.htc.AutoMotive.Service.ModeChange"

.field private static final AUTOMOTIVE_CURRENT_MODE:Ljava/lang/String; = "AutoMotive_Current_Mode"

.field private static final AUTOMOTIVE_DISABLED:I = 0x1

.field private static final AUTOMOTIVE_ENABLED:I = 0x0

.field private static final AUTOMOTIVE_RECEIVER_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_DEFAULT"

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final CAMERA_KEY_ACTION:Ljava/lang/String; = "com.htc.intent.lockscreen.action.camera_key"

.field static final CHECK_SCREEN_SHOT_CHORD:Z

.field static final CPU_CONTROL_ACQUIRE_TIME:J = 0x32L

.field private static final CUSTOMIZATION_READER_APP_FRAMEWORK:Ljava/lang/String; = "Android_App_Framework"

.field static final DEBUG:Z = false

.field static final DEBUG_HTC:Z

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_WAKEUP:Z

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field private static final DOTVIEW_LONG_PRESS_POWERKEY_TIMEOUT:I = 0x1f4

.field static final DOUBLE_PRESS_INTERVAL_DEFAULT:I = 0x96

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = true

.field private static final ENTER_RESUME_MODE:C = '0'

.field private static final ENTER_SUSPEND_MODE:C = '1'

.field static final HANDLE_HOME_KEY_TIMEOUT:J = 0x96L

.field private static final HARDWARE_RESET_NOTIFICATION_TIME:I

.field private static final HARDWARE_RESET_TIME:I

.field static final HTC_DOCKSCREEN_HOME_INTENT:Ljava/lang/String; = "com.htc.intent.ACTION_HTC_DOCK_SCREEN"

.field private static final INVENSENSE_POWERKEY_FLAG_PATH:Ljava/lang/String; = "/sys/class/bma250_powerkey/bma250/clear_powerkey_flag"

.field static final IPD_TAG:Ljava/lang/String; = "InputDispatcher"

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final KEY_DESK_DOCK_HOME_CAPTURE:Ljava/lang/String; = "launch_dock_screen"

.field private static final LONG_PRESS_CAMERA_LAUNCH_TIME:I = 0x1f4

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_BEHAVIOR_QUERY:Ljava/lang/String; = "htc_home_longpressed_key"

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field private static final PACKAGE_NAME_OF_HTC_SETUP_WIZARD:Ljava/lang/String; = "com.htc.android.htcsetupwizard"

.field static final POWER_SAVER_STATE_DEFAULT:I = 0x0

.field static final POWER_SAVER_STATE_KEY:Ljava/lang/String; = "user_powersaver_enable"

.field static final POWER_SAVER_STATE_OFF:I = 0x0

.field static final POWER_SAVER_STATE_ON:I = 0x1

.field static final POWER_SAVER_TURN_OFF_VIBRATION_STATE_DEFAULT:I = 0x1

.field static final POWER_SAVER_TURN_OFF_VIBRATION_STATE_KEY:Ljava/lang/String; = "powersaver_haptic_feedback"

.field static final POWER_SAVER_TURN_OFF_VIBRATION_STATE_OFF:I = 0x0

.field static final POWER_SAVER_TURN_OFF_VIBRATION_STATE_ON:I = 0x1

.field static final PRINT_ANIM:Z = false

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static USE_HTC_DOCKSCREEN_AS_HOME:I = 0x0

.field static USE_ROSIE_AS_HOME:I = 0x0

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field private static mEnable2KeyHWResetDevice:Z

.field static mLongPressHomeBehavior_Keycode:I

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFlymeBootLayout:Landroid/view/View;

.field mFlymeBootMsgBar:Landroid/widget/ProgressBar;

.field mFlymeBootMsgText:Landroid/widget/TextView;

.field mFlymeBootMsgTitle:Landroid/widget/TextView;

.field mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

.field mMzKeyguardState:Landroid/view/WindowManagerPolicy$WindowState;

.field mMzLastSystemUiFlagsIgnoreRecentPanel:I

.field mMzScreenshotChordLongPress:Ljava/lang/Runnable;

.field private mMzVolumeUpKeyConsumedByScreenshotChord:Z

.field private mMzVolumeUpKeyTime:J

.field mzPwm:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

.field m2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

.field m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

.field mAccelerometerDefault:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field mAppSwitchType:I

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field private mAutoMotiveEnabled:Z

.field mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

.field mAwake:Z

.field private mBeforeSense7:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCalendarDateVibePattern:[J

.field mCameraLensCoverState:I

.field private final mCameraLongPress:Ljava/lang/Runnable;

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mClockTickVibePattern:[J

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCpuFreqRaiser:Landroid/os/PowerManager$HtcCpuCtrl;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentUserId:I

.field private mDelayNeedToEndCall:Z

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismiss2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

.field mDismiss2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

.field mDismissHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field private mDotviewOn:Z

.field mDoublePressInterval:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashlightMode:I

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceTriggerGlobalAction:Z

.field private mForcingHideMenuButton:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/internal/policy/impl/MzGlobalActions;

.field private mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

.field mHandleHomePreparationRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mHasHtcSetupWizardInstalled:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field mHtcDockScreenIntent:Landroid/content/Intent;

.field mHtcModeReceiver:Landroid/content/BroadcastReceiver;

.field private mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field mIsBackKeyInterceptedByLockTaskMode:Z

.field mIsHomeKeyInterceptedByScreenshot:Z

.field mIsHtcDockScreenAsHome:Z

.field private mIsHtcMode:Z

.field private mIsInOOBE:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field final mKeyguardDelegateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

.field mKeyguardDrawComplete:Z

.field private mKeyguardDrawnOnce:Z

.field private mKeyguardHidden:Z

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/internal/policy/impl/LogDecelerateInterpolator;

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPendingMetaAction:Z

.field mPendingPowerKeyUpCanceled:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field private final mPowerLongPressDotview:Ljava/lang/Runnable;

.field private final mPowerLongPress_Toast:Ljava/lang/Runnable;

.field private final mPowerLongPress_Toast_2KeyHWResetHint:Ljava/lang/Runnable;

.field private final mPowerLongPress_Toast_2KeyHWResetIndicator:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerSaverState:I

.field mPowerSaverTurnOffVibrationState:I

.field mPreloadedRecentApps:Z

.field mRecentAppsHeldModifiers:I

.field private mRecentPressed:Z

.field mRecentsVisible:Z

.field private final mRequestTransientNav:Ljava/lang/Runnable;

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field private mRingingSilentFlag:Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private mScreenshotChordEnabled:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSetLastUserActivity:Ljava/lang/Runnable;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mShowingShutdownAnim:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mStopLockTaskModeRunnable:Ljava/lang/Runnable;

.field mSupportAutoRotation:Z

.field private mSupportDotviewLongPressPowerKey:Z

.field private mSupportFlashlight:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTranslucentDecorEnabled:Z

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVoiceContentBottom:I

.field mVoiceContentLeft:I

.field mVoiceContentRight:I

.field mVoiceContentTop:I

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyTriggered:Z

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    .line 198
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 252
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 272
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 273
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0x40

    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0x41

    const-string v4, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 277
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xcf

    const-string v4, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 279
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd0

    const-string v4, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd1

    const-string v4, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v3, 0xd2

    const-string v4, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 490
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 491
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 492
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 494
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 496
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 497
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 677
    sput v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_ROSIE_AS_HOME:I

    .line 678
    sput v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_HTC_DOCKSCREEN_AS_HOME:I

    .line 2594
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 7352
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileHardwareResetTimer2()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_TIME:I

    .line 7353
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileHardwareResetTimer1()I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_NOTIFICATION_TIME:I

    .line 7354
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    .line 7572
    const-string v0, "Android_App_Framework"

    const-string v1, "disable_screenshot"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCustomizationValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->CHECK_SCREEN_SHOT_CHORD:Z

    .line 7643
    const/16 v0, 0xdb

    sput v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressHomeBehavior_Keycode:I

    return-void

    :cond_1
    move v0, v1

    .line 192
    goto/16 :goto_0

    .line 2594
    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 15

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 332
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 335
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 337
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 338
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 339
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 340
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 341
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 342
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 343
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 347
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

    .line 369
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 370
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 376
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 377
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLensCoverState:I

    .line 385
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 398
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 400
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 401
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 405
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 411
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 412
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 419
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 420
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 421
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 422
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 424
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 481
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 483
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 486
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 488
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 500
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    .line 509
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingHideMenuButton:Z

    .line 516
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 556
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 557
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 558
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 559
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 561
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 562
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 563
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 564
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 599
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 602
    new-instance v0, Lcom/android/internal/policy/impl/LogDecelerateInterpolator;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v13}, Lcom/android/internal/policy/impl/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/impl/LogDecelerateInterpolator;

    .line 661
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 671
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoublePressInterval:I

    .line 679
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcDockScreenAsHome:Z

    .line 688
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCpuFreqRaiser:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 690
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandleHomePreparationRunnable:Ljava/lang/Runnable;

    .line 705
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerSaverState:I

    .line 711
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerSaverTurnOffVibrationState:I

    .line 721
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHomeKeyInterceptedByScreenshot:Z

    .line 838
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v2, 0x4000000

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x4000000

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    .line 845
    new-instance v6, Lcom/android/internal/policy/impl/BarController;

    const-string v7, "NavigationBar"

    const/high16 v8, 0x8000000

    const/high16 v9, 0x20000000

    const/high16 v10, -0x80000000

    const/4 v11, 0x2

    const/high16 v12, 0x8000000

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    .line 1067
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 1114
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 1232
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3349
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 3416
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 4738
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 4739
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4741
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 5577
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 5608
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcMode:Z

    .line 5621
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcModeReceiver:Landroid/content/BroadcastReceiver;

    .line 5652
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 5667
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5688
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRequestTransientNav:Ljava/lang/Runnable;

    .line 6347
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6462
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    .line 6465
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetLastUserActivity:Ljava/lang/Runnable;

    .line 7316
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    .line 7318
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

    .line 7334
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    .line 7356
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    .line 7357
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    .line 7358
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    .line 7359
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    .line 7360
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismiss2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    .line 7361
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismiss2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    .line 7410
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    .line 7460
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetHint:Ljava/lang/Runnable;

    .line 7486
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetIndicator:Ljava/lang/Runnable;

    .line 7627
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasHtcSetupWizardInstalled:Z

    .line 7628
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInOOBE:Z

    .line 7667
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashlightMode:I

    .line 7668
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportFlashlight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportFlashlight:Z

    .line 7669
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isBeforeSense7()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBeforeSense7:Z

    .line 7670
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTriggerGlobalAction:Z

    .line 7721
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLongPress:Ljava/lang/Runnable;

    .line 7735
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;

    invoke-direct {v0, p0, v14}, Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingingSilentFlag:Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;

    .line 7737
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 7763
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportDotviewLongPressPowerKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportDotviewLongPressPowerKey:Z

    .line 7764
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    .line 7765
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDelayNeedToEndCall:Z

    .line 7783
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$33;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPressDotview:Ljava/lang/Runnable;

    .line 7842
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    .line 7872
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsBackKeyInterceptedByLockTaskMode:Z

    .line 7874
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStopLockTaskModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private EndCallWithDotview()V
    .locals 5

    .prologue
    .line 7810
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 7811
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_1

    .line 7812
    const/4 v0, 0x0

    .line 7813
    .local v0, "hungUp":Z
    const-string v2, "InputDispatcher"

    const-string v3, "dotview : endCall()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7814
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    .line 7816
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v2, :cond_0

    .line 7817
    const-string v2, "InputDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dotview : endCall() successful="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7822
    .end local v0    # "hungUp":Z
    :cond_0
    :goto_0
    return-void

    .line 7820
    :cond_1
    const-string v2, "InputDispatcher"

    const-string v3, "EndCallWithDotview() telecomManager=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcMode:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcMode:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->lockLandscapeForHtcMode(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    return p1
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_TIME:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 184
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_NOTIFICATION_TIME:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingingSilentFlag:Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDelayNeedToEndCall:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHandleDotviewLongPressPowerkey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->EndCallWithDotview()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method private applyLidSwitchState()V
    .locals 5

    .prologue
    .line 6524
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 6525
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 6530
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6531
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6532
    monitor-exit v1

    .line 6533
    return-void

    .line 6532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3806
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 3809
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 3810
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3811
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3812
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3813
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 3821
    :cond_3
    :goto_0
    return-void

    .line 3815
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3816
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3817
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3818
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    .prologue
    .line 6990
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static awakenDreams()V
    .locals 2

    .prologue
    .line 2562
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2563
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 2565
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2566
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private broadcastCoverIntentAfterBooting()V
    .locals 15

    .prologue
    .line 6267
    const-string v5, "sys/android_cover/read_att"

    .line 6269
    .local v5, "file":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    const-string v12, "sys/android_cover/read_att"

    invoke-direct {v8, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 6270
    .local v8, "reader":Ljava/io/FileReader;
    const/16 v12, 0x32

    new-array v2, v12, [C

    .line 6271
    .local v2, "buffer":[C
    invoke-virtual {v8, v2}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 6273
    .local v3, "charCount":I
    if-gez v3, :cond_1

    .line 6274
    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v12, :cond_0

    const-string v12, "WindowManager"

    const-string v13, "unable to read sys/android_cover/read_att"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6307
    .end local v2    # "buffer":[C
    .end local v3    # "charCount":I
    .end local v8    # "reader":Ljava/io/FileReader;
    :cond_0
    :goto_0
    return-void

    .line 6276
    .restart local v2    # "buffer":[C
    .restart local v3    # "charCount":I
    .restart local v8    # "reader":Ljava/io/FileReader;
    :cond_1
    new-instance v9, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v9, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    .line 6277
    .local v9, "str":Ljava/lang/String;
    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v12, :cond_2

    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read_att("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6278
    :cond_2
    const-string v12, "[ :,=\\s]+"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 6279
    .local v11, "tokens":[Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 6280
    .local v7, "intent":Landroid/content/Intent;
    const-string v12, "com.htc.cover.closed"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6283
    const-string v0, "ATT_N"

    .line 6284
    .local v0, "att_N_token":Ljava/lang/String;
    const-string v1, "ATT_S"

    .line 6285
    .local v1, "att_S_token":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v12, v11

    if-ge v6, v12, :cond_0

    .line 6286
    aget-object v10, v11, v6

    .line 6287
    .local v10, "token":Ljava/lang/String;
    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v12, :cond_3

    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read_att(Token):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6288
    :cond_3
    const-string v12, "ATT_N"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "ATT_S"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_6

    .line 6289
    :cond_4
    const-string v13, "north"

    const-string v12, "ATT_N"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v7, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6290
    add-int/lit8 v6, v6, 0x1

    aget-object v10, v11, v6

    .line 6291
    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v12, :cond_5

    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read_att(Token):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6292
    :cond_5
    const-string v12, "state"

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6293
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6296
    const-string v12, "0"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    .line 6297
    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v12, :cond_6

    .line 6298
    const-string v12, "InputDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDotviewOn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6285
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 6289
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 6304
    .end local v0    # "att_N_token":Ljava/lang/String;
    .end local v1    # "att_S_token":Ljava/lang/String;
    .end local v2    # "buffer":[C
    .end local v3    # "charCount":I
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "reader":Ljava/io/FileReader;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "token":Ljava/lang/String;
    .end local v11    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 6305
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v12, :cond_0

    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read(sys/android_cover/read_att) - Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private canHideNavigationBar()Z
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 1001
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeCallbacksForPowerKey()V

    .line 1008
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 1011
    :cond_1
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1038
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 4

    .prologue
    .line 3244
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    .line 3245
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3247
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3248
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3249
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3257
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3251
    :catch_0
    move-exception v0

    .line 3252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when cancelling recent apps preload"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3254
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .prologue
    .line 6968
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    .line 6969
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    .line 6970
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 6971
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 6973
    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 3

    .prologue
    .line 1752
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_0

    .line 1753
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1754
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1755
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1756
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1758
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private enablePointerLocation()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1725
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    .line 1726
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1727
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1728
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1731
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1732
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1736
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1737
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1738
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1741
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1742
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1743
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1745
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1746
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1747
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1749
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private finishKeyguardDrawn()V
    .locals 3

    .prologue
    .line 5786
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5787
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v0, :cond_1

    .line 5788
    :cond_0
    monitor-exit v1

    .line 5798
    :goto_0
    return-void

    .line 5791
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 5792
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2

    .line 5793
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5795
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5797
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn()V

    goto :goto_0

    .line 5795
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private finishScreenTurningOn()V
    .locals 6

    .prologue
    .line 5847
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5848
    :try_start_0
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishScreenTurningOn: mAwake="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScreenOnEarly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScreenOnFully="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mKeyguardDrawComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWindowManagerDrawComplete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-nez v2, :cond_3

    .line 5857
    :cond_1
    monitor-exit v3

    .line 5889
    :cond_2
    :goto_0
    return-void

    .line 5860
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    const-string v4, "Finished screen turning on..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 5862
    .local v1, "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 5863
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5867
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    if-eqz v2, :cond_7

    .line 5868
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 5869
    const/4 v0, 0x1

    .line 5870
    .local v0, "enableScreen":Z
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v2, :cond_5

    .line 5871
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5872
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hideBootMessages()V

    .line 5877
    :cond_5
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5879
    if-eqz v1, :cond_6

    .line 5880
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 5883
    :cond_6
    if-eqz v0, :cond_2

    .line 5885
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5886
    :catch_0
    move-exception v2

    goto :goto_0

    .line 5875
    .end local v0    # "enableScreen":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "enableScreen":Z
    goto :goto_1

    .line 5877
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private finishWindowsDrawn()V
    .locals 2

    .prologue
    .line 5833
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5834
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v0, :cond_1

    .line 5835
    :cond_0
    monitor-exit v1

    .line 5842
    :goto_0
    return-void

    .line 5838
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 5839
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5841
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn()V

    goto :goto_0

    .line 5839
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2582
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2584
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2585
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_0
    return-object v0
.end method

.method private static getCustomizationValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "readerName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 7577
    const/4 v0, 0x0

    .line 7579
    .local v0, "bResult":Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 7580
    .local v1, "customMgr":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v1, :cond_0

    .line 7581
    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 7583
    .local v2, "customReader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_0

    .line 7584
    invoke-interface {v2, p1, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7588
    .end local v2    # "customReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    const-string v3, "InputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CustomValue ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7590
    return v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .prologue
    .line 2573
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 6253
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 6254
    .local v0, "ar":[I
    if-nez v0, :cond_1

    .line 6255
    const/4 v2, 0x0

    .line 6261
    :cond_0
    return-object v2

    .line 6257
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 6258
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 6259
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 6258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 4

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const/high16 v0, 0x40200000    # 2.5f

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 1033
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 3224
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3226
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private static getSystemVibrationDurationInt()I
    .locals 7

    .prologue
    .line 7258
    const/16 v2, 0x14

    .line 7259
    .local v2, "nDefault":I
    const/16 v3, 0x14

    .line 7260
    .local v3, "nResult":I
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 7261
    .local v0, "customMgr":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_0

    .line 7262
    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 7264
    .local v1, "customReader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_0

    .line 7265
    const-string v4, "vibration_duration"

    const/16 v5, 0x14

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    .line 7269
    .end local v1    # "customReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_1

    .line 7270
    const-string v4, "InputDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VirtualKey vibrate duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7273
    :cond_1
    return v3
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1213
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_0

    .line 1214
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1217
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInOOBE:Z

    if-eqz v0, :cond_1

    .line 1218
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    .line 1219
    const-string v0, "InputDispatcher"

    const-string v1, "APP_SWITCH has been blocked because Setup Wizard (OOBE) has not completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    if-nez v0, :cond_0

    .line 1227
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_0
.end method

.method private handleHideBootMessage()V
    .locals 2

    .prologue
    .line 5892
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5893
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v0, :cond_1

    .line 5894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5895
    monitor-exit v1

    .line 5904
    :cond_0
    :goto_0
    return-void

    .line 5897
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5899
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 5900
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5901
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 5897
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleLongPressOnHome()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1191
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1194
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInOOBE:Z

    if-eqz v0, :cond_1

    .line 1195
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    .line 1196
    const-string v0, "InputDispatcher"

    const-string v1, "ASSIST has been blocked because Setup Wizard (OOBE) has not completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    if-nez v0, :cond_0

    .line 1205
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1206
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressHomeBehavior_Keycode:I

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V

    .line 1207
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressHomeBehavior_Keycode:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V

    goto :goto_0
.end method

.method private hasPackageInstalled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 7632
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 7636
    :cond_0
    :goto_0
    return v0

    .line 7633
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private hasRingingCall()Z
    .locals 4

    .prologue
    .line 7243
    const/4 v0, 0x0

    .line 7244
    .local v0, "bResult":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 7245
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 7246
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    .line 7251
    :goto_0
    return v0

    .line 7248
    :cond_0
    const-string v2, "WindowManager"

    const-string v3, "couldn\'t get TelecomManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideRecentApps(ZZ)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .prologue
    .line 3294
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3296
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3297
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3298
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3305
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3300
    :catch_0
    move-exception v0

    .line 3301
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when closing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3303
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3168
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 3169
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 3170
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    .line 3172
    .local v2, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 3173
    const/4 v1, 0x1

    .line 3176
    .end local v2    # "delayMillis":J
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 1
    .param p1, "handled"    # Z

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(ZZ)V

    .line 954
    return-void
.end method

.method private interceptPowerKeyDown(ZZ)V
    .locals 6
    .param p1, "handled"    # Z
    .param p2, "fromPowerKey"    # Z

    .prologue
    .line 958
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 961
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTriggerGlobalAction:Z

    if-eqz v0, :cond_1

    .line 963
    :cond_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileScreenCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 975
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileHardwareResetEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 976
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    if-eqz v0, :cond_4

    .line 977
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetHint:Ljava/lang/Runnable;

    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_NOTIFICATION_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 985
    :cond_2
    :goto_1
    return-void

    .line 967
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 981
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_NOTIFICATION_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .param p1, "canceled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 988
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 992
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeCallbacksForPowerKey()V

    .line 995
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 997
    :cond_0
    return v0
.end method

.method private interceptPowerVolumeUPLongPressToast()V
    .locals 4

    .prologue
    .line 7379
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileHardwareResetEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7380
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 7381
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    .line 7382
    const-string v0, "InputDispatcher"

    const-string v1, "<POWER+VOL_UP> Post reset notification UI."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7385
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 7386
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetIndicator:Ljava/lang/Runnable;

    sget v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->HARDWARE_RESET_NOTIFICATION_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7389
    :cond_1
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 1014
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 1016
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1017
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1019
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1020
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1022
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1025
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 6210
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBeforeSense7()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 7685
    const/4 v0, 0x0

    .line 7686
    .local v0, "beforeSense7":Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    .line 7687
    .local v1, "customizeManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v1, :cond_0

    .line 7688
    const-string v6, "System"

    invoke-virtual {v1, v6, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 7689
    .local v2, "customizeReader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v2, :cond_0

    .line 7690
    const-string v6, "sense_version"

    const-string v7, "7.0"

    invoke-interface {v2, v6, v7}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7691
    .local v3, "strVersion":Ljava/lang/String;
    const-string v6, "7.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 7694
    .end local v2    # "customizeReader":Lcom/htc/customization/HtcCustomizationReader;
    .end local v3    # "strVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .restart local v2    # "customizeReader":Lcom/htc/customization/HtcCustomizationReader;
    .restart local v3    # "strVersion":Ljava/lang/String;
    :cond_1
    move v0, v5

    .line 7691
    goto :goto_0
.end method

.method private static isDisable2KeyHWResetDevice(Ljava/lang/String;)Z
    .locals 3
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    .line 7541
    const/16 v1, 0x4a

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "m7cdtu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "m7cdug"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "m7cdwg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m7dcg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "m7dtg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "m7dtu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m7dug"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m7wlj"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "m7wls"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "m7wlv"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dlpdtu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dlpdug"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dlpdwg"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dlxj"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dlxr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dlxub1"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dlxul"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dlxu"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "dlx"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "dlxpul"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "dlxpwl"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "generic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "z4dcg"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "z4dtg"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "z4dug"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "z4td"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "z4u"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "cp2dcg"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "cp2dtg"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "cp2dug"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "cp2u"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "cp3dcg"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "cp3dtg"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "cp3dug"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "cp3u"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "cp3edcg"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "cp3edtg"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "cp3edug"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "cp5dtu"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "cp5dug"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "cp5dwg"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "htc_cp5wl"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "cp3mini"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "csndug"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "htc_csnu"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "endeavortd"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "endeavoru"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "enrc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "enrc2u"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "evitautl"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "evita"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "evitareul"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "g3u"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "imnj"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "jeldd"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "jewel"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "k2wl"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "k2cl"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "k2entu"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "k2plccl"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "k2u"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "k2ul"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "totemc2"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "totem"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "ville"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "villec2"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "vigor"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "zaraclvzw"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "zaracl"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "zaradug"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "zara"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "zarawl"

    aput-object v2, v0, v1

    .line 7551
    .local v0, "disable2KeyHWResetList":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6743
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .param p1, "accessibilityMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1923
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1929
    :cond_0
    :goto_0
    return v0

    .line 1925
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1927
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 6976
    const/16 v0, 0x1800

    .line 6977
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInCall()Z
    .locals 4

    .prologue
    .line 7828
    const/4 v0, 0x0

    .line 7829
    .local v0, "bResult":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 7830
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 7831
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 7836
    :goto_0
    return v0

    .line 7833
    :cond_0
    const-string v2, "WindowManager"

    const-string v3, "couldn\'t get TelecomManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKeyguardSecureIncludingHidden()Z
    .locals 1

    .prologue
    .line 5948
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 6206
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStatusBarKeyguard()Z
    .locals 1

    .prologue
    .line 4627
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportDotviewLongPressPowerKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7768
    const/4 v2, 0x0

    .line 7769
    .local v2, "supportDotviewLongPressPowerKey":Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 7770
    .local v0, "customizeManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_0

    .line 7771
    const-string v3, "Android_App_Framework"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 7772
    .local v1, "customizeReader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_0

    .line 7773
    const-string v3, "powerkey_answer_phone"

    invoke-interface {v1, v3, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 7776
    .end local v1    # "customizeReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    return v2
.end method

.method private static isSupportFlashlight()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7673
    const/4 v2, 0x0

    .line 7674
    .local v2, "supportFlashlight":Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 7675
    .local v0, "customizeManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_0

    .line 7676
    const-string v3, "Android_App_Framework"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 7677
    .local v1, "customizeReader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_0

    .line 7678
    const-string v3, "quicklaunch_flashlight"

    invoke-interface {v1, v3, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 7681
    .end local v1    # "customizeReader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    return v2
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5475
    sparse-switch p1, :sswitch_data_0

    .line 5498
    :cond_0
    :goto_0
    return v0

    .line 5480
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 5496
    goto :goto_0

    .line 5475
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 5928
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5929
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    goto :goto_0
.end method

.method private launchAssistAction()V
    .locals 1

    .prologue
    .line 3200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;)V

    .line 3201
    return-void
.end method

.method private launchAssistAction(Ljava/lang/String;)V
    .locals 6
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 3204
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3205
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 3207
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 3208
    if-eqz p1, :cond_0

    .line 3209
    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3211
    :cond_0
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3215
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3220
    :cond_1
    :goto_0
    return-void

    .line 3216
    :catch_0
    move-exception v0

    .line 3217
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3180
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3181
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3184
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3185
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3189
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 3190
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 3191
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 3193
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3197
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 3194
    :catch_0
    move-exception v0

    .line 3195
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private lockLandscapeForHtcMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 5644
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcMode:Z

    .line 5645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5646
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5647
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5648
    monitor-exit v1

    .line 5649
    return-void

    .line 5648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private needHandleDotviewLongPressPowerkey()Z
    .locals 1

    .prologue
    .line 7780
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportDotviewLongPressPowerKey:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

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

.method private notifyDriverPowerKeyPressed(C)V
    .locals 6
    .param p1, "enterMode"    # C

    .prologue
    .line 7601
    const/4 v1, 0x0

    .line 7604
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/bma250_powerkey/bma250/clear_powerkey_flag"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7605
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/bma250_powerkey/bma250/clear_powerkey_flag"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    move-object v1, v2

    .line 7608
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :cond_0
    if-eqz v1, :cond_1

    .line 7609
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    .line 7610
    const-string v3, "InputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify PowerKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7615
    :cond_1
    if-eqz v1, :cond_2

    .line 7617
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 7622
    :cond_2
    :goto_0
    return-void

    .line 7612
    :catch_0
    move-exception v0

    .line 7613
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "InputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7615
    if-eqz v1, :cond_2

    .line 7617
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 7618
    :catch_1
    move-exception v3

    goto :goto_0

    .line 7615
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 7617
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 7619
    :cond_3
    :goto_1
    throw v3

    .line 7618
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4261
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 4262
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4263
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 4264
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4266
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_1

    .line 4267
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    .line 4269
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 4270
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4271
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_2

    .line 4272
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 4277
    :cond_2
    return-void
.end method

.method private offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4280
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4281
    .local v1, "gravity":I
    and-int/lit8 v5, v1, 0x6

    packed-switch v5, :pswitch_data_0

    .line 4296
    :cond_0
    :goto_0
    :pswitch_0
    and-int/lit8 v5, v1, 0x60

    sparse-switch v5, :sswitch_data_0

    .line 4311
    :cond_1
    :goto_1
    return-void

    .line 4284
    :pswitch_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v3, v5, v6

    .line 4285
    .local v3, "right":I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    if-ge v5, v3, :cond_0

    .line 4286
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    goto :goto_0

    .line 4290
    .end local v3    # "right":I
    :pswitch_2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v6

    .line 4291
    .local v2, "left":I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    if-ge v5, v2, :cond_0

    .line 4292
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    goto :goto_0

    .line 4299
    .end local v2    # "left":I
    :sswitch_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v5, v6

    .line 4300
    .local v0, "bottom":I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    if-ge v5, v0, :cond_1

    .line 4301
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    goto :goto_1

    .line 4305
    .end local v0    # "bottom":I
    :sswitch_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v6

    .line 4306
    .local v4, "top":I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    if-ge v5, v4, :cond_1

    .line 4307
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    goto :goto_1

    .line 4281
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 4296
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    .prologue
    .line 6728
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6740
    :cond_0
    :goto_0
    return-void

    .line 6731
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6733
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6736
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 6738
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 6739
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private powerShortPress(J)V
    .locals 5
    .param p1, "eventTime"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 1041
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    if-gez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_shortPressOnPowerBehavior#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 1046
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_0

    .line 1065
    :goto_0
    :pswitch_0
    return-void

    .line 1050
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1054
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1059
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 4

    .prologue
    .line 3230
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3232
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3233
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3234
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3241
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3236
    :catch_0
    move-exception v0

    .line 3237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3239
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private processKeyguardSetHiddenResultLw(I)Z
    .locals 4
    .param p1, "setHiddenResult"    # I

    .prologue
    const/4 v0, 0x1

    .line 4611
    if-ne p1, v0, :cond_0

    .line 4613
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4614
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4622
    :goto_0
    return v0

    .line 4616
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4618
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4619
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 4622
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readCameraLensCoverState()V
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLensCoverState:I

    .line 1920
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1451
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_longPressOnHomeBehavior#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1453
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v0, v4, :cond_1

    .line 1455
    :cond_0
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1458
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_doubleTapOnHomeBehavior#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1460
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v0, v3, :cond_3

    .line 1462
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1467
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v0, :cond_4

    .line 1468
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1469
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1472
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_4

    const/16 v0, 0xbb

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1473
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1478
    :cond_4
    return-void
.end method

.method private readRotation(I)I
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 1762
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1763
    .local v0, "rotation":I
    sparse-switch v0, :sswitch_data_0

    .line 1776
    .end local v0    # "rotation":I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1765
    .restart local v0    # "rotation":I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1767
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1769
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 1771
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 1773
    .end local v0    # "rotation":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1763
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private removeCallbacksForPowerKey()V
    .locals 2

    .prologue
    .line 7556
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportDotviewLongPressPowerKey:Z

    if-eqz v0, :cond_0

    .line 7557
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPressDotview:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7561
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    if-eqz v0, :cond_1

    .line 7562
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetHint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7563
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7567
    :goto_0
    return-void

    .line 7565
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 10
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5696
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 5697
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5699
    monitor-exit v9

    .line 5724
    :goto_0
    return-void

    .line 5702
    :cond_0
    const/4 v2, 0x0

    .line 5703
    .local v2, "forbidStatusBar":Z
    const/4 v1, 0x0

    .line 5704
    .local v1, "forbidNavigationBar":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5705
    .local v5, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1
    if-eqz v5, :cond_1

    .line 5706
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->customFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    or-int/2addr v2, v6

    .line 5707
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->customFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    or-int/2addr v1, v6

    .line 5709
    :cond_1
    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v7

    .line 5710
    .local v4, "sb":Z
    :goto_4
    if-nez v1, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v7

    .line 5712
    .local v3, "nb":Z
    :goto_5
    if-nez v4, :cond_2

    if-eqz v3, :cond_c

    .line 5713
    :cond_2
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5714
    .local v0, "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_6
    xor-int v6, v4, v3

    if-eqz v6, :cond_9

    if-eq v0, p1, :cond_9

    .line 5716
    monitor-exit v9

    goto :goto_0

    .line 5723
    .end local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v1    # "forbidNavigationBar":Z
    .end local v2    # "forbidStatusBar":Z
    .end local v3    # "nb":Z
    .end local v4    # "sb":Z
    .end local v5    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5704
    .restart local v1    # "forbidNavigationBar":Z
    .restart local v2    # "forbidStatusBar":Z
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    .restart local v5    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_4
    move v6, v8

    .line 5706
    goto :goto_2

    :cond_5
    move v6, v8

    .line 5707
    goto :goto_3

    :cond_6
    move v4, v8

    .line 5709
    goto :goto_4

    .restart local v4    # "sb":Z
    :cond_7
    move v3, v8

    .line 5710
    goto :goto_5

    .line 5713
    .restart local v3    # "nb":Z
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 5718
    .restart local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_9
    if-eqz v4, :cond_a

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 5719
    :cond_a
    if-eqz v3, :cond_b

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 5720
    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 5721
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 5723
    .end local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_c
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6008
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6010
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6014
    :cond_0
    :goto_0
    return-void

    .line 6011
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendMenuKey()V
    .locals 4

    .prologue
    .line 7863
    const/16 v1, 0x52

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V

    .line 7864
    const/16 v1, 0x52

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7868
    :goto_0
    return-void

    .line 7865
    :catch_0
    move-exception v0

    .line 7866
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Inject event failed, could not send menu key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldDispatchInputWhenNonInteractive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5516
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 1

    .prologue
    .line 1719
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowFlashlightItem()Z
    .locals 8

    .prologue
    .line 7698
    const/4 v5, 0x0

    .line 7699
    .local v5, "result":Z
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBeforeSense7:Z

    if-eqz v6, :cond_0

    .line 7700
    const-string v4, "com.htc.flashlight"

    .line 7701
    .local v4, "packageName":Ljava/lang/String;
    const-string v0, "com.htc.flashlight.FlashlightActivity"

    .line 7702
    .local v0, "className":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 7703
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v6, "com.htc.flashlight"

    const-string v7, "com.htc.flashlight.FlashlightActivity"

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7705
    .local v2, "mainComponent":Landroid/content/ComponentName;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7706
    const/4 v5, 0x1

    .line 7713
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "mainComponent":Landroid/content/ComponentName;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_0
    return v5

    .line 7707
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "mainComponent":Landroid/content/ComponentName;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 7708
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "InputDispatcher"

    const-string v7, "com.htc.flashlight.FlashlightActivity Not Found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7711
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "mainComponent":Landroid/content/ComponentName;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private showRecentApps(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 3280
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3282
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3283
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3284
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3291
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3286
    :catch_0
    move-exception v0

    .line 3287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3289
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 4755
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v3, :cond_0

    .line 4756
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->saveScreenshotState()V

    .line 4759
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4760
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_1

    .line 4761
    monitor-exit v4

    .line 4810
    :goto_0
    return-void

    .line 4763
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4765
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4766
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4767
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 4804
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4806
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4807
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4809
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private toggleRecentApps()V
    .locals 4

    .prologue
    .line 3260
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3262
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3263
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3264
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3271
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3266
    :catch_0
    move-exception v0

    .line 3267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when toggling recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3269
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 6499
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 6500
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 6502
    .local v0, "enable":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 6503
    if-eqz v0, :cond_2

    .line 6505
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6510
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 6512
    :cond_0
    monitor-exit v2

    .line 6513
    return-void

    .line 6500
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6508
    .restart local v0    # "enable":Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 6512
    .end local v0    # "enable":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 20
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 6884
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6887
    .local v15, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzSetTransWindow(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 6888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 6891
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x7d0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/4 v14, 0x1

    .line 6892
    .local v14, "statusBarHasFocus":Z
    :goto_1
    if-eqz v14, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v18

    if-nez v18, :cond_1

    .line 6893
    const/16 v6, 0x1806

    .line 6897
    .local v6, "flags":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 6898
    const/high16 v18, -0x40000000    # -2.0f

    or-int v6, v6, v18

    .line 6900
    :cond_0
    xor-int/lit8 v18, v6, -0x1

    and-int v18, v18, p3

    and-int v19, p2, v6

    or-int p3, v18, v19

    .line 6903
    .end local v6    # "flags":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v15, v0, :cond_2

    .line 6904
    const v18, 0x3fff7fff

    and-int p3, p3, v18

    .line 6909
    :cond_2
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/4 v10, 0x1

    .line 6911
    .local v10, "immersiveSticky":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const/4 v9, 0x1

    .line 6915
    .local v9, "hideStatusBarWM":Z
    :goto_3
    and-int/lit8 v18, p3, 0x4

    if-eqz v18, :cond_d

    const/4 v8, 0x1

    .line 6917
    .local v8, "hideStatusBarSysui":Z
    :goto_4
    and-int/lit8 v18, p3, 0x2

    if-eqz v18, :cond_e

    const/4 v7, 0x1

    .line 6920
    .local v7, "hideNavBarSysui":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    if-nez v9, :cond_4

    if-eqz v8, :cond_3

    if-nez v10, :cond_4

    :cond_3
    if-eqz v14, :cond_f

    :cond_4
    const/16 v17, 0x1

    .line 6926
    .local v17, "transientStatusBarAllowed":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    if-eqz v7, :cond_10

    if-eqz v10, :cond_10

    const/16 v16, 0x1

    .line 6930
    .local v16, "transientNavBarAllowed":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_11

    if-nez v17, :cond_11

    if-eqz v8, :cond_11

    const/4 v5, 0x1

    .line 6932
    .local v5, "denyTransientStatus":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_12

    if-nez v16, :cond_12

    const/4 v4, 0x1

    .line 6934
    .local v4, "denyTransientNav":Z
    :goto_9
    if-nez v5, :cond_5

    if-eqz v4, :cond_6

    .line 6936
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 6942
    and-int/lit8 p3, p3, -0x8

    .line 6946
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 6949
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v12

    .line 6950
    .local v12, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v11

    .local v11, "newImmersiveMode":Z

    goto/16 :goto_flyme_0

    if-eqz p1, :cond_8

    if-eq v12, v11, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v13

    .local v13, "pkg":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->customFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_7

    .line 6955
    const/4 v11, 0x0

    .line 6958
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v11, v1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;ZZ)V

    .line 6962
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_8
    :goto_flyme_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->getLauncherFlag(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result p3

    .line 6964
    return p3

    .line 6884
    .end local v4    # "denyTransientNav":Z
    .end local v5    # "denyTransientStatus":Z
    .end local v7    # "hideNavBarSysui":Z
    .end local v8    # "hideStatusBarSysui":Z
    .end local v9    # "hideStatusBarWM":Z
    .end local v10    # "immersiveSticky":Z
    .end local v11    # "newImmersiveMode":Z
    .end local v12    # "oldImmersiveMode":Z
    .end local v14    # "statusBarHasFocus":Z
    .end local v15    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v16    # "transientNavBarAllowed":Z
    .end local v17    # "transientStatusBarAllowed":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_0

    .line 6891
    .restart local v15    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 6909
    .restart local v14    # "statusBarHasFocus":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 6911
    .restart local v10    # "immersiveSticky":Z
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 6915
    .restart local v9    # "hideStatusBarWM":Z
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 6917
    .restart local v8    # "hideStatusBarSysui":Z
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 6920
    .restart local v7    # "hideNavBarSysui":Z
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 6926
    .restart local v17    # "transientStatusBarAllowed":Z
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 6930
    .restart local v16    # "transientNavBarAllowed":Z
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 6932
    .restart local v5    # "denyTransientStatus":Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_9
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 6832
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6833
    .local v4, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v4, :cond_1

    move v0, v5

    .line 6879
    :goto_1
    return v0

    .line 6832
    .end local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 6836
    .restart local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-ne v6, v1, :cond_2

    move v0, v5

    .line 6843
    goto :goto_1

    .line 6846
    :cond_2
    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int v2, v6, v7

    .line 6849
    .local v2, "tmpVisibility":I
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v6, :cond_3

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v6, v7, :cond_3

    .line 6850
    const/4 v6, 0x7

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v6

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v2, v6

    .line 6852
    :cond_3
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v4, v6, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v3

    .line 6853
    .local v3, "visibility":I
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v3, v6

    .line 6855
    .local v0, "diff":I
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingHideMenuButton:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6857
    .local v1, "needsMenu":Z
    :goto_2
    if-nez v0, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v6, v1, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-ne v6, v7, :cond_5

    move v0, v5

    goto :goto_1

    .end local v1    # "needsMenu":Z
    :cond_4
    move v1, v5

    goto :goto_2

    .restart local v1    # "needsMenu":Z
    :cond_5
    invoke-static {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->setLastSystemUiFlagsIgnoreRecentPanel(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    .prologue
    .line 1711
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    .line 1716
    :goto_0
    return-void

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    goto :goto_0
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    .locals 11
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I

    .prologue
    .line 2158
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/graphics/Bitmap;)Landroid/view/View;
    .locals 16
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2170
    if-nez p2, :cond_1

    .line 2171
    const/4 v13, 0x0

    .line 2325
    :cond_0
    :goto_0
    return-object v13

    .line 2174
    :cond_1
    const/4 v12, 0x0

    .line 2175
    .local v12, "wm":Landroid/view/WindowManager;
    const/4 v9, 0x0

    .line 2178
    .local v9, "view":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2180
    .local v4, "context":Landroid/content/Context;
    sget-boolean v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v13, :cond_2

    const-string v13, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addStartingWindow "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": nonLocalizedLabel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " theme="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_2
    invoke-virtual {v4}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    if-eqz p6, :cond_4

    .line 2186
    :cond_3
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v13}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 2187
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2193
    :cond_4
    :goto_1
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v10

    .line 2194
    .local v10, "win":Landroid/view/Window;
    invoke-virtual {v10}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2195
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-nez v13, :cond_5

    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2200
    :cond_5
    sget-boolean v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v13, :cond_6

    const-string v13, "WindowManager"

    const-string v14, "No starting window because it has set windowDisablePreview"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2202
    :cond_6
    const/4 v13, 0x0

    .line 2319
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_0

    .line 2320
    const-string v14, "WindowManager"

    const-string v15, "view not successfully added to wm, removing view"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-interface {v12, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2205
    :cond_7
    :try_start_3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2209
    .local v7, "r":Landroid/content/res/Resources;
    const-string v3, ""

    .line 2210
    .local v3, "componentName":Ljava/lang/String;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2211
    .local v2, "componentChars":Ljava/lang/CharSequence;
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 2212
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2214
    :cond_8
    invoke-virtual {v10, v3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 2217
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroid/view/Window;->setType(I)V

    .line 2223
    or-int/lit8 v13, p9, 0x10

    or-int/lit8 v13, v13, 0x8

    const/high16 v14, 0x20000

    or-int/2addr v13, v14

    or-int/lit8 v14, p9, 0x10

    or-int/lit8 v14, v14, 0x8

    const/high16 v15, 0x20000

    or-int/2addr v14, v15

    invoke-virtual {v10, v13, v14}, Landroid/view/Window;->setFlags(II)V

    move/from16 v0, p9

    invoke-static {v10, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->setWinFlags(Landroid/view/Window;I)V

    .line 2233
    move/from16 v0, p7

    invoke-virtual {v10, v0}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2234
    move/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 2236
    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/view/Window;->setLayout(II)V

    .line 2239
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2240
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2241
    move-object/from16 v0, p2

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2242
    invoke-virtual {v10}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v13

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2244
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2246
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2248
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v13

    if-nez v13, :cond_9

    .line 2249
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v13, v13, 0x80

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2252
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Starting "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2254
    const-string v13, "window"

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Landroid/view/WindowManager;

    move-object v12, v0

    .line 2258
    const-string v13, "new_starting_window"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2259
    if-eqz v10, :cond_c

    instance-of v13, v10, Lcom/android/internal/policy/impl/PhoneWindow;

    if-eqz v13, :cond_c

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-boolean v13, v13, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-nez v13, :cond_a

    invoke-static {v4, v3}, Lcom/android/internal/util/RecentAnimationUtil;->isHTCRecentStartingWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2268
    :cond_a
    move-object v0, v10

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow;

    move-object v13, v0

    const/4 v14, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v13, v14, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setSimpleDecorView(ZLandroid/graphics/Bitmap;)V

    .line 2270
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez v13, :cond_b

    .line 2272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v11

    .line 2273
    .local v11, "win2":Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v13

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2277
    .end local v11    # "win2":Landroid/view/Window;
    :cond_b
    sget-boolean v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v13, :cond_c

    .line 2278
    const-string v13, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addStartingWindow(), windowAnimations = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :cond_c
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 2286
    invoke-virtual {v10}, Landroid/view/Window;->isFloating()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 2294
    sget-boolean v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v13, :cond_d

    const-string v13, "WindowManager"

    const-string v14, "No starting window because the window is floating"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2296
    :cond_d
    const/4 v13, 0x0

    .line 2319
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_0

    .line 2320
    const-string v14, "WindowManager"

    const-string v15, "view not successfully added to wm, removing view"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-interface {v12, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2304
    :cond_e
    :try_start_4
    invoke-interface {v12, v9, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2308
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v13

    if-eqz v13, :cond_f

    move-object v13, v9

    .line 2319
    :goto_2
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_0

    .line 2320
    const-string v14, "WindowManager"

    const-string v15, "view not successfully added to wm, removing view"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-interface {v12, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2308
    :cond_f
    const/4 v13, 0x0

    goto :goto_2

    .line 2309
    .end local v2    # "componentChars":Ljava/lang/CharSequence;
    .end local v3    # "componentName":Ljava/lang/String;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v10    # "win":Landroid/view/Window;
    :catch_0
    move-exception v5

    .line 2311
    .local v5, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_5
    const-string v13, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " already running, starting window not displayed. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2319
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_10

    .line 2320
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-interface {v12, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2325
    .end local v5    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_10
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2313
    :catch_1
    move-exception v5

    .line 2317
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v13, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " failed creating starting window"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2319
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_10

    .line 2320
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-interface {v12, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_3

    .line 2319
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_11

    .line 2320
    const-string v14, "WindowManager"

    const-string v15, "view not successfully added to wm, removing view"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-interface {v12, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_11
    throw v13

    .line 2188
    .restart local v4    # "context":Landroid/content/Context;
    :catch_2
    move-exception v13

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1937
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 1939
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1940
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1941
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 1943
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1946
    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1947
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_1

    .line 1948
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1952
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_2

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1955
    :cond_2
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1957
    :cond_3
    return-void

    .line 1937
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 3428
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 3429
    and-int/lit16 v0, p1, 0x4000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentsVisible:Z

    .line 3433
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3436
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0

    .line 3429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1876
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1897
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-nez v0, :cond_1

    .line 1898
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->customFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->customFlags:I

    .line 1902
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    .line 1904
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1907
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 1909
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x600

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1912
    :cond_3
    return-void

    .line 1880
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1882
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1890
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v0, :cond_0

    .line 1891
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1892
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 1876
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 4633
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_1

    .line 4635
    :cond_0
    const/4 v0, 0x0

    .line 4637
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4345
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 4346
    .local v2, "fl":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7db

    if-ne v5, v8, :cond_0

    .line 4348
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 4349
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 4352
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v5, :cond_c

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingHideMenuButton:Z

    .line 4355
    :cond_0
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d0

    if-ne v5, v8, :cond_1

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_1

    .line 4356
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4358
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_b

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-nez v5, :cond_b

    .line 4360
    and-int/lit16 v5, v2, 0x800

    if-eqz v5, :cond_2

    .line 4361
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_d

    .line 4362
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4367
    :cond_2
    :goto_1
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_3

    .line 4368
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4371
    :cond_3
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-eqz v5, :cond_e

    move v0, v6

    .line 4373
    .local v0, "appWindow":Z
    :goto_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v5, v8, :cond_5

    .line 4376
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v5, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4378
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 4379
    const/4 v0, 0x1

    .line 4383
    :cond_5
    const/high16 v5, 0x80000

    and-int/2addr v5, v2

    if-eqz v5, :cond_f

    move v4, v6

    .line 4384
    .local v4, "showWhenLocked":Z
    :goto_3
    const/high16 v5, 0x400000

    and-int/2addr v5, v2

    if-eqz v5, :cond_10

    move v1, v6

    .line 4385
    .local v1, "dismissKeyguard":Z
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v3

    .line 4386
    .local v3, "secureKeyguard":Z
    if-eqz v0, :cond_b

    .line 4402
    if-nez v4, :cond_6

    if-eqz v1, :cond_11

    if-nez v3, :cond_11

    .line 4404
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_flyme_0


    .line 4405
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_7
    :goto_flyme_0
    invoke-static/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzPolicyShowWhenLocked(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :goto_5
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v5, :cond_a

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v5, :cond_a

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v5, v9, :cond_a

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v9, :cond_a

    .line 4417
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4418
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4419
    if-eqz v4, :cond_8

    .line 4422
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 4423
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4425
    :cond_8
    if-eqz v1, :cond_9

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v5, :cond_9

    .line 4428
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v5, p1, :cond_12

    const/4 v5, 0x2

    :goto_6
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 4430
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4431
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v5, :cond_13

    if-eqz v3, :cond_13

    move v5, v6

    :goto_7
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_9
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_a

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    :cond_a
    invoke-static/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->setHideLockScreen(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-eq v5, v6, :cond_b

    .line 4442
    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4446
    .end local v0    # "appWindow":Z
    .end local v1    # "dismissKeyguard":Z
    .end local v3    # "secureKeyguard":Z
    .end local v4    # "showWhenLocked":Z
    :cond_b
    return-void

    :cond_c
    move v5, v7

    .line 4352
    goto/16 :goto_0

    .line 4364
    :cond_d
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_1

    :cond_e
    move v0, v7

    .line 4371
    goto/16 :goto_2

    .restart local v0    # "appWindow":Z
    :cond_f
    move v4, v7

    .line 4383
    goto/16 :goto_3

    .restart local v4    # "showWhenLocked":Z
    :cond_10
    move v1, v7

    .line 4384
    goto/16 :goto_4

    .line 4411
    .restart local v1    # "dismissKeyguard":Z
    .restart local v3    # "secureKeyguard":Z
    :cond_11
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    move v5, v6

    .line 4428
    goto :goto_6

    :cond_13
    move v5, v7

    .line 4431
    goto :goto_7
.end method

.method public beginLayoutLw(ZIII)V
    .locals 34
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 3486
    if-eqz p1, :cond_c

    .line 3487
    packed-switch p4, :pswitch_data_0

    .line 3507
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v23, v0

    .line 3508
    .local v23, "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v25, v0

    .line 3509
    .local v25, "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v24, v0

    .line 3510
    .local v24, "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v22, v0

    .line 3519
    .local v22, "overscanBottom":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 3520
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    .line 3521
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 3522
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 3523
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    .line 3524
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3525
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    .line 3526
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3527
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 3528
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 3529
    sub-int v2, p2, v23

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 3530
    sub-int v2, p3, v25

    sub-int v2, v2, v22

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 3531
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 3532
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 3533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 3537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 3539
    sub-int v2, p2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3541
    sub-int v2, p3, v22

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3543
    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 3544
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3547
    sget-object v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3548
    .local v26, "pf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3549
    .local v13, "df":Landroid/graphics/Rect;
    sget-object v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 3550
    .local v21, "of":Landroid/graphics/Rect;
    sget-object v33, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3551
    .local v33, "vf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 3552
    .local v12, "dcf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3553
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3554
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3555
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3556
    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 3558
    if-eqz p1, :cond_b

    .line 3561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v29, v0

    .line 3562
    .local v29, "sysui":I
    and-int/lit8 v2, v29, 0x2

    if-nez v2, :cond_d

    const/16 v20, 0x1

    .line 3563
    .local v20, "navVisible":Z
    :goto_1
    const v2, -0x7fff8000

    and-int v2, v2, v29

    if-eqz v2, :cond_e

    const/16 v19, 0x1

    .line 3565
    .local v19, "navTranslucent":Z
    :goto_2
    move/from16 v0, v29

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_f

    const/4 v14, 0x1

    .line 3566
    .local v14, "immersive":Z
    :goto_3
    move/from16 v0, v29

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_10

    const/4 v15, 0x1

    .line 3567
    .local v15, "immersiveSticky":Z
    :goto_4
    if-nez v14, :cond_0

    if-eqz v15, :cond_11

    :cond_0
    const/16 v18, 0x1

    .line 3568
    .local v18, "navAllowedHidden":Z
    :goto_5
    if-nez v15, :cond_12

    const/4 v2, 0x1

    :goto_6
    and-int v19, v19, v2

    .line 3569
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v2, :cond_13

    const/16 v16, 0x1

    .line 3570
    .local v16, "isKeyguardShowing":Z
    :goto_7
    if-nez v16, :cond_1

    .line 3571
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v19, v19, v2

    .line 3578
    :cond_1
    if-nez v20, :cond_2

    if-eqz v18, :cond_14

    .line 3579
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_3

    .line 3580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3581
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 3593
    :cond_3
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    :goto_9
    or-int v20, v20, v2

    .line 3595
    const/16 v32, 0x0

    .line 3596
    .local v32, "updateSysUiVisibility":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    .line 3597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v31

    .line 3602
    .local v31, "transientNavBarShowing":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_16

    :cond_4
    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 3603
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_19

    .line 3605
    sub-int v2, p3, v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    sub-int v30, v2, v3

    .line 3607
    .local v30, "top":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p3, v22

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3608
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 3609
    if-eqz v31, :cond_17

    .line 3610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3620
    :goto_b
    if-eqz v20, :cond_5

    if-nez v19, :cond_5

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3626
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3655
    .end local v30    # "top":I
    :cond_5
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3656
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3657
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3658
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object v8, v12

    invoke-interface/range {v2 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3666
    const/16 v32, 0x1

    .line 3673
    .end local v31    # "transientNavBarShowing":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_a

    .line 3675
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3676
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3677
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3678
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3680
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3681
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3682
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3685
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->setRectBottom(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v26

    move-object v4, v13

    move-object/from16 v5, v33

    move-object/from16 v6, v33

    move-object/from16 v7, v33

    move-object v8, v12

    move-object/from16 v9, v33

    invoke-interface/range {v2 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3691
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 3693
    const/high16 v2, 0x4000000

    and-int v2, v2, v29

    if-eqz v2, :cond_1c

    const/16 v27, 0x1

    .line 3694
    .local v27, "statusBarTransient":Z
    :goto_d
    const v2, 0x40008000    # 2.0078125f

    and-int v2, v2, v29

    if-eqz v2, :cond_1d

    const/16 v28, 0x1

    .line 3696
    .local v28, "statusBarTranslucent":Z
    :goto_e
    if-nez v16, :cond_7

    .line 3697
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v28, v28, v2

    .line 3702
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v27, :cond_8

    .line 3706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 3708
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3709
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3710
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3711
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3720
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v27, :cond_9

    if-nez v28, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3726
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3728
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3729
    const/16 v32, 0x1

    .line 3732
    .end local v27    # "statusBarTransient":Z
    .end local v28    # "statusBarTranslucent":Z
    :cond_a
    if-eqz v32, :cond_b

    .line 3733
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 3736
    .end local v14    # "immersive":Z
    .end local v15    # "immersiveSticky":Z
    .end local v16    # "isKeyguardShowing":Z
    .end local v18    # "navAllowedHidden":Z
    .end local v19    # "navTranslucent":Z
    .end local v20    # "navVisible":Z
    .end local v29    # "sysui":I
    .end local v32    # "updateSysUiVisibility":Z
    :cond_b
    return-void

    .line 3489
    .end local v12    # "dcf":Landroid/graphics/Rect;
    .end local v13    # "df":Landroid/graphics/Rect;
    .end local v21    # "of":Landroid/graphics/Rect;
    .end local v22    # "overscanBottom":I
    .end local v23    # "overscanLeft":I
    .end local v24    # "overscanRight":I
    .end local v25    # "overscanTop":I
    .end local v26    # "pf":Landroid/graphics/Rect;
    .end local v33    # "vf":Landroid/graphics/Rect;
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v23, v0

    .line 3490
    .restart local v23    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v25, v0

    .line 3491
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v24, v0

    .line 3492
    .restart local v24    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v22, v0

    .line 3493
    .restart local v22    # "overscanBottom":I
    goto/16 :goto_0

    .line 3495
    .end local v22    # "overscanBottom":I
    .end local v23    # "overscanLeft":I
    .end local v24    # "overscanRight":I
    .end local v25    # "overscanTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v23, v0

    .line 3496
    .restart local v23    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v25, v0

    .line 3497
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v24, v0

    .line 3498
    .restart local v24    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v22, v0

    .line 3499
    .restart local v22    # "overscanBottom":I
    goto/16 :goto_0

    .line 3501
    .end local v22    # "overscanBottom":I
    .end local v23    # "overscanLeft":I
    .end local v24    # "overscanRight":I
    .end local v25    # "overscanTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v23, v0

    .line 3502
    .restart local v23    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v25, v0

    .line 3503
    .restart local v25    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v24, v0

    .line 3504
    .restart local v24    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v22, v0

    .line 3505
    .restart local v22    # "overscanBottom":I
    goto/16 :goto_0

    .line 3514
    .end local v22    # "overscanBottom":I
    .end local v23    # "overscanLeft":I
    .end local v24    # "overscanRight":I
    .end local v25    # "overscanTop":I
    :cond_c
    const/16 v23, 0x0

    .line 3515
    .restart local v23    # "overscanLeft":I
    const/16 v25, 0x0

    .line 3516
    .restart local v25    # "overscanTop":I
    const/16 v24, 0x0

    .line 3517
    .restart local v24    # "overscanRight":I
    const/16 v22, 0x0

    .restart local v22    # "overscanBottom":I
    goto/16 :goto_0

    .line 3562
    .restart local v12    # "dcf":Landroid/graphics/Rect;
    .restart local v13    # "df":Landroid/graphics/Rect;
    .restart local v21    # "of":Landroid/graphics/Rect;
    .restart local v26    # "pf":Landroid/graphics/Rect;
    .restart local v29    # "sysui":I
    .restart local v33    # "vf":Landroid/graphics/Rect;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 3563
    .restart local v20    # "navVisible":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 3565
    .restart local v19    # "navTranslucent":Z
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 3566
    .restart local v14    # "immersive":Z
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 3567
    .restart local v15    # "immersiveSticky":Z
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 3568
    .restart local v18    # "navAllowedHidden":Z
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 3569
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 3583
    .restart local v16    # "isKeyguardShowing":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_3

    .line 3584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_8

    .line 3593
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 3602
    .restart local v31    # "transientNavBarShowing":Z
    .restart local v32    # "updateSysUiVisibility":Z
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 3611
    .restart local v30    # "top":I
    :cond_17
    if-eqz v20, :cond_18

    .line 3612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3613
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3614
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3615
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_b

    .line 3618
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_b

    .line 3630
    .end local v30    # "top":I
    :cond_19
    sub-int v2, p2, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    sub-int v17, v2, v3

    .line 3632
    .local v17, "left":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p2, v24

    move/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3633
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 3634
    if-eqz v31, :cond_1a

    .line 3635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3645
    :goto_f
    if-eqz v20, :cond_5

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3650
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_c

    .line 3636
    :cond_1a
    if-eqz v20, :cond_1b

    .line 3637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3638
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3639
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3640
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_f

    .line 3643
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto :goto_f

    .line 3693
    .end local v17    # "left":I
    .end local v31    # "transientNavBarShowing":Z
    :cond_1c
    const/16 v27, 0x0

    goto/16 :goto_d

    .line 3694
    .restart local v27    # "statusBarTransient":Z
    :cond_1d
    const/16 v28, 0x0

    goto/16 :goto_e

    .line 3487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingHideMenuButton:Z

    #iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->canBeForceHidden(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v0, 0x0

    return v0

    :cond_flyme_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ed -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 7030
    sparse-switch p1, :sswitch_data_0

    .line 7038
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 7035
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7030
    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1782
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1784
    .local v1, "type":I
    const/4 v3, -0x1

    aput v3, p2, v2

    .line 1786
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    .local v0, "permission":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    :goto_1
    :sswitch_0
    invoke-static {p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1819
    const/4 v2, -0x8

    goto :goto_0

    .line 1796
    :sswitch_1
    const/16 v3, 0x2d

    aput v3, p2, v2

    goto :goto_1

    .line 1810
    :sswitch_2
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1811
    const/16 v3, 0x18

    aput v3, p2, v2

    goto :goto_1

    .line 1791
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_0
    .end sparse-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    invoke-static/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->getManifestPermission(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_flyme_0

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->checkShowToOwnerOnly(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_flyme_0

    const/4 v0, 0x1

    .line 1830
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 1837
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 1869
    :cond_0
    :goto_0
    return v0

    :cond_1
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1830
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ec -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2530
    if-eqz p2, :cond_0

    .line 2531
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, #android:anim@lock_screen_behind_enter_fade_in#t

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2548
    :goto_0
    return-object v1

    .line 2532
    :cond_0
    if-eqz p1, :cond_1

    .line 2533
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, #android:anim@lock_screen_behind_enter_wallpaper#t

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    move-object v1, v0

    .line 2535
    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 2538
    .local v1, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/impl/LogDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2539
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/impl/LogDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 2542
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "set":Landroid/view/animation/AnimationSet;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, #android:anim@lock_screen_behind_enter#t

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    move-object v1, v0

    .line 2544
    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 2547
    .restart local v1    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/impl/LogDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "goingToNotificationShade"    # Z

    .prologue
    .line 2554
    if-eqz p1, :cond_0

    .line 2555
    const/4 v0, 0x0

    .line 2557
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, #android:anim@lock_screen_wallpaper_exit#t

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 6578
    const/4 v3, 0x0

    .line 6583
    .local v3, "intent":Landroid/content/Intent;
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    if-ne v6, v8, :cond_1

    .line 6585
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 6590
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    if-eqz v6, :cond_8

    .line 6591
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6592
    .end local v3    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "com.htc.AutoMotive"

    const-string v7, "com.htc.AutoMotive.carousel.MainActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6593
    sget-boolean v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v6, :cond_0

    .line 6594
    const-string v6, "InputDispatcher"

    const-string v7, "CAR mode, AutoMotive enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6627
    :cond_0
    :goto_0
    if-nez v4, :cond_5

    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object v4, v5

    .line 6647
    :goto_1
    return-object v4

    .line 6599
    :cond_1
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 6604
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcDockScreenAsHome:Z

    if-eqz v6, :cond_8

    .line 6605
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcDockScreenIntent:Landroid/content/Intent;

    .line 6606
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 6607
    .local v1, "ai_dock":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_2

    .line 6608
    const-string v6, "InputDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity registered for this intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcDockScreenIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 6609
    goto :goto_1

    .line 6612
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6613
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v4

    .line 6614
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 6619
    .end local v1    # "ai_dock":Landroid/content/pm/ActivityInfo;
    :cond_3
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_8

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v6, v8, :cond_8

    .line 6624
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    move-object v4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 6631
    :cond_5
    const/4 v0, 0x0

    .line 6632
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v7, 0x10080

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v6, v4, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 6636
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_6

    .line 6637
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 6639
    :cond_6
    if-eqz v0, :cond_7

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.dock_home"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6642
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6643
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v3

    .line 6644
    goto/16 :goto_1

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_7
    move-object v3, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object v4, v5

    .line 6647
    goto/16 :goto_1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_8
    move-object v4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_0
.end method

.method public dismissKeyguardLw()V
    .locals 3

    .prologue
    .line 5961
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissKeyguardLw() callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5963
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5964
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5972
    :cond_1
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5551
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v2, v3, v1, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5559
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5560
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5561
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 5525
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    .line 5530
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5531
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5532
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5535
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5537
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5539
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5541
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5543
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5544
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5548
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 5546
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5564
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5565
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 5567
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3113
    const/16 v18, 0x0

    .line 3114
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 3115
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 3116
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 3117
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 3118
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .line 3123
    .local v19, "initialDown":Z
    :goto_0
    if-eqz v19, :cond_3

    .line 3124
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 3129
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    .line 3135
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 3136
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 3143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3144
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 3145
    const/16 v18, 0x0

    .line 3148
    :cond_0
    if-eqz v19, :cond_4

    .line 3149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3164
    .end local v14    # "flags":I
    .end local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19    # "initialDown":Z
    .end local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "keyCode":I
    .end local v22    # "metaState":I
    :cond_1
    :goto_2
    return-object v18

    .line 3118
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 3126
    .restart local v19    # "initialDown":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .line 3150
    .restart local v14    # "flags":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 3152
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 7052
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7053
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7054
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7055
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7056
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7057
    const-string v0, " mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7058
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7059
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 7061
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7062
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7063
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7064
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7065
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7066
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7068
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 7069
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7070
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7072
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7073
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7075
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSupportAutoRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportAutoRotation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7076
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7077
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7078
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7079
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7080
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7081
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7082
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7083
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7084
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7085
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7086
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7087
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7088
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7089
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7090
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7091
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7092
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7093
    const-string v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7094
    const-string v0, " mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7095
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7096
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7097
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7098
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7099
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7100
    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7101
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7104
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7105
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7106
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7107
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_4

    .line 7109
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7110
    const-string v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7111
    const-string v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7112
    const-string v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7114
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7115
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7116
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7117
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7118
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7119
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7120
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7121
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7122
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7123
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7124
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7125
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7126
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7127
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7128
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7129
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7130
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7132
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7133
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7134
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7135
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7136
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7137
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7138
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7139
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7140
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7141
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7142
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7143
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7144
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7145
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7146
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7147
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVoiceContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7148
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7149
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7150
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7152
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7153
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7154
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7156
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7158
    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7159
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    .line 7161
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7162
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7164
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    .line 7165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7166
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7168
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    .line 7169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7170
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7172
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7174
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 7175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7176
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7178
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    .line 7179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7180
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7182
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_a

    .line 7183
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7184
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7186
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    .line 7187
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7188
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7190
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    .line 7191
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7192
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7194
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_d

    .line 7195
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7196
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7197
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7199
    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7200
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7202
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7203
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7205
    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7206
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7208
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7209
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7211
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7212
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7214
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7215
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7216
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7218
    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAutoMotiveEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7225
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7226
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7227
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7228
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7230
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_e

    .line 7231
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7233
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    if-eqz v0, :cond_f

    .line 7234
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7236
    :cond_f
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5914
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5915
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 5917
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 6518
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 6519
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 6520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6521
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 5922
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5923
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5925
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 4316
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4451
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v7, v8, :cond_0

    .line 4456
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4457
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4458
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4461
    :cond_0
    const/4 v0, 0x0

    .line 4462
    .local v0, "changes":I
    const/4 v3, 0x0

    .line 4464
    .local v3, "topIsFullscreen":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4472
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v7, :cond_1

    .line 4473
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 4476
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_4

    .line 4480
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v7, :cond_c

    .line 4482
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4483
    or-int/lit8 v0, v0, 0x1

    .line 4486
    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-eqz v7, :cond_b

    move v3, v5

    .line 4488
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v7, :cond_flyme_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v7

    if-eqz v7, :cond_flyme_0

    .line 4489
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    :cond_flyme_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->setFlymeNavButtonVisible(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    :cond_4
    :goto_2
    :goto_flyme_1
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v7, v3, :cond_6

    if-nez v3, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_8

    .line 4539
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v7

    if-nez v7, :cond_11

    .line 4540
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardHidden:Z

    .line 4541
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->processKeyguardSetHiddenResultLw(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4542
    or-int/lit8 v0, v0, 0x7

    .line 4546
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4547
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4589
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v4

    const v5, -0x3fff7ffa

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    .line 4592
    or-int/lit8 v0, v0, 0x1

    .line 4596
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4597
    return v0

    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move-object v2, v4

    .line 4464
    goto/16 :goto_0

    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move v3, v6

    .line 4486
    goto :goto_1

    .line 4492
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_4

    .line 4493
    invoke-static {v4, v2}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 4500
    .local v1, "fl":I
    and-int/lit16 v7, v1, 0x400

    if-nez v7, :cond_d

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_e

    :cond_d
    move v3, v5

    .line 4506
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4507
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v7

    if-eqz v7, :cond_flyme_1

    .line 4508
    or-int/lit8 v0, v0, 0x1

    goto :goto_flyme_0

    :cond_e
    move v3, v6

    .line 4500
    goto :goto_4

    .line 4510
    :cond_f
    if-eqz v3, :cond_10

    .line 4512
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v7

    if-eqz v7, :cond_flyme_1

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_flyme_0

    :cond_10
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v7

    if-eqz v7, :cond_flyme_1

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_flyme_0

    .end local v1    # "fl":I
    :cond_11
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v7, :cond_12

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardHidden:Z

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzKeyguardHideLw(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->processKeyguardSetHiddenResultLw(I)Z

    move-result v4

    if-eqz v4, :cond_8

    or-int/lit8 v0, v0, 0x7

    goto :goto_3

    :cond_12
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v7, :cond_14

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v4, v5, :cond_8

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardHidden:Z

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzKeyguardShowLw(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->processKeyguardSetHiddenResultLw(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4567
    or-int/lit8 v0, v0, 0x7

    .line 4571
    :cond_13
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_14
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardHidden:Z

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzKeyguardShowLw(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->processKeyguardSetHiddenResultLw(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4582
    or-int/lit8 v0, v0, 0x7

    goto/16 :goto_3

    :cond_flyme_1
    :goto_flyme_0
    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->setFlymeStatusBarState(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    move-result v0

    goto :goto_flyme_1
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4642
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ffa

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4646
    const/4 v0, 0x1

    .line 4648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAboveUniverseLayer()I
    .locals 1

    .prologue
    .line 2078
    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2116
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2107
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "contentInset"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const v6, 0x10100

    .line 3442
    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 3443
    .local v2, "fl":I
    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    .line 3444
    .local v4, "sysuiVis":I
    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 3446
    .local v3, "systemUiVisibility":I
    and-int v5, v2, v6

    if-ne v5, v6, :cond_6

    .line 3449
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_0

    .line 3451
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v5, v6

    .line 3452
    .local v1, "availRight":I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v5, v6

    .line 3457
    .local v0, "availBottom":I
    :goto_0
    and-int/lit16 v5, v3, 0x100

    if-eqz v5, :cond_2

    .line 3458
    and-int/lit16 v5, v2, 0x400

    if-eqz v5, :cond_1

    .line 3459
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v7, v1, v7

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v8, v0, v8

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3479
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :goto_1
    return-void

    .line 3454
    :cond_0
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v5, v6

    .line 3455
    .restart local v1    # "availRight":I
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v5, v6

    .restart local v0    # "availBottom":I
    goto :goto_0

    .line 3463
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v7, v1, v7

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v8, v0, v8

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3466
    :cond_2
    and-int/lit16 v5, v2, 0x400

    if-nez v5, :cond_3

    const/high16 v5, 0x2000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_4

    .line 3467
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 3468
    :cond_4
    and-int/lit16 v5, v3, 0x404

    if-nez v5, :cond_5

    .line 3470
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v7, v1, v7

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v8, v0, v8

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3473
    :cond_5
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v7, v1, v7

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v8, v0, v8

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3478
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3748
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3749
    return-void
.end method

.method public getInputMethodWindowVisibleHeightLw()I
    .locals 2

    .prologue
    .line 7009
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 2073
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 2098
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_1

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 2102
    .end local p2    # "fullHeight":I
    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2083
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 2086
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 2090
    .end local p1    # "fullWidth":I
    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 859
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    .prologue
    .line 3741
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 3743
    :goto_0
    return v0

    .line 3742
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0

    .line 3743
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6215
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method goHome()Z
    .locals 18

    .prologue
    .line 6682
    :try_start_0
    const-string v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6684
    const-string v1, "WindowManager"

    const-string v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6701
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v17

    .line 6707
    .local v17, "result":I
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_2

    .line 6708
    const/4 v1, 0x0

    .line 6714
    .end local v17    # "result":I
    :goto_0
    return v1

    .line 6686
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 6687
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 6688
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .line 6689
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 6690
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 6696
    .restart local v17    # "result":I
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_0

    .line 6697
    const/4 v1, 0x0

    goto :goto_0

    .line 6710
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v17    # "result":I
    :catch_0
    move-exception v1

    .line 6714
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public goingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 5729
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5730
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Going to sleep..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5734
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5735
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    .line 5736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 5737
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5738
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5739
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5740
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5742
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5743
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff(I)V

    .line 5745
    :cond_1
    return-void

    .line 5740
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 6998
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->hideBootMessages(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 5954
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5955
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/high16 v9, #android:id@background#t0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1246
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1247
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1248
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1249
    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1250
    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 1252
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    invoke-direct {v2, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1253
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;

    .line 1254
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 1256
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :goto_0
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    .line 1259
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1260
    new-instance v2, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 1261
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 1262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:integer@config_defaultUiModeType#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 1264
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1265
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1268
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1269
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.CAR_DOCK"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1272
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1273
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DESK_DOCK"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1277
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1279
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x2000

    const/4 v6, 0x4

    const-string v7, "HomeKeyHandlerFreq"

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCpuFreqRaiser:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 1281
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1283
    const-string v2, "1"

    const-string v5, "ro.debuggable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1284
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:bool@config_supportAutoRotation#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportAutoRotation:Z

    const v2, #android:integer@config_lidOpenRotation#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    const v2, #android:integer@config_carDockRotation#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    const v2, #android:integer@config_deskDockRotation#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    const v2, #android:integer@config_undockedHdmiRotation#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 1294
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:bool@config_carDockEnablesAccelerometer#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1296
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:bool@config_deskDockEnablesAccelerometer#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1298
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:integer@config_lidKeyboardAccessibility#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1300
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:integer@config_lidNavigationAccessibility#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1302
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:bool@config_lidControlsSleep#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1304
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:bool@config_enableTranslucentDecor#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 1306
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1308
    const-string v2, "accessibility"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1312
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1313
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1317
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1318
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1319
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1320
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1322
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1323
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1324
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1326
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1331
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1332
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.autobot.PROJECTOR_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1333
    const-string v2, "com.htc.autobot.htcmodeclient.USBPlug"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1334
    const-string v2, "com.htc.HTCMirrorLinkServer.ACTION_STOP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1335
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1339
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1340
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1341
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1342
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1345
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1346
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1349
    new-instance v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-direct {v2, p1, v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    .line 1374
    new-instance v2, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .line 1375
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1377
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1380
    new-array v2, v3, [J

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSystemVibrationDurationInt()I

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v2, v4

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1381
    new-array v2, v3, [J

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSystemVibrationDurationInt()I

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v2, v4

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1383
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:array@config_keyboardTapVibePattern#t

    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1385
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:array@config_clockTickVibePattern#t

    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClockTickVibePattern:[J

    .line 1387
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:array@config_calendarDateVibePattern#t

    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 1389
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:array@config_safeModeDisabledVibePattern#t

    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1391
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:array@config_safeModeEnabledVibePattern#t

    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1394
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, #android:bool@config_enableScreenshotChord#t

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1397
    new-instance v2, Lcom/android/internal/policy/impl/GlobalKeyManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/policy/impl/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    .line 1400
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1403
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1404
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goingToSleep(I)V

    .line 1408
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.htc.intent.ACTION_HTC_DOCK_SCREEN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcDockScreenIntent:Landroid/content/Intent;

    .line 1409
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHtcDockScreenIntent:Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1414
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1415
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.AutoMotive.Service.ModeChange"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1416
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {p1, v2, v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1420
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    .line 1421
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1422
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.action.SHUTDOWN_ANIMATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1423
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;

    invoke-direct {v2, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$ShowingShutdownAnimationReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1427
    const-string v2, "com.htc.android.htcsetupwizard"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasHtcSetupWizardInstalled:Z

    .line 1431
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDisable2KeyHWResetDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    .line 1432
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    if-eqz v2, :cond_3

    .line 1433
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    .line 1434
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    const-string v4, "m2KeyHWResetHint"

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismiss2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    .line 1436
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    .line 1437
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->m2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    const-string v4, "m2KeyHWResetIndicator"

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismiss2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    :goto_2

    invoke-static/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->initExtFlymeFields(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    .line 1440
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    const-string v4, "mHWResetIndicator"

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    goto :goto_2

    .line 1257
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method initializeHdmiState()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4705
    const/4 v4, 0x0

    .line 4707
    .local v4, "plugged":Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4708
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4710
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 4711
    .local v2, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4713
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4714
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_1
    new-array v0, v9, [C

    .line 4715
    .local v0, "buf":[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 4716
    .local v3, "n":I
    if-le v3, v7, :cond_0

    .line 4717
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    .line 4724
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4726
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4734
    .end local v0    # "buf":[C
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4735
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 4736
    return-void

    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_2
    move v4, v8

    .line 4717
    goto :goto_0

    .line 4719
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 4720
    .local v1, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4724
    if-eqz v5, :cond_1

    .line 4726
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4727
    :catch_1
    move-exception v9

    goto :goto_1

    .line 4721
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4722
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4724
    if-eqz v5, :cond_1

    .line 4726
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 4727
    :catch_3
    move-exception v9

    goto :goto_1

    .line 4724
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    .line 4726
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4728
    :cond_3
    :goto_7
    throw v7

    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_4
    move v9, v8

    .line 4734
    goto :goto_2

    :cond_5
    move v7, v8

    .line 4735
    goto :goto_3

    .line 4727
    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 4724
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_6

    .line 4721
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 4719
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 45
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2602
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v28

    .line 2603
    .local v28, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v27

    .line 2604
    .local v27, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v34

    .line 2605
    .local v34, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v30

    .line 2606
    .local v30, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v22

    .line 2607
    .local v22, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v20, 0x1

    .line 2608
    .local v20, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v16

    .line 2617
    .local v16, "canceled":Z
    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_0

    .line 2618
    const-string v6, "InputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptKeyTi key="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",down="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",repeat="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",keyguard="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v28, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",HPressed="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",canceled="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v16, :cond_5

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v4, :cond_8

    move/from16 v0, v22

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_8

    .line 2631
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v4, :cond_6

    .line 2632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 2633
    .local v32, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    const-wide/16 v8, 0x96

    add-long v40, v6, v8

    .line 2634
    .local v40, "timeoutTime":J
    cmp-long v4, v32, v40

    if-gez v4, :cond_6

    .line 2635
    sub-long v6, v40, v32

    .line 3096
    .end local v32    # "now":J
    .end local v40    # "timeoutTime":J
    :goto_5
    return-wide v6

    .line 2607
    .end local v16    # "canceled":Z
    .end local v20    # "down":Z
    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 2618
    .restart local v16    # "canceled":Z
    .restart local v20    # "down":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 2638
    :cond_6
    const/16 v4, 0x19

    move/from16 v0, v27

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v4, :cond_8

    .line 2640
    if-nez v20, :cond_7

    .line 2641
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 2643
    :cond_7
    const-wide/16 v6, -0x1

    goto :goto_5

    .line 2649
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_9

    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2650
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingMetaAction:Z

    .line 2657
    :cond_9
    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_1c

    .line 2661
    if-nez v20, :cond_11

    .line 2663
    sget-boolean v4, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v4, :cond_a

    .line 2664
    invoke-static {}, Lcom/htc/utils/PerformanceLogUtil;->logHomeKeyTriggered()V

    .line 2667
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2670
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_b

    .line 2671
    const-string v4, "WindowManager"

    const-string v6, "Home key triggered"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    const-wide/16 v6, -0x1

    goto :goto_5

    :cond_c
    if-eqz v16, :cond_d

    const-string v4, "WindowManager"

    const-string v6, "Ignoring HOME; event canceled."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    goto :goto_5

    :cond_d
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->getFlymeTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v39

    .local v39, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v39, :cond_e

    invoke-virtual/range {v39 .. v39}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2691
    const-string v4, "WindowManager"

    const-string v6, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2696
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v4, :cond_f

    .line 2697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2698
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandleHomePreparationRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x64

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoublePressInterval:I

    int-to-long v8, v7

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2710
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2715
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v4}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2717
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2721
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 2722
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2727
    .end local v39    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_11
    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_6
    if-eqz v13, :cond_16

    invoke-static/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzInterceptHomeKey(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_flyme_0

    const-wide/16 v6, 0x0

    return-wide v6

    :cond_flyme_0

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v42, v0

    .local v42, "type":I
    const/16 v4, 0x7ed

    move/from16 v0, v42

    if-eq v0, v4, :cond_12

    const/16 v4, 0x7d9

    move/from16 v0, v42

    if-eq v0, v4, :cond_12

    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_14

    .line 2734
    :cond_12
    const-wide/16 v6, 0x0

    goto/16 :goto_5

    .line 2727
    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v42    # "type":I
    :cond_13
    const/4 v13, 0x0

    goto :goto_6

    .line 2736
    .restart local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v42    # "type":I
    :cond_14
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v4

    move/from16 v43, v0

    .line 2737
    .local v43, "typeCount":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_7
    move/from16 v0, v23

    move/from16 v1, v43

    if-ge v0, v1, :cond_16

    .line 2738
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v23

    move/from16 v0, v42

    if-ne v0, v4, :cond_15

    .line 2740
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2737
    :cond_15
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 2746
    .end local v23    # "i":I
    .end local v42    # "type":I
    .end local v43    # "typeCount":I
    :cond_16
    if-nez v34, :cond_1a

    .line 2747
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2748
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v4, :cond_18

    .line 2749
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2751
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    .line 2769
    :cond_17
    :goto_8
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2752
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    .line 2754
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_8

    .line 2756
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_17

    .line 2757
    if-nez v28, :cond_17

    .line 2760
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v39

    .line 2761
    .restart local v39    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v39, :cond_1b

    invoke-virtual/range {v39 .. v39}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2762
    const-string v4, "InputDispatcher"

    const-string v6, "ignore handleLongPressOnHome when Ringing Call"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2764
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_8

    .line 2770
    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v39    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1c
    const/16 v4, 0x52

    move/from16 v0, v27

    if-ne v0, v4, :cond_1d

    .line 2772
    const/16 v18, 0x1

    .line 2774
    .local v18, "chordBug":I
    if-eqz v20, :cond_2f

    if-nez v34, :cond_2f

    .line 2775
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v4, :cond_2f

    and-int/lit8 v4, v30, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2f

    .line 2776
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2777
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2779
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2797
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "chordBug":I
    :cond_1d
    const/16 v4, 0x54

    move/from16 v0, v27

    if-ne v0, v4, :cond_20

    .line 2798
    if-eqz v20, :cond_1f

    .line 2799
    if-nez v34, :cond_1e

    .line 2800
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2801
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2810
    :cond_1e
    const-wide/16 v6, 0x0

    goto/16 :goto_5

    .line 2804
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2805
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v4, :cond_1e

    .line 2806
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2807
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2811
    :cond_20
    const/16 v4, 0xbb

    move/from16 v0, v27

    if-ne v0, v4, :cond_26

    .line 2812
    if-nez v28, :cond_21

    .line 2814
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z

    if-eqz v4, :cond_22

    .line 2853
    :cond_21
    :goto_9
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2816
    :cond_22
    if-nez v20, :cond_23

    .line 2817
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    if-eqz v4, :cond_21

    .line 2818
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    packed-switch v4, :pswitch_data_0

    goto :goto_9

    .line 2821
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_9

    .line 2824
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendMenuKey()V

    goto :goto_9

    .line 2828
    :cond_23
    if-nez v34, :cond_25

    .line 2830
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    .line 2831
    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_24

    .line 2832
    const-string v4, "InputDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptDispatch, mHasNavigationBar="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mAppSwitchType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_9

    .line 2837
    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_21

    .line 2839
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    packed-switch v4, :pswitch_data_1

    goto :goto_9

    .line 2845
    :pswitch_2
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2846
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    .line 2847
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    goto :goto_9

    .line 2841
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendMenuKey()V

    .line 2842
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentPressed:Z

    goto :goto_9

    .line 2854
    :cond_26
    const/16 v4, 0xdb

    move/from16 v0, v27

    if-ne v0, v4, :cond_2e

    .line 2856
    const/high16 v4, 0x1000000

    and-int v4, v4, p3

    if-eqz v4, :cond_28

    const/16 v24, 0x1

    .line 2857
    .local v24, "isInjected":Z
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z

    move-result v25

    .line 2860
    .local v25, "isRingingCall":Z
    if-eqz v20, :cond_2a

    .line 2861
    if-nez v34, :cond_29

    .line 2865
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2869
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2894
    :cond_27
    :goto_b
    if-nez v25, :cond_2d

    if-eqz v28, :cond_2d

    if-nez v24, :cond_2d

    .line 2895
    const-wide/16 v6, 0x0

    goto/16 :goto_5

    .line 2856
    .end local v24    # "isInjected":Z
    .end local v25    # "isRingingCall":Z
    :cond_28
    const/16 v24, 0x0

    goto :goto_a

    .line 2870
    .restart local v24    # "isInjected":Z
    .restart local v25    # "isRingingCall":Z
    :cond_29
    const/4 v4, 0x1

    move/from16 v0, v34

    if-ne v0, v4, :cond_27

    .line 2871
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2872
    if-nez v28, :cond_27

    .line 2873
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_b

    .line 2877
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v4, :cond_2b

    .line 2878
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_b

    .line 2885
    :cond_2b
    if-nez v25, :cond_27

    if-eqz v28, :cond_2c

    if-nez v24, :cond_27

    .line 2887
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_b

    .line 2897
    :cond_2d
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2901
    .end local v24    # "isInjected":Z
    .end local v25    # "isRingingCall":Z
    :cond_2e
    const/16 v4, 0xe7

    move/from16 v0, v27

    if-ne v0, v4, :cond_32

    .line 2902
    if-nez v20, :cond_2f

    .line 2904
    if-nez v28, :cond_31

    .line 2905
    new-instance v44, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2910
    .local v44, "voiceIntent":Landroid/content/Intent;
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2990
    .end local v44    # "voiceIntent":Landroid/content/Intent;
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v4, :cond_41

    .line 2991
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v26

    .line 2992
    .local v26, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v26 .. v27}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2993
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2994
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2995
    if-eqz v20, :cond_30

    if-nez v34, :cond_30

    if-nez v28, :cond_30

    .line 2996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v36

    .line 2997
    .local v36, "shortcutIntent":Landroid/content/Intent;
    if-eqz v36, :cond_40

    .line 2998
    const/high16 v4, 0x10000000

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3000
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3011
    .end local v36    # "shortcutIntent":Landroid/content/Intent;
    :cond_30
    :goto_d
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2907
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_31
    new-instance v44, Landroid/content/Intent;

    const-string v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2908
    .restart local v44    # "voiceIntent":Landroid/content/Intent;
    const-string v4, "android.speech.extras.EXTRA_SECURE"

    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_c

    .line 2912
    .end local v44    # "voiceIntent":Landroid/content/Intent;
    :cond_32
    const/16 v4, 0x78

    move/from16 v0, v27

    if-ne v0, v4, :cond_34

    .line 2913
    if-eqz v20, :cond_33

    if-nez v34, :cond_33

    .line 2914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2916
    :cond_33
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2917
    :cond_34
    const/16 v4, 0xdd

    move/from16 v0, v27

    if-eq v0, v4, :cond_35

    const/16 v4, 0xdc

    move/from16 v0, v27

    if-ne v0, v4, :cond_39

    .line 2919
    :cond_35
    if-eqz v20, :cond_37

    .line 2920
    const/16 v4, 0xdd

    move/from16 v0, v27

    if-ne v0, v4, :cond_38

    const/16 v19, 0x1

    .line 2923
    .local v19, "direction":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x3

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 2928
    .local v14, "auto":I
    if-eqz v14, :cond_36

    .line 2929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    const/4 v8, -0x3

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2935
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v31

    .line 2936
    .local v31, "min":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v29

    .line 2937
    .local v29, "max":I
    sub-int v4, v29, v31

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0xa

    mul-int v38, v4, v19

    .line 2938
    .local v38, "step":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    const/4 v8, -0x3

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2942
    .local v15, "brightness":I
    add-int v15, v15, v38

    .line 2944
    move/from16 v0, v29

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2945
    move/from16 v0, v31

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness"

    const/4 v7, -0x3

    invoke-static {v4, v6, v15, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2950
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2953
    .end local v14    # "auto":I
    .end local v15    # "brightness":I
    .end local v19    # "direction":I
    .end local v29    # "max":I
    .end local v31    # "min":I
    .end local v38    # "step":I
    :cond_37
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2920
    :cond_38
    const/16 v19, -0x1

    goto/16 :goto_e

    .line 2954
    :cond_39
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2955
    if-eqz v20, :cond_3b

    .line 2956
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingMetaAction:Z

    .line 2960
    :cond_3a
    :goto_f
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2957
    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_3a

    .line 2958
    const-string v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;)V

    goto :goto_f

    .line 2964
    :cond_3c
    const/16 v4, 0x2329

    move/from16 v0, v27

    if-ne v0, v4, :cond_2f

    .line 2965
    if-eqz v20, :cond_3f

    .line 2966
    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_3d

    const-string v4, "InputDispatcher"

    const-string v6, "Remove HandleHomeRunnable since KEYCODE_SEARCH_PANEL goes down"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    :cond_3d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2981
    :cond_3e
    :goto_10
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 2971
    :cond_3f
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v37

    .line 2972
    .local v37, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v37, :cond_3e

    .line 2973
    invoke-interface/range {v37 .. v37}, Lcom/android/internal/statusbar/IStatusBarService;->showSearchPanel()V

    .line 2974
    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_3e

    const-string v4, "InputDispatcher"

    const-string v6, "Show Search Panel"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    .line 2976
    .end local v37    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v21

    .line 2977
    .local v21, "ex":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "Can\'t get StatusBarService when launching SearchPanel"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_10

    .line 3001
    .end local v21    # "ex":Landroid/os/RemoteException;
    .restart local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v36    # "shortcutIntent":Landroid/content/Intent;
    :catch_1
    move-exception v21

    .line 3002
    .local v21, "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 3007
    .end local v21    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_40
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 3016
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v36    # "shortcutIntent":Landroid/content/Intent;
    :cond_41
    if-eqz v20, :cond_42

    if-nez v34, :cond_42

    if-nez v28, :cond_42

    const/high16 v4, 0x10000

    and-int v4, v4, v30

    if-eqz v4, :cond_42

    .line 3018
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v26

    .line 3019
    .restart local v26    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v26 .. v27}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 3020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    const v6, -0x70001

    and-int v6, v6, v30

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v36

    .line 3023
    .restart local v36    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v36, :cond_42

    .line 3024
    const/high16 v4, 0x10000000

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3026
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3032
    :goto_11
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 3027
    :catch_2
    move-exception v21

    .line 3028
    .restart local v21    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 3038
    .end local v21    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v36    # "shortcutIntent":Landroid/content/Intent;
    :cond_42
    if-eqz v20, :cond_43

    if-nez v34, :cond_43

    if-nez v28, :cond_43

    .line 3039
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 3040
    .local v17, "category":Ljava/lang/String;
    if-eqz v17, :cond_43

    .line 3041
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 3042
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3044
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3050
    :goto_12
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 3045
    :catch_3
    move-exception v21

    .line 3046
    .restart local v21    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 3055
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v17    # "category":Ljava/lang/String;
    .end local v21    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_43
    if-eqz v20, :cond_44

    if-nez v34, :cond_44

    const/16 v4, 0x3d

    move/from16 v0, v27

    if-ne v0, v4, :cond_44

    .line 3056
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v4, :cond_45

    if-nez v28, :cond_45

    .line 3057
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    and-int/lit16 v0, v4, -0xc2

    move/from16 v35, v0

    .line 3058
    .local v35, "shiftlessModifiers":I
    const/4 v4, 0x2

    move/from16 v0, v35

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3059
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3060
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showRecentApps(Z)V

    .line 3061
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 3064
    .end local v35    # "shiftlessModifiers":I
    :cond_44
    if-nez v20, :cond_45

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int v4, v4, v30

    if-nez v4, :cond_45

    .line 3066
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3067
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 3071
    :cond_45
    if-eqz v20, :cond_48

    if-nez v34, :cond_48

    const/16 v4, 0xcc

    move/from16 v0, v27

    if-eq v0, v4, :cond_46

    const/16 v4, 0x3e

    move/from16 v0, v27

    if-ne v0, v4, :cond_48

    move/from16 v0, v30

    and-int/lit16 v4, v0, 0x7000

    if-eqz v4, :cond_48

    .line 3075
    :cond_46
    move/from16 v0, v30

    and-int/lit16 v4, v0, 0xc1

    if-eqz v4, :cond_47

    const/16 v19, -0x1

    .line 3076
    .restart local v19    # "direction":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move/from16 v0, v19

    invoke-interface {v4, v6, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3077
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 3075
    .end local v19    # "direction":I
    :cond_47
    const/16 v19, 0x1

    goto :goto_13

    .line 3079
    :cond_48
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v4, :cond_4a

    if-nez v20, :cond_4a

    const/16 v4, 0xcc

    move/from16 v0, v27

    if-eq v0, v4, :cond_49

    const/16 v4, 0x3e

    move/from16 v0, v27

    if-ne v0, v4, :cond_4a

    .line 3082
    :cond_49
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3083
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 3086
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3087
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 3091
    :cond_4b
    const/high16 v4, 0x10000

    and-int v4, v4, v30

    if-eqz v4, :cond_flyme_1

    const-wide/16 v6, -0x1

    goto/16 :goto_5

    :cond_4c
    const-wide/16 v6, 0x0

    goto/16 :goto_5

    :cond_flyme_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->preventVolumeKeyForTelephony(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_flyme_2

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_flyme_2

    const-wide/16 v6, 0x0

    return-wide v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2839
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 32
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 4815
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    .line 4817
    const/16 v23, 0x0

    .line 5464
    :cond_0
    :goto_0
    return v23

    .line 4820
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_8

    const/4 v10, 0x1

    .line 4821
    .local v10, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    .line 4822
    .local v9, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v19

    .line 4824
    .local v19, "keyCode":I
    const/high16 v26, 0x1000000

    and-int v26, v26, p2

    if-eqz v26, :cond_9

    const/16 v17, 0x1

    .line 4829
    .local v17, "isInjected":Z
    :goto_2
    const/high16 v26, 0x20000000

    and-int v26, v26, p2

    if-eqz v26, :cond_a

    const/4 v14, 0x1

    .line 4830
    .local v14, "interactive":Z
    :goto_3
    const/16 v26, 0x1a

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 4831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isActualScreenOn()Z

    move-result v15

    .line 4832
    .local v15, "isActualScreenOn":Z
    const-string v27, "InputDispatcher"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ActualScreenOn="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v15, :cond_b

    const/16 v26, 0x1

    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    move v14, v15

    .line 4841
    .end local v15    # "isActualScreenOn":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v26, v0

    if-nez v26, :cond_c

    const/16 v20, 0x0

    .line 4854
    .local v20, "keyguardActive":Z
    :goto_5
    and-int/lit8 v26, p2, 0x1

    if-nez v26, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v26

    if-eqz v26, :cond_e

    :cond_3
    const/16 v18, 0x1

    .line 4858
    .local v18, "isWakeKey":Z
    :goto_6
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_4

    .line 4859
    const-string v27, "InputDispatcher"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "interceptKeyTq key="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ",interactive="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v14, :cond_f

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ",keyguard="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v20, :cond_10

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ",policy="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "0x%08x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ",isWakeKey="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-eqz v18, :cond_11

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ",repeat="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    :cond_4
    if-nez v10, :cond_5

    .line 4868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4872
    :cond_5
    if-nez v14, :cond_6

    if-eqz v17, :cond_12

    if-nez v18, :cond_12

    .line 4875
    :cond_6
    const/16 v23, 0x1

    .line 4876
    .local v23, "result":I
    const/16 v18, 0x0

    .line 4906
    :cond_7
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 4907
    if-eqz v18, :cond_0

    .line 4909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUpFromPowerKey(J)V

    goto/16 :goto_0

    .line 4820
    .end local v9    # "canceled":Z
    .end local v10    # "down":Z
    .end local v14    # "interactive":Z
    .end local v17    # "isInjected":Z
    .end local v18    # "isWakeKey":Z
    .end local v19    # "keyCode":I
    .end local v20    # "keyguardActive":Z
    .end local v23    # "result":I
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 4824
    .restart local v9    # "canceled":Z
    .restart local v10    # "down":Z
    .restart local v19    # "keyCode":I
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 4829
    .restart local v17    # "isInjected":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 4832
    .restart local v14    # "interactive":Z
    .restart local v15    # "isActualScreenOn":Z
    :cond_b
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 4841
    .end local v15    # "isActualScreenOn":Z
    :cond_c
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v20

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v20

    goto/16 :goto_5

    .line 4854
    .restart local v20    # "keyguardActive":Z
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 4859
    .restart local v18    # "isWakeKey":Z
    :cond_f
    const/16 v26, 0x0

    goto/16 :goto_7

    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_8

    :cond_11
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 4877
    :cond_12
    if-nez v14, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v26

    if-eqz v26, :cond_13

    .line 4882
    const/16 v23, 0x1

    .restart local v23    # "result":I
    goto :goto_a

    .line 4886
    .end local v23    # "result":I
    :cond_13
    const/16 v23, 0x0

    .line 4887
    .restart local v23    # "result":I
    if-eqz v18, :cond_15

    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v26

    if-nez v26, :cond_15

    .line 4888
    :cond_14
    const/16 v18, 0x0

    goto :goto_a

    .line 4891
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 4892
    const-string v26, "InputDispatcher"

    const-string v27, "interceptQueue mShowingShutdownAnim=true, do not wake up device "

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4898
    :cond_16
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_7

    .line 4899
    const-string v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "<POWER DOWN> Device wake up by isWakeKey = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4915
    :cond_17
    if-eqz v10, :cond_1b

    and-int/lit8 v26, p2, 0x2

    if-eqz v26, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    if-nez v26, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    const/16 v26, 0x52

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_1b

    :cond_18
    const/16 v25, 0x1

    .line 4923
    .local v25, "useHapticFeedback":Z
    :goto_b
    sparse-switch v19, :sswitch_data_0

    .line 5441
    :cond_19
    :goto_c
    if-eqz v25, :cond_1a

    .line 5443
    const/16 v26, 0xdb

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_4f

    if-nez v17, :cond_4f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z

    move-result v26

    if-nez v26, :cond_4f

    .line 5446
    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 5451
    :goto_d
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_1a

    .line 5452
    const-string v26, "InputDispatcher"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "VKDown key="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ",doHaptic"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5457
    :cond_1a
    if-eqz v18, :cond_0

    .line 5461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUpFromPowerKey(J)V

    goto/16 :goto_0

    .line 4915
    .end local v25    # "useHapticFeedback":Z
    :cond_1b
    const/16 v25, 0x0

    goto :goto_b

    .line 4927
    .restart local v25    # "useHapticFeedback":Z
    :sswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzInterceptVolumeKeyUpForTelephony(Landroid/view/KeyEvent;)V

    const/16 v26, 0x19

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    .line 4928
    if-eqz v10, :cond_1e

    .line 4929
    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-nez v26, :cond_1c

    .line 4931
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4932
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 4933
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 4934
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4935
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzInterceptScreenshotChord()V

    .line 4977
    :cond_1c
    :goto_e
    if-eqz v10, :cond_19

    .line 4978
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v24

    .line 4979
    .local v24, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v24, :cond_23

    .line 4980
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v26

    if-eqz v26, :cond_22

    .line 4987
    const-string v26, "WindowManager"

    const-string v27, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4992
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->silenceRinger()V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzInterceptVolumeKeyDownForTelephony(Landroid/view/KeyEvent;)V

    .line 4995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingingSilentFlag:Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;->setFlag()V

    .line 4997
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_1d

    .line 4998
    const-string v26, "InputDispatcher"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Click VOLUME key to silence mode, keyCode="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    :cond_1d
    and-int/lit8 v23, v23, -0x2

    .line 5005
    goto/16 :goto_c

    .line 4938
    .end local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1e
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4939
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_e

    .line 4941
    :cond_1f
    const/16 v26, 0x18

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 4942
    if-eqz v10, :cond_21

    .line 4943
    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-nez v26, :cond_1c

    .line 4945
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzInterceptVolumeUpKeyBeforeQueueing(Landroid/view/KeyEvent;)V

    .line 4948
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    if-eqz v26, :cond_20

    .line 4949
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismiss2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 4954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetHint:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4955
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerVolumeUPLongPressToast()V

    goto/16 :goto_e

    .line 4957
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4958
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto/16 :goto_e

    .line 4963
    :cond_21
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4964
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4967
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    if-eqz v26, :cond_1c

    .line 4971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismiss2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 4972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetIndicator:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    .line 5007
    .restart local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_22
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v26

    if-eqz v26, :cond_23

    and-int/lit8 v26, v23, 0x1

    if-nez v26, :cond_23

    .line 5012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 5015
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_19

    .line 5016
    const-string v26, "WindowManager"

    const-string v27, "<VOLUME>just pass it to the session service."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5022
    :cond_23
    and-int/lit8 v26, v23, 0x1

    if-nez v26, :cond_19

    .line 5026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 5029
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_19

    .line 5030
    const-string v26, "WindowManager"

    const-string v27, "<VOLUME>send it to the session manager to figure out."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5040
    .end local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_1
    if-eqz v10, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHomeKeyInterceptedByScreenshot:Z

    move/from16 v26, v0

    if-nez v26, :cond_26

    if-eqz v14, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_26

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileScreenCaptureEnabled()Z

    move-result v26

    if-eqz v26, :cond_26

    .line 5041
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHomeKeyInterceptedByScreenshot:Z

    .line 5042
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 5044
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_24

    .line 5045
    const-string v26, "InputDispatcher"

    const-string v27, "POWER+HOME to screenshot"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5049
    :cond_24
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_25

    .line 5050
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 5051
    .local v13, "intent":Landroid/content/Intent;
    const-string v26, "com.htc.intent.action.WRITE_TRACEPOINT"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5053
    const-string v26, "InputDispatcher"

    const-string v27, "com.htc.intent.action.WRITE_TRACEPOINT has been broadcasted."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5057
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5060
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHomeKeyInterceptedByScreenshot:Z

    move/from16 v26, v0

    if-eqz v26, :cond_19

    .line 5061
    if-nez v10, :cond_27

    .line 5062
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHomeKeyInterceptedByScreenshot:Z

    .line 5064
    :cond_27
    and-int/lit8 v23, v23, -0x2

    .line 5065
    const-string v26, "InputDispatcher"

    const-string v27, "remove PASS_TO_USER flag after screenshot"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5072
    :sswitch_2
    and-int/lit8 v23, v23, -0x2

    .line 5073
    if-eqz v10, :cond_2b

    .line 5074
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v24

    .line 5075
    .restart local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v12, 0x0

    .line 5076
    .local v12, "hungUp":Z
    if-eqz v24, :cond_28

    .line 5077
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v12

    .line 5079
    :cond_28
    if-eqz v14, :cond_29

    if-eqz v12, :cond_2a

    :cond_29
    const/16 v26, 0x1

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_c

    :cond_2a
    const/16 v26, 0x0

    goto :goto_f

    .line 5081
    .end local v12    # "hungUp":Z
    .end local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2b
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 5082
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_2c

    .line 5084
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v26

    if-nez v26, :cond_19

    .line 5088
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_19

    .line 5090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v28

    const/16 v27, 0x4

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move/from16 v3, v27

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 5092
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 5100
    :sswitch_3
    and-int/lit8 v23, v23, -0x2

    .line 5101
    if-eqz v10, :cond_3c

    .line 5108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/Date;

    invoke-direct/range {v27 .. v27}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v27

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move/from16 v3, v27

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)Z

    move-result v22

    .line 5111
    .local v22, "panic":Z
    if-eqz v22, :cond_2d

    .line 5112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRequestTransientNav:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5114
    :cond_2d
    if-eqz v14, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-nez v26, :cond_2e

    .line 5116
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 5117
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 5118
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzInterceptScreenshotChord()V

    .line 5121
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    if-eqz v26, :cond_2e

    .line 5122
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerVolumeUPLongPressToast()V

    .line 5128
    :cond_2e
    const/4 v8, 0x0

    .line 5129
    .local v8, "bSilentByPowerKey":Z
    const/4 v7, 0x0

    .line 5133
    .local v7, "bNeedToEndCall":Z
    const/16 v16, 0x0

    .line 5136
    .local v16, "isDotviewHandled":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->getFlymeTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v24

    .line 5137
    .restart local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v12, 0x0

    .line 5138
    .restart local v12    # "hungUp":Z
    if-eqz v24, :cond_31

    .line 5140
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v26

    if-eqz v26, :cond_36

    .line 5141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingingSilentFlag:Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;->getFlag()Z

    move-result v26

    if-eqz v26, :cond_35

    .line 5142
    const/4 v7, 0x1

    .line 5144
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_2f

    .line 5145
    const-string v26, "InputDispatcher"

    const-string v27, "<POWER DOWN>Click POWER key to end call"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    :cond_2f
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHandleDotviewLongPressPowerkey()Z

    move-result v26

    if-eqz v26, :cond_37

    .line 5174
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_30

    .line 5175
    const-string v26, "InputDispatcher"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "needHandleDotviewLongPressPowerkey=Ture dotview="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ringing="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasRingingCall()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " incall="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isInCall()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPressDotview:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x1f4

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5180
    const/16 v16, 0x1

    .line 5182
    if-eqz v7, :cond_31

    .line 5183
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDelayNeedToEndCall:Z

    .line 5193
    :cond_31
    :goto_11
    if-eqz v14, :cond_32

    if-nez v8, :cond_32

    if-nez v7, :cond_32

    if-eqz v16, :cond_38

    :cond_32
    const/4 v6, 0x1

    .line 5199
    .local v6, "bHandled":Z
    :goto_12
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTriggerGlobalAction:Z

    .line 5200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportFlashlight:Z

    move/from16 v26, v0

    if-eqz v26, :cond_33

    .line 5201
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldShowFlashlightItem()Z

    move-result v26

    if-eqz v26, :cond_3a

    .line 5204
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTriggerGlobalAction:Z

    .line 5206
    if-nez v14, :cond_39

    .line 5207
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashlightMode:I

    .line 5218
    :cond_33
    :goto_13
    if-nez v6, :cond_34

    if-nez v12, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v26, v0

    if-nez v26, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3b

    :cond_34
    const/16 v26, 0x1

    :goto_14
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(ZZ)V

    .line 5224
    if-nez v14, :cond_19

    .line 5225
    const/16 v26, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyDriverPowerKeyPressed(C)V

    goto/16 :goto_c

    .line 5150
    .end local v6    # "bHandled":Z
    :cond_35
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 5152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingingSilentFlag:Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;->setFlag()V

    .line 5153
    const/4 v8, 0x1

    .line 5155
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_2f

    .line 5156
    const-string v26, "InputDispatcher"

    const-string v27, "<POWER DOWN>Click POWER key to silence mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 5159
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_2f

    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v26

    if-eqz v26, :cond_2f

    if-eqz v14, :cond_2f

    .line 5164
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v12

    goto/16 :goto_10

    .line 5185
    :cond_37
    if-eqz v7, :cond_31

    .line 5187
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v12

    goto/16 :goto_11

    .line 5193
    :cond_38
    const/4 v6, 0x0

    goto/16 :goto_12

    .line 5209
    .restart local v6    # "bHandled":Z
    :cond_39
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashlightMode:I

    goto :goto_13

    .line 5212
    :cond_3a
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashlightMode:I

    goto :goto_13

    .line 5218
    :cond_3b
    const/16 v26, 0x0

    goto :goto_14

    .line 5229
    .end local v6    # "bHandled":Z
    .end local v7    # "bNeedToEndCall":Z
    .end local v8    # "bSilentByPowerKey":Z
    .end local v12    # "hungUp":Z
    .end local v16    # "isDotviewHandled":Z
    .end local v22    # "panic":Z
    .end local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_3c
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 5230
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 5233
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportDotviewLongPressPowerKey:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3d

    .line 5234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPressDotview:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDelayNeedToEndCall:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3d

    .line 5237
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->EndCallWithDotview()V

    .line 5238
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDelayNeedToEndCall:Z

    .line 5244
    :cond_3d
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnable2KeyHWResetDevice:Z

    if-eqz v26, :cond_41

    .line 5249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismiss2KeyHWResetHint:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 5250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismiss2KeyHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 5251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetHint:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast_2KeyHWResetIndicator:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5265
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTriggerGlobalAction:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3e

    .line 5266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5270
    :cond_3e
    if-nez v9, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_42

    :cond_3f
    const/16 v26, 0x1

    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v26

    if-eqz v26, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    move/from16 v26, v0

    if-eqz v26, :cond_43

    .line 5271
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    move/from16 v26, v0

    if-nez v26, :cond_43

    .line 5272
    const-string v26, "WindowManager"

    const-string v27, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5277
    :goto_17
    const/16 v18, 0x0

    .line 5280
    const/16 v26, 0x31

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyDriverPowerKeyPressed(C)V

    .line 5283
    :cond_40
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_c

    .line 5258
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissHWResetIndicator:Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 5259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress_Toast:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_15

    .line 5270
    :cond_42
    const/16 v26, 0x0

    goto :goto_16

    .line 5275
    :cond_43
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->powerShortPress(J)V

    goto :goto_17

    .line 5289
    :sswitch_4
    and-int/lit8 v23, v23, -0x2

    .line 5290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v26

    if-nez v26, :cond_44

    .line 5291
    const/16 v25, 0x0

    .line 5293
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v28

    const/16 v27, 0x4

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move/from16 v3, v27

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 5295
    const/16 v18, 0x0

    .line 5296
    goto/16 :goto_c

    .line 5300
    :sswitch_5
    and-int/lit8 v23, v23, -0x2

    .line 5301
    const/16 v18, 0x1

    .line 5302
    goto/16 :goto_c

    .line 5317
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v26

    if-eqz v26, :cond_45

    .line 5320
    and-int/lit8 v23, v23, -0x2

    .line 5322
    :cond_45
    and-int/lit8 v26, v23, 0x1

    if-nez v26, :cond_19

    .line 5328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    new-instance v28, Landroid/view/KeyEvent;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v26 .. v28}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 5331
    .local v21, "msg":Landroid/os/Message;
    const/16 v26, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5332
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 5338
    .end local v21    # "msg":Landroid/os/Message;
    :sswitch_7
    if-eqz v10, :cond_19

    .line 5339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v24

    .line 5340
    .restart local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v24, :cond_19

    .line 5341
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v26

    if-eqz v26, :cond_19

    .line 5342
    const-string v26, "WindowManager"

    const-string v27, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5344
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 5348
    and-int/lit8 v23, v23, -0x2

    goto/16 :goto_c

    .line 5359
    .end local v24    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_8
    and-int/lit8 v26, v23, 0x1

    if-nez v26, :cond_19

    if-nez v10, :cond_19

    .line 5360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0xc

    if-eqz v20, :cond_46

    const/16 v26, 0x1

    :goto_18
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    .line 5363
    .restart local v21    # "msg":Landroid/os/Message;
    const/16 v26, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5364
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 5361
    .end local v21    # "msg":Landroid/os/Message;
    :cond_46
    const/16 v26, 0x0

    goto :goto_18

    .line 5374
    :sswitch_9
    and-int/lit8 v23, v23, -0x2

    .line 5375
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 5376
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v27, "north"

    const/16 v26, 0x232a

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_48

    const/16 v26, 0x1

    :goto_19
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5377
    const-string v27, "state"

    if-eqz v10, :cond_49

    const/16 v26, 0x1

    :goto_1a
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5378
    const-string v26, "com.htc.cover.closed"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5380
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_47

    .line 5381
    const-string v27, "WindowManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "BroadCast cover changed intent (north, state) = ("

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v26, 0x232a

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_4a

    const/16 v26, 0x1

    :goto_1b
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ", "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ")"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5385
    :cond_47
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    .line 5386
    sget-boolean v26, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v26, :cond_19

    .line 5387
    const-string v26, "InputDispatcher"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mDotviewOn="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5376
    :cond_48
    const/16 v26, 0x0

    goto/16 :goto_19

    .line 5377
    :cond_49
    const/16 v26, 0x0

    goto/16 :goto_1a

    .line 5381
    :cond_4a
    const/16 v26, 0x0

    goto :goto_1b

    .line 5397
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInOOBE:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4b

    .line 5399
    and-int/lit8 v23, v23, -0x2

    .line 5400
    const-string v26, "InputDispatcher"

    const-string v27, "Camera key has been blocked because Setup Wizard (OOBE) has not completed."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5402
    :cond_4b
    if-eqz v10, :cond_4c

    if-nez v14, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDotviewOn:Z

    move/from16 v26, v0

    if-nez v26, :cond_4c

    .line 5403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x1f4

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c

    .line 5405
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLongPress:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 5414
    :sswitch_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v26, v0

    if-nez v26, :cond_19

    .line 5416
    if-eqz v10, :cond_4d

    if-eqz v14, :cond_4d

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4d

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v26

    if-eqz v26, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsBackKeyInterceptedByLockTaskMode:Z

    move/from16 v26, v0

    if-nez v26, :cond_4d

    .line 5418
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsBackKeyInterceptedByLockTaskMode:Z

    .line 5419
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 5421
    const-string v26, "WindowManager"

    const-string v27, "POWER+BACK to stopLockTaskMode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStopLockTaskModeRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5428
    :cond_4d
    :goto_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsBackKeyInterceptedByLockTaskMode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_19

    .line 5429
    if-nez v10, :cond_4e

    .line 5430
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsBackKeyInterceptedByLockTaskMode:Z

    .line 5432
    :cond_4e
    and-int/lit8 v23, v23, -0x2

    .line 5433
    const-string v26, "WindowManager"

    const-string v27, "remove PASS_TO_USER flag after stopLockTaskMode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 5424
    :catch_0
    move-exception v11

    .line 5425
    .local v11, "e":Landroid/os/RemoteException;
    const-string v26, "WindowManager"

    const-string v27, "Unable to reach activity manager"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 5448
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_4f
    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_d

    .line 4923
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_b
        0x5 -> :sswitch_7
        0x6 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_3
        0x1b -> :sswitch_a
        0x4f -> :sswitch_6
        0x55 -> :sswitch_6
        0x56 -> :sswitch_6
        0x57 -> :sswitch_6
        0x58 -> :sswitch_6
        0x59 -> :sswitch_6
        0x5a -> :sswitch_6
        0x5b -> :sswitch_6
        0x7e -> :sswitch_6
        0x7f -> :sswitch_6
        0x82 -> :sswitch_6
        0xa4 -> :sswitch_0
        0xde -> :sswitch_6
        0xdf -> :sswitch_4
        0xe0 -> :sswitch_5
        0xe7 -> :sswitch_8
        0x232a -> :sswitch_9
        0x232b -> :sswitch_9
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v0, 0x0

    .line 5505
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 5506
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-wide/32 v2, 0xf4240

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 5512
    :cond_0
    :goto_0
    return v0

    .line 5509
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5510
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    .prologue
    .line 1582
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1179
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzPrivateFlagKeyguardNeeded()Z

    move-result v0

    if-nez v0, :cond_flyme_0

    const/4 v0, 0x0

    return v0

    :cond_flyme_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecureIncludingHidden()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7ed

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    .prologue
    .line 5987
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5988
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v1

    return v0

    .line 5989
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2128
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 5936
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 5942
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5943
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 5908
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x1

    .line 7043
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_0

    .line 7045
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_1

    .line 7047
    :cond_0
    :goto_0
    return v0

    .line 7045
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1184
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .prologue
    .line 6820
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .prologue
    .line 6824
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6825
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6827
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 2591
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

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

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3347
    :goto_0
    return-void

    .line 3314
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3317
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 3333
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3336
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz v0, :cond_2

    .line 3338
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    .line 3339
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3340
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_0

    .line 3343
    :cond_2
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3344
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 3334
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method launchVoiceAssistWithWakeLock(Z)V
    .locals 3
    .param p1, "keyguardActive"    # Z

    .prologue
    .line 5570
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5572
    .local v0, "voiceIntent":Landroid/content/Intent;
    const-string v1, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5573
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5574
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5575
    return-void
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 24
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-static/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->mzPrivateFlagKeyguardNeeded(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 4258
    :cond_1
    :goto_0
    return-void

    .line 3832
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v19

    .line 3833
    .local v19, "isDefaultDisplay":Z
    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    const/16 v20, 0x1

    .line 3835
    .local v20, "needsToOffsetInputMethodTarget":Z
    :goto_1
    if-eqz v20, :cond_3

    .line 3837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3840
    :cond_3
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    .line 3841
    .local v4, "fl":I
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v21, v0

    .line 3842
    .local v21, "sim":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v22

    .line 3844
    .local v22, "sysUiFl":I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3845
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3846
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 3847
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 3848
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3849
    .local v12, "vf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 3850
    .local v13, "dcf":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 3851
    .local v14, "sf":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 3853
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v16, 0x1

    .line 3856
    .local v16, "hasNavBar":Z
    :goto_2
    move/from16 v0, v21

    and-int/lit16 v5, v0, 0xf0

    .line 3858
    .local v5, "adjust":I
    if-eqz v19, :cond_8

    .line 3859
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3864
    :goto_3
    if-nez v19, :cond_a

    .line 3865
    if-eqz p2, :cond_9

    .line 3868
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4226
    :goto_4
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_4

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_4

    .line 4227
    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4228
    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4229
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_4

    .line 4230
    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4231
    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->setLayoutWindowLW(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v7, p1

    .line 4245
    invoke-interface/range {v7 .. v14}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4249
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_5

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4251
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4252
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4254
    :cond_5
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4256
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_0

    .line 3833
    .end local v4    # "fl":I
    .end local v5    # "adjust":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "cf":Landroid/graphics/Rect;
    .end local v12    # "vf":Landroid/graphics/Rect;
    .end local v13    # "dcf":Landroid/graphics/Rect;
    .end local v14    # "sf":Landroid/graphics/Rect;
    .end local v16    # "hasNavBar":Z
    .end local v20    # "needsToOffsetInputMethodTarget":Z
    .end local v21    # "sim":I
    .end local v22    # "sysUiFl":I
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 3853
    .restart local v4    # "fl":I
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "vf":Landroid/graphics/Rect;
    .restart local v13    # "dcf":Landroid/graphics/Rect;
    .restart local v14    # "sf":Landroid/graphics/Rect;
    .restart local v20    # "needsToOffsetInputMethodTarget":Z
    .restart local v21    # "sim":I
    .restart local v22    # "sysUiFl":I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 3861
    .restart local v5    # "adjust":I
    .restart local v16    # "hasNavBar":Z
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 3871
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3872
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3873
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3875
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3878
    :cond_a
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_b

    .line 3879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3880
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3881
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3883
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3885
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 3887
    const/16 v2, 0x50

    iput v2, v15, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3888
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_4

    .line 3889
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_c

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_c

    .line 3890
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3891
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3892
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3893
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3894
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3895
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3896
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3897
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 3898
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3902
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 3903
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 3904
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 3905
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 3906
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_f

    const/16 v17, 0x1

    .line 3908
    .local v17, "inheritTranslucentDecor":Z
    :goto_5
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_10

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_10

    const/16 v18, 0x1

    .line 3911
    .local v18, "isAppWindow":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v23, 0x1

    .line 3913
    .local v23, "topAtRest":Z
    :goto_7
    if-eqz v18, :cond_e

    if-nez v17, :cond_e

    if-nez v23, :cond_e

    .line 3914
    and-int/lit8 v2, v22, 0x4

    if-nez v2, :cond_d

    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_d

    const/high16 v2, 0x4000000

    and-int/2addr v2, v4

    if-nez v2, :cond_d

    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_d

    .line 3920
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 3922
    :cond_d
    const/high16 v2, 0x8000000

    and-int/2addr v2, v4

    if-nez v2, :cond_e

    and-int/lit8 v2, v22, 0x2

    if-nez v2, :cond_e

    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_e

    .line 3927
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 3928
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 3932
    :cond_e
    const v2, 0x10100

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_1e

    .line 3940
    if-eqz p2, :cond_12

    .line 3943
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 3906
    .end local v17    # "inheritTranslucentDecor":Z
    .end local v18    # "isAppWindow":Z
    .end local v23    # "topAtRest":Z
    :cond_f
    const/16 v17, 0x0

    goto :goto_5

    .line 3908
    .restart local v17    # "inheritTranslucentDecor":Z
    :cond_10
    const/16 v18, 0x0

    goto :goto_6

    .line 3911
    .restart local v18    # "isAppWindow":Z
    :cond_11
    const/16 v23, 0x0

    goto :goto_7

    .line 3945
    .restart local v23    # "topAtRest":Z
    :cond_12
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_13

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_17

    .line 3954
    :cond_13
    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_8
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3956
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3957
    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_9
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3960
    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_a
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4012
    :goto_b
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_1c

    .line 4013
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4014
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4015
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4016
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4017
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4041
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v4, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4042
    const/16 v2, 0x30

    if-eq v5, v2, :cond_1d

    .line 4043
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4044
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4045
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4046
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 3954
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_8

    .line 3957
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_9

    .line 3960
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_a

    .line 3967
    :cond_17
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_18

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_18

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_18

    .line 3972
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3973
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3974
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3975
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 3977
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_19

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_19

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_19

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_19

    .line 3985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3986
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3987
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3988
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3992
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 3993
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3994
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 3995
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 3997
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3998
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3999
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4001
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4006
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4007
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4008
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4009
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 4019
    :cond_1a
    const/16 v2, 0x10

    if-eq v5, v2, :cond_1b

    .line 4020
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4021
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4022
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4023
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_c

    .line 4025
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4026
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4027
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4028
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_c

    .line 4036
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4037
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4038
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4039
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_c

    .line 4048
    :cond_1d
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 4051
    :cond_1e
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_1f

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_30

    .line 4058
    :cond_1f
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_20

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_24

    .line 4060
    :cond_20
    if-eqz v16, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_d
    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4062
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4063
    if-eqz v16, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_e
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4066
    if-eqz v16, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_f
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4153
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v4, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4155
    const/16 v2, 0x30

    if-eq v5, v2, :cond_2f

    .line 4156
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4157
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4159
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 4060
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_d

    .line 4063
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_e

    .line 4066
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_f

    .line 4072
    :cond_24
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_25

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_26

    .line 4075
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4076
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4077
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4079
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    .line 4084
    :cond_26
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_27

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_28

    :cond_27
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_28

    .line 4088
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4089
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4090
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4092
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4094
    :cond_28
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-eq v2, v3, :cond_29

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e9

    if-ne v2, v3, :cond_2a

    .line 4097
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4098
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4099
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4101
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4103
    :cond_2a
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_2b

    .line 4106
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4109
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4110
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4111
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4113
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4114
    :cond_2b
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2c

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2c

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_2c

    .line 4119
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4120
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4121
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4123
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4125
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_2e

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2e

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_2d

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_2d

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2e

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_2e

    .line 4138
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4139
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4140
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4142
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4145
    :cond_2e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4146
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4149
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4161
    :cond_2f
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 4163
    :cond_30
    if-eqz p2, :cond_31

    .line 4168
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 4174
    :cond_31
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-ne v2, v3, :cond_32

    .line 4179
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4180
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4181
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4183
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 4185
    :cond_32
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_33

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-eq v2, v3, :cond_33

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-ne v2, v3, :cond_34

    .line 4188
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4190
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 4193
    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4195
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4196
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4197
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4200
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4201
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 4213
    :goto_11
    const/16 v2, 0x30

    if-eq v5, v2, :cond_37

    .line 4214
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4215
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4217
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 4202
    :cond_35
    const/16 v2, 0x10

    if-eq v5, v2, :cond_36

    .line 4203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4206
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_11

    .line 4208
    :cond_36
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4209
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4210
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4211
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_11

    .line 4219
    :cond_37
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 6478
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6479
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6485
    if-nez p1, :cond_0

    .line 6486
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "options":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6488
    .restart local p1    # "options":Landroid/os/Bundle;
    :cond_0
    const-string v0, "ENABLE_UNLOCK_SCREEN_NOW"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6490
    if-eqz p1, :cond_1

    .line 6493
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 6495
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6496
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 872
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportAutoRotation:Z

    if-eqz v1, :cond_1

    .line 873
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v0

    .line 882
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_0

    .line 890
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_4

    .line 899
    const/4 v0, 0x0

    goto :goto_0

    .line 901
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportAutoRotation:Z

    goto :goto_0
.end method

.method public notifyActivityDrawnForKeyguardLw()V
    .locals 2

    .prologue
    .line 5975
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5976
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5983
    :cond_0
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4673
    if-eqz p3, :cond_0

    move v2, v3

    .line 4674
    .local v2, "lensCoverState":I
    :goto_0
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v5, v2, :cond_1

    .line 4691
    :goto_1
    return-void

    .end local v2    # "lensCoverState":I
    :cond_0
    move v2, v4

    .line 4673
    goto :goto_0

    .line 4677
    .restart local v2    # "lensCoverState":I
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v5, v3, :cond_2

    if-nez v2, :cond_2

    .line 4680
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v3, :cond_3

    move v1, v4

    .line 4682
    .local v1, "keyguardActive":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 4683
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4687
    .local v0, "intent":Landroid/content/Intent;
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 4688
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4690
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyguardActive":Z
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraLensCoverState:I

    goto :goto_1

    .line 4680
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    goto :goto_2

    .line 4685
    .restart local v1    # "keyguardActive":Z
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_3
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 6
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4655
    if-eqz p3, :cond_1

    move v0, v1

    .line 4656
    .local v0, "newLidState":I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v0, v3, :cond_2

    .line 4669
    :cond_0
    :goto_1
    return-void

    .end local v0    # "newLidState":I
    :cond_1
    move v0, v2

    .line 4655
    goto :goto_0

    .line 4660
    .restart local v0    # "newLidState":I
    :cond_2
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 4661
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 4662
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 4664
    if-eqz p3, :cond_3

    .line 4665
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_1

    .line 4666
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_0

    .line 4667
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 6750
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p2, v7, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerSaverState:I

    if-ne v1, v7, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerSaverTurnOffVibrationState:I

    if-ne v1, v7, :cond_2

    .line 6752
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_1

    .line 6754
    const-string v1, "InputDispatcher"

    const-string v6, "VirtualKey vibration canceled."

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v5

    .line 6815
    :goto_0
    return v1

    .line 6760
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "haptic_feedback_enabled"

    const/4 v8, -0x2

    invoke-static {v1, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_4

    move v0, v7

    .line 6762
    .local v0, "hapticsDisabled":Z
    :goto_1
    if-eqz v0, :cond_5

    if-nez p3, :cond_5

    .line 6764
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_3

    .line 6765
    const-string v1, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performHapticFeedbackLw return: always:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hapticsDisabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v5

    .line 6767
    goto :goto_0

    .end local v0    # "hapticsDisabled":Z
    :cond_4
    move v0, v5

    .line 6760
    goto :goto_1

    .line 6769
    .restart local v0    # "hapticsDisabled":Z
    :cond_5
    const/4 v4, 0x0

    .line 6770
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    move v1, v5

    .line 6793
    goto :goto_0

    .line 6772
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 6796
    :goto_2
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_6

    .line 6797
    const-string v1, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Haptic effectId:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", pattern len:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    :cond_6
    if-eqz p1, :cond_7

    .line 6802
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 6803
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 6808
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_3
    array-length v1, v4

    if-ne v1, v7, :cond_8

    .line 6810
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v5

    .end local v4    # "pattern":[J
    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    :goto_4
    move v1, v7

    .line 6815
    goto/16 :goto_0

    .line 6775
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .restart local v4    # "pattern":[J
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 6776
    goto :goto_2

    .line 6778
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 6779
    goto :goto_2

    .line 6781
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClockTickVibePattern:[J

    .line 6782
    goto :goto_2

    .line 6784
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 6785
    goto :goto_2

    .line 6787
    :sswitch_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 6788
    goto :goto_2

    .line 6790
    :sswitch_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 6791
    goto :goto_2

    .line 6805
    :cond_7
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 6806
    .restart local v2    # "owningUid":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "owningPackage":Ljava/lang/String;
    goto :goto_3

    .line 6813
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v5, -0x1

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_4

    .line 6770
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    invoke-static/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->prepareAddWindowLw(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v0, 0x0

    return v0

    :cond_flyme_0

    const/4 v0, -0x7

    .line 2360
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2410
    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    .line 2362
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 2366
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2370
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2371
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2372
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->hideScrim()V

    goto :goto_0

    .line 2375
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    .line 2379
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2383
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2384
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 2388
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2393
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2398
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2403
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 2406
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2360
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7de -> :sswitch_3
        0x7e1 -> :sswitch_4
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_5
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 1916
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    .prologue
    .line 2337
    if-eqz p2, :cond_0

    .line 2338
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2339
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2341
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 2416
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 2417
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2418
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2419
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 2423
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 2424
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2425
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2427
    :cond_1
    return-void

    .line 2420
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 2421
    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 6027
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v3, :cond_0

    move v0, v2

    .line 6177
    :goto_0
    return v0

    .line 6031
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6032
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 6033
    .local v1, "sensorRotation":I
    if-gez v1, :cond_1

    .line 6034
    move v1, p2

    .line 6038
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v3, :cond_2

    .line 6040
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 6120
    .local v0, "preferredRotation":I
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 6174
    :pswitch_0
    if-ltz v0, :cond_20

    .line 6175
    monitor-exit v5

    goto :goto_0

    .line 6179
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6042
    .restart local v1    # "sensorRotation":I
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcMode:Z

    if-eqz v3, :cond_4

    .line 6043
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v3, :cond_3

    const-string v3, "WindowManager"

    const-string v4, "Using landscape rotation because it is HTC mode now"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_1

    .line 6046
    .end local v0    # "preferredRotation":I
    :cond_4
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v7, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v3, :cond_7

    .line 6051
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_6

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_2
    goto :goto_1

    .end local v0    # "preferredRotation":I
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_2

    .line 6053
    :cond_7
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_8

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v8, :cond_b

    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v3, :cond_9

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v3, :cond_b

    .line 6060
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_a

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_3
    goto :goto_1

    .end local v0    # "preferredRotation":I
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_3

    .line 6062
    :cond_b
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v3, :cond_c

    .line 6065
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_1

    .line 6066
    .end local v0    # "preferredRotation":I
    :cond_c
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v3, :cond_d

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v3, :cond_d

    .line 6072
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_1

    .line 6073
    .end local v0    # "preferredRotation":I
    :cond_d
    const/16 v3, 0xe

    if-ne p1, v3, :cond_e

    .line 6075
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto :goto_1

    .line 6076
    .end local v0    # "preferredRotation":I
    :cond_e
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v3, :cond_f

    .line 6079
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto :goto_1

    .line 6080
    .end local v0    # "preferredRotation":I
    :cond_f
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v3, :cond_10

    if-eq p1, v7, :cond_11

    const/4 v3, -0x1

    if-eq p1, v3, :cond_11

    const/16 v3, 0xb

    if-eq p1, v3, :cond_11

    const/16 v3, 0xc

    if-eq p1, v3, :cond_11

    const/16 v3, 0xd

    if-eq p1, v3, :cond_11

    :cond_10
    if-eq p1, v8, :cond_11

    if-eq p1, v9, :cond_11

    const/4 v3, 0x6

    if-eq p1, v3, :cond_11

    const/4 v3, 0x7

    if-ne p1, v3, :cond_16

    .line 6092
    :cond_11
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_12

    .line 6096
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, #android:bool@config_allowAllRotations#t

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v4

    :goto_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 6099
    :cond_12
    if-ne v1, v7, :cond_13

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v4, :cond_13

    if-eq p1, v9, :cond_13

    const/16 v3, 0xd

    if-ne p1, v3, :cond_15

    .line 6103
    :cond_13
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_1

    .end local v0    # "preferredRotation":I
    :cond_14
    move v3, v2

    .line 6096
    goto :goto_4

    .line 6105
    :cond_15
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_1

    .line 6107
    .end local v0    # "preferredRotation":I
    :cond_16
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_17

    const/4 v3, 0x5

    if-eq p1, v3, :cond_17

    .line 6113
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_1

    .line 6117
    .end local v0    # "preferredRotation":I
    :cond_17
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_1

    .line 6123
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 6124
    monitor-exit v5

    goto/16 :goto_0

    .line 6126
    :cond_18
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 6130
    .restart local v0    # "preferredRotation":I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 6131
    monitor-exit v5

    goto/16 :goto_0

    .line 6133
    :cond_19
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 6137
    .restart local v0    # "preferredRotation":I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 6138
    monitor-exit v5

    goto/16 :goto_0

    .line 6140
    :cond_1a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 6144
    .restart local v0    # "preferredRotation":I
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6145
    monitor-exit v5

    goto/16 :goto_0

    .line 6147
    :cond_1b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 6152
    .restart local v0    # "preferredRotation":I
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 6153
    monitor-exit v5

    goto/16 :goto_0

    .line 6155
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 6156
    monitor-exit v5

    move v0, p2

    goto/16 :goto_0

    .line 6158
    :cond_1d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 6163
    .restart local v0    # "preferredRotation":I
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6164
    monitor-exit v5

    goto/16 :goto_0

    .line 6166
    :cond_1e
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6167
    monitor-exit v5

    move v0, p2

    goto/16 :goto_0

    .line 6169
    :cond_1f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 6177
    .restart local v0    # "preferredRotation":I
    :cond_20
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto/16 :goto_0

    .line 6120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 6184
    packed-switch p1, :pswitch_data_0

    .line 6196
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 6188
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    .line 6193
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    .line 6184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 5803
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5805
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5806
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 5809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 5810
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5811
    monitor-exit v1

    .line 5812
    return-void

    .line 5811
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 5817
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5819
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5820
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 5823
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 5824
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5825
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5827
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 5830
    return-void

    .line 5825
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 2436
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_6

    .line 2437
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2

    move v0, v2

    .local v0, "isKeyguard":Z
    :goto_0
    if-eq p2, v4, :cond_0

    if-ne p2, v6, :cond_4

    :cond_0
    if-eqz v0, :cond_3

    .end local v0    # "isKeyguard":Z
    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isKeyguard":Z
    :cond_3
    sget v1, Lcom/flyme/internal/R$anim;->dock_top_exit:I

    goto :goto_1

    :cond_4
    if-eq p2, v2, :cond_5

    if-ne p2, v5, :cond_e

    :cond_5
    if-nez v0, :cond_1

    sget v1, Lcom/flyme/internal/R$anim;->dock_top_enter:I

    goto :goto_1

    .end local v0    # "isKeyguard":Z
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_e

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v3, :cond_a

    if-eq p2, v4, :cond_7

    if-ne p2, v6, :cond_8

    :cond_7
    const v1, #android:anim@dock_bottom_exit#t

    goto :goto_1

    :cond_8
    if-eq p2, v2, :cond_9

    if-ne p2, v5, :cond_e

    :cond_9
    const v1, #android:anim@dock_bottom_enter#t

    goto :goto_1

    :cond_a
    if-eq p2, v4, :cond_b

    if-ne p2, v6, :cond_c

    :cond_b
    const v1, #android:anim@dock_right_exit#t

    goto :goto_1

    :cond_c
    if-eq p2, v2, :cond_d

    if-ne p2, v5, :cond_e

    :cond_d
    const v1, #android:anim@dock_right_enter#t

    goto :goto_1

    :cond_e
    const/4 v3, 0x5

    if-ne p2, v3, :cond_f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, #android:anim@app_starting_exit#t

    goto :goto_1

    :cond_f
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_10

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v3, :cond_10

    if-eq p2, v2, :cond_1

    .line 2480
    :cond_10
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4
    .param p1, "anim"    # [I

    .prologue
    const v3, #android:anim@rotation_animation_enter#t

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2489
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 2490
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_0

    aput v1, p1, v2

    aput v1, p1, v1

    :goto_0
    return-void

    :pswitch_0
    const v0, #android:anim@rotation_animation_xfade_exit#t

    aput v0, p1, v1

    aput v3, p1, v2

    goto :goto_0

    :pswitch_1
    const v0, #android:anim@rotation_animation_jump_exit#t

    aput v0, p1, v1

    aput v3, p1, v2

    goto :goto_0

    :cond_0
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_0

    .line 2490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 6000
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6001
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6004
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6005
    return-void
.end method

.method sendEvent(III)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I

    .prologue
    .line 7647
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendEvent(IIIJ)V

    .line 7648
    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 16
    .param p1, "code"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I
    .param p4, "when"    # J

    .prologue
    .line 7651
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 7652
    .local v4, "now":J
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .line 7653
    .local v10, "repeatCount":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    const/16 v15, 0x101

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 7658
    .local v3, "ev":Landroid/view/KeyEvent;
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7663
    :goto_1
    return-void

    .line 7652
    .end local v3    # "ev":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 7660
    .restart local v3    # "ev":Landroid/view/KeyEvent;
    .restart local v10    # "repeatCount":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 3753
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 3761
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 3762
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 3763
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 3764
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 3801
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .end local p7    # "df":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3803
    return-void

    .line 3772
    .restart local p7    # "df":Landroid/graphics/Rect;
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_4

    .line 3773
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3794
    :cond_2
    :goto_1
    if-eqz p5, :cond_c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_2
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3795
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3796
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3781
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3782
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3783
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 3784
    :cond_5
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 3785
    :cond_6
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 3786
    :cond_7
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 3787
    :cond_8
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 3788
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 3789
    :cond_9
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 3790
    :cond_a
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 3791
    :cond_b
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_c
    move-object v0, p9

    .line 3794
    goto :goto_2
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1, "newOrientation"    # I

    .prologue
    .line 6719
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6720
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 6721
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 6722
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6724
    :cond_0
    monitor-exit v1

    .line 6725
    return-void

    .line 6724
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 7014
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    .line 7015
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7016
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 7018
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_1

    .line 7020
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7025
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7026
    return-void

    .line 7021
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1587
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1588
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 1589
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 1590
    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 1591
    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 1593
    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 4694
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    .line 4695
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4696
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 4697
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4698
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4699
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4700
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4702
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 17
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1484
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1487
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1489
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1491
    .local v5, "res":Landroid/content/res/Resources;
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    .line 1492
    move/from16 v6, p3

    .line 1493
    .local v6, "shortSize":I
    move/from16 v2, p2

    .line 1494
    .local v2, "longSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v8, #android:bool@config_reverseDefaultRotation#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1497
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1498
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1517
    :goto_1
    const v8, #android:dimen@status_bar_height#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1521
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    const v12, #android:dimen@navigation_bar_height#t

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    .line 1524
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v12, #android:dimen@navigation_bar_height_landscape#t

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    .line 1529
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v16, #android:dimen@navigation_bar_width#t

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    aput v16, v14, v15

    aput v16, v12, v13

    aput v16, v10, v11

    aput v16, v8, v9

    .line 1536
    mul-int/lit16 v8, v6, 0xa0

    div-int v7, v8, p4

    .line 1537
    .local v7, "shortSizeDp":I
    mul-int/lit16 v8, v2, 0xa0

    div-int v3, v8, p4

    .line 1540
    .local v3, "longSizeDp":I
    const/16 v8, 0x258

    if-ge v7, v8, :cond_6

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    const v8, #android:bool@config_showNavigationBar#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1545
    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1546
    .local v4, "navBarOverride":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1547
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1554
    :cond_2
    :goto_3
    const-string v8, "portrait"

    const-string v9, "persist.demo.hdmirotation"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1555
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 1559
    :goto_4
    const-string v8, "persist.demo.hdmirotationlock"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 1563
    const/16 v8, 0x3c0

    if-lt v3, v8, :cond_9

    const/16 v8, 0x2d0

    if-lt v7, v8, :cond_9

    const v8, #android:bool@config_forceDefaultOrientation#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "true"

    const-string v9, "config.override_forced_orient"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    goto/16 :goto_0

    .line 1500
    .end local v3    # "longSizeDp":I
    .end local v4    # "navBarOverride":Ljava/lang/String;
    .end local v7    # "shortSizeDp":I
    :cond_3
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1501
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_1

    .line 1504
    .end local v2    # "longSize":I
    .end local v6    # "shortSize":I
    :cond_4
    move/from16 v6, p2

    .line 1505
    .restart local v6    # "shortSize":I
    move/from16 v2, p3

    .line 1506
    .restart local v2    # "longSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    const v8, #android:bool@config_reverseDefaultRotation#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1509
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1510
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_1

    .line 1512
    :cond_5
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1513
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_1

    .line 1540
    .restart local v3    # "longSizeDp":I
    .restart local v7    # "shortSizeDp":I
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1548
    .restart local v4    # "navBarOverride":Ljava/lang/String;
    :cond_7
    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1549
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_3

    .line 1557
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_4

    .line 1563
    :cond_9
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 7003
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7004
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7005
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 6202
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 6203
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    .prologue
    .line 6246
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 6247
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 6250
    return-void

    .line 6247
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setUserRotationMode(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 6224
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6227
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 6228
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6232
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6242
    :goto_0
    return-void

    .line 6237
    :cond_0
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    invoke-static/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->showBootMessage(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6407
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 1152
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1154
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    .prologue
    const-string v1, "globalactions"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MzGlobalActions;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/policy/impl/MzGlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/MzGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MzGlobalActions;

    .line 1163
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSupportFlashlight:Z

    if-eqz v1, :cond_1

    .line 1164
    const-string v1, "InputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFlashlightMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashlightMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlashlightMode:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->setFlashlightMode(I)V

    .line 1169
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 1170
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/MzGlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MzGlobalActions;->showDialog()V

    .line 1171
    if-eqz v0, :cond_2

    .line 1174
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1176
    :cond_2
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 3275
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3276
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3277
    return-void
.end method

.method startDockOrHome()V
    .locals 4

    .prologue
    .line 6651
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    .line 6653
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6654
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 6656
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6663
    :goto_0
    return-void

    .line 6658
    :catch_0
    move-exception v1

    .line 6662
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 5994
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5995
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 5997
    :cond_0
    return-void
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2056
    packed-switch p1, :pswitch_data_0

    .line 2067
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2059
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2061
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 2063
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 2065
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 2056
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 6333
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6334
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 6335
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6337
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6338
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 6339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6340
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->wakingUp()V

    .line 6341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 6343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->broadcastCoverIntentAfterBooting()V

    .line 6345
    return-void

    .line 6339
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 6313
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 6314
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 6316
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readCameraLensCoverState()V

    .line 6317
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateUiMode()V

    .line 6318
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6319
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 6321
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6327
    monitor-exit v1

    .line 6328
    return-void

    .line 6327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateOrientationListenerLp()V
    .locals 4

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenOnEarly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAwake="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentAppOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOrientationSensorEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_2
    const/4 v0, 0x1

    .line 927
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_4

    .line 928
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 929
    const/4 v0, 0x0

    .line 931
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_4

    .line 932
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 934
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    const-string v2, "Enabling listeners"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 941
    :cond_4
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 944
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_5

    const-string v1, "WindowManager"

    const-string v2, "Disabling listeners"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto/16 :goto_0
.end method

.method updateRotation(Z)V
    .locals 2
    .param p1, "alwaysSendConfiguration"    # Z

    .prologue
    .line 6549
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6553
    :goto_0
    return-void

    .line 6550
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 1
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .prologue
    .line 6558
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6562
    :goto_0
    return-void

    .line 6559
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 14

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1596
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1597
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1598
    .local v4, "updateRotation":Z
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1599
    :try_start_0
    const-string v10, "end_button_behavior"

    const/4 v12, 0x2

    const/4 v13, -0x2

    invoke-static {v3, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1603
    const-string v10, "incall_power_button_behavior"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v3, v10, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1609
    const-string v10, "wake_gesture_enabled"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v10, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_e

    move v7, v8

    .line 1612
    .local v7, "wakeGestureEnabledSetting":Z
    :goto_0
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v10, v7, :cond_0

    .line 1613
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 1614
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 1618
    :cond_0
    const-string v10, "user_powersaver_enable"

    const/4 v12, 0x0

    invoke-static {v3, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerSaverState:I

    .line 1619
    const-string v10, "powersaver_haptic_feedback"

    const/4 v12, 0x1

    invoke-static {v3, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerSaverTurnOffVibrationState:I

    .line 1623
    const-string v10, "htc_key_double_click_interval"

    const/16 v12, 0x96

    invoke-static {v3, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoublePressInterval:I

    .line 1628
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    .line 1629
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v10, :cond_1

    .line 1630
    const-string v10, "APP_SWITCH_KEY_BEHAVIOR"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    .line 1635
    :cond_1
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v10, :cond_2

    .line 1636
    const-string v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSettings, mHasNavigationBar= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", APP_SWITCH_KEY_BEHAVIOR= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasHtcSetupWizardInstalled:Z

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "setup_wizard_has_run"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_f

    move v10, v8

    :goto_1
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInOOBE:Z

    .line 1641
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v10, :cond_3

    .line 1642
    const-string v10, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mIsInOOBE= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInOOBE:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_3
    const-string v10, "user_rotation"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 1650
    .local v5, "userRotation":I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    if-eq v10, v5, :cond_4

    .line 1651
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1652
    const/4 v4, 0x1

    .line 1654
    :cond_4
    const-string v10, "accelerometer_rotation"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_10

    move v6, v0

    .line 1658
    .local v6, "userRotationMode":I
    :goto_2
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v10, v6, :cond_5

    .line 1659
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1660
    const/4 v4, 0x1

    .line 1661
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1664
    :cond_5
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_8

    .line 1665
    const-string v10, "pointer_location"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v3, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1667
    .local v2, "pointerLocation":I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v10, v2, :cond_7

    .line 1668
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1669
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1674
    :cond_7
    const-string v9, "htc_home_longpressed_key"

    const/16 v10, 0xdb

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressHomeBehavior_Keycode:I

    .line 1679
    const-string v9, "launch_dock_screen"

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_ROSIE_AS_HOME:I

    const/4 v12, -0x2

    invoke-static {v3, v9, v10, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    sget v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_HTC_DOCKSCREEN_AS_HOME:I

    if-ne v9, v10, :cond_11

    move v9, v8

    :goto_3
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsHtcDockScreenAsHome:Z

    .line 1684
    .end local v2    # "pointerLocation":I
    :cond_8
    const-string v9, "screen_off_timeout"

    const/4 v10, 0x0

    const/4 v12, -0x2

    invoke-static {v3, v9, v10, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1689
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    if-gez v9, :cond_9

    .line 1690
    const/16 v9, 0x3a98

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1693
    :cond_9
    const-string v9, "default_input_method"

    const/4 v10, -0x2

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1695
    .local v1, "imId":Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    move v0, v8

    .line 1696
    .local v0, "hasSoftInput":Z
    :cond_a
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v9, v0, :cond_b

    .line 1697
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 1698
    const/4 v4, 0x1

    .line 1700
    :cond_b
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    if-eqz v9, :cond_c

    .line 1701
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->loadSetting(I)V

    .line 1703
    :cond_c
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    .line 1704
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    if-eqz v4, :cond_d

    .line 1706
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 1708
    :cond_d
    return-void

    .end local v0    # "hasSoftInput":Z
    .end local v1    # "imId":Ljava/lang/String;
    .end local v5    # "userRotation":I
    .end local v6    # "userRotationMode":I
    .end local v7    # "wakeGestureEnabledSetting":Z
    :cond_e
    move v7, v0

    .line 1609
    goto/16 :goto_0

    .restart local v7    # "wakeGestureEnabledSetting":Z
    :cond_f
    move v10, v0

    .line 1640
    goto/16 :goto_1

    .restart local v5    # "userRotation":I
    :cond_10
    move v6, v8

    .line 1654
    goto/16 :goto_2

    .restart local v2    # "pointerLocation":I
    .restart local v6    # "userRotationMode":I
    :cond_11
    move v9, v0

    .line 1679
    goto :goto_3

    .line 1704
    .end local v2    # "pointerLocation":I
    .end local v5    # "userRotation":I
    .end local v6    # "userRotationMode":I
    .end local v7    # "wakeGestureEnabledSetting":Z
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method updateUiMode()V
    .locals 1

    .prologue
    .line 6536
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_0

    .line 6537
    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 6541
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6544
    :goto_0
    return-void

    .line 6542
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity()V
    .locals 6

    .prologue
    .line 6429
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 6430
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 6432
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6433
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6436
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetLastUserActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6437
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSetLastUserActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6439
    monitor-exit v1

    .line 6440
    return-void

    .line 6439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2512
    packed-switch p1, :pswitch_data_0

    .line 2523
    :cond_0
    :goto_0
    return v1

    .line 2516
    :pswitch_0
    if-eqz p3, :cond_1

    move v1, v2

    .line 2517
    goto :goto_0

    .line 2519
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2520
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 2521
    aget v3, v0, v2

    if-ne p1, v3, :cond_2

    aget v3, v0, v1

    if-eq p2, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 2512
    :pswitch_data_0
    .packed-switch #android:anim@rotation_animation_jump_exit#t
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public wakingUp()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 5750
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5751
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Waking up..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5758
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAwake:Z

    .line 5759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 5760
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5761
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5762
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5765
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5766
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5767
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5768
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5770
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_3

    .line 5772
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_2

    .line 5773
    const-string v0, "WindowManager"

    const-string v1, "handleWakingUp(), notify KeyguardDelegate screen turning on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 5783
    :goto_0
    return-void

    .line 5768
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5780
    :cond_3
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowManager"

    const-string v1, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5781
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishKeyguardDrawn()V

    goto :goto_0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    invoke-static/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;->windowTypeToLayerLw(I)I

    move-result v0

    if-eqz v0, :cond_flyme_0

    return v0

    :cond_flyme_0

    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 1962
    if-lt p1, v1, :cond_0

    const/16 v2, 0x63

    if-gt p1, v2, :cond_0

    .line 2050
    :goto_0
    :pswitch_0
    return v0

    .line 1965
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2049
    :pswitch_1
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1967
    goto :goto_0

    .line 1974
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1976
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1979
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1982
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1985
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1988
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 1991
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 1994
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 1997
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 2000
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 2003
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 2005
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 2007
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 2009
    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    .line 2011
    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    .line 2015
    :pswitch_12
    const/16 v0, 0x12

    goto :goto_0

    .line 2019
    :pswitch_13
    const/16 v0, 0x13

    goto :goto_0

    .line 2022
    :pswitch_14
    const/16 v0, 0x14

    goto :goto_0

    .line 2025
    :pswitch_15
    const/16 v0, 0x15

    goto :goto_0

    .line 2028
    :pswitch_16
    const/16 v0, 0x16

    goto :goto_0

    .line 2031
    :pswitch_17
    const/16 v0, 0x17

    goto :goto_0

    .line 2034
    :pswitch_18
    const/16 v0, 0x18

    goto :goto_0

    .line 2038
    :pswitch_19
    const/16 v0, 0x19

    goto :goto_0

    .line 2040
    :pswitch_1a
    const/16 v0, 0x1a

    goto :goto_0

    .line 2042
    :pswitch_1b
    const/16 v0, 0x1b

    goto :goto_0

    .line 2045
    :pswitch_1c
    const/16 v0, 0x1c

    goto :goto_0

    .line 2047
    :pswitch_1d
    const/16 v0, 0x1d

    goto :goto_0

    .line 1965
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_f
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_13
        :pswitch_8
        :pswitch_6
        :pswitch_11
        :pswitch_16
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_1a
        :pswitch_19
        :pswitch_e
        :pswitch_1c
        :pswitch_14
        :pswitch_12
        :pswitch_1b
        :pswitch_1d
        :pswitch_9
        :pswitch_15
        :pswitch_2
        :pswitch_18
        :pswitch_17
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private mzInterceptScreenshotChord()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v0, 0x320

    .local v0, "mzScreenshotChordDebounceDelayMillis":J
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v4, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v4, v0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v4, v0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzVolumeUpKeyTime:J

    add-long/2addr v4, v0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzVolumeUpKeyConsumedByScreenshotChord:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .end local v2    # "now":J
    :cond_2
    return-void
.end method

.method private mzInterceptVolumeKeyDownForTelephony(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, "keyCode":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzPwm:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->interceptVolumeKeyDownForTelephony(I)V

    return-void
.end method

.method private mzInterceptVolumeKeyUpForTelephony(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, "keyCode":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzPwm:Lcom/android/internal/policy/impl/MzPhoneWindowManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/policy/impl/MzPhoneWindowManager;->interceptVolumeKeyUpForTelephony(IZ)V

    return-void

    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mzInterceptVolumeUpKeyBeforeQueueing(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzVolumeUpKeyTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMzVolumeUpKeyConsumedByScreenshotChord:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->mzInterceptScreenshotChord()V

    return-void
.end method

.method getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "flyme_statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getScreenshotRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method getStatusBarController()Lcom/android/internal/policy/impl/BarController;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    return-object v0
.end method

.method mzRequestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public setStatusBarDarkTheme(Landroid/view/WindowManagerPolicy$WindowState;ZZ)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "dark"    # Z
    .param p3, "animation"    # Z

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarDarkTheme;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarDarkTheme;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V

    .local v0, "statusBarDarkTheme":Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeStatusBarDarkTheme;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setWinShowWhenLocked(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public shouldWindowAffectDarkStatusBarIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v7, v5, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x63

    if-gt v7, v8, :cond_1

    move v3, v5

    .local v3, "isAppWindow":Z
    :goto_0
    if-eqz v3, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    :goto_1
    return v6

    .end local v3    # "isAppWindow":Z
    :cond_1
    move v3, v6

    goto :goto_0

    .restart local v3    # "isAppWindow":Z
    :cond_2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    if-gt v7, v8, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_4

    move v1, v5

    .local v1, "hasLeftPadding":Z
    :goto_2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ge v7, v8, :cond_5

    move v2, v5

    .local v2, "hasRightPadding":Z
    :goto_3
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v8, :cond_6

    move v0, v5

    .local v0, "hasBottomPadding":Z
    :goto_4
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .end local v0    # "hasBottomPadding":Z
    .end local v1    # "hasLeftPadding":Z
    .end local v2    # "hasRightPadding":Z
    :cond_3
    move v6, v5

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_2

    .restart local v1    # "hasLeftPadding":Z
    :cond_5
    move v2, v6

    goto :goto_3

    .restart local v2    # "hasRightPadding":Z
    :cond_6
    move v0, v6

    goto :goto_4

    .end local v1    # "hasLeftPadding":Z
    .end local v2    # "hasRightPadding":Z
    :cond_7
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-ne v7, v8, :cond_8

    move v4, v5

    .local v4, "isKeyguardWindow":Z
    :goto_5
    if-eqz v4, :cond_0

    move v6, v5

    goto :goto_1

    .end local v4    # "isKeyguardWindow":Z
    :cond_8
    move v4, v6

    goto :goto_5
.end method
