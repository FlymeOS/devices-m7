.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$ScreenObserver;,
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$ToastHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$OpenSecureElement;,
        Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;,
        Lcom/android/nfc/NfcService$NfcAdapterExtrasService;,
        Lcom/android/nfc/NfcService$TimerOpenSecureElement;,
        Lcom/android/nfc/NfcService$NfcSecureElementService;,
        Lcom/android/nfc/NfcService$NfcVzwService;,
        Lcom/android/nfc/NfcService$NfcAccessExtrasService;,
        Lcom/android/nfc/NfcService$NfcAlaService;,
        Lcom/android/nfc/NfcService$NfcDtaService;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$NxpNfcAdapterService;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;,
        Lcom/android/nfc/NfcService$SettingsObserver;,
        Lcom/android/nfc/NfcService$ReaderModeParams;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_EMVCO_MULTIPLE_CARD_DETECTED:Ljava/lang/String; = "com.nxp.action.EMVCO_MULTIPLE_CARD_DETECTED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_LOOP_BACK_STATE:Ljava/lang/String; = "com.htc.intent.action.LOOP_BACK_MODE_STATE"

.field private static final ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field public static final ACTION_TSMC_ZONEINFO:Ljava/lang/String; = "com.htc.android.zoneinfo"

.field private static final APPLY_ROUTE_TRUE:I = 0xa

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field static final DBG:Z

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field private static final DISABLE_P2P_FOR_CAL_DEFAULT:Z = false

.field private static final DISABLE_READWRITE_FOR_CALL_DEFAULT:Z = false

.field private static final DISCOVERY_15693_DEFAULT:Z = true

.field private static final DISCOVERY_A_DEFAULT:Z = true

.field private static final DISCOVERY_B_DEFAULT:Z = true

.field private static final DISCOVERY_F_DEFAULT:Z = true

.field private static final DISCOVERY_MODE_READER:I = 0x0

.field private static final DISCOVERY_NFCIP_DEFAULT:Z = true

.field private static final DISCOVERY_P2P_DEFAULT:Z = true

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_CODE_MAX:I = 0x0

.field static final EE_ERROR_CODE_MIN:I = -0x6

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field static final EE_WIPE_WATCHDOG_MS:I = 0x3a98

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field public static final EXTRA_TSMC_ZONEINFO:Ljava/lang/String; = "inzone"

.field private static final GSMA_EVT_TRANSACTION_MULTICAST:I = 0x1

.field private static final GSMA_EVT_TRANSACTION_UNICAST:I = 0x0

.field static final INIT_WATCHDOG_MS:I = 0x7530

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field private static final LLCP_LTO_DEFAULT:I = 0x96

.field private static final LLCP_LTO_MAX:I = 0xff

.field private static final LLCP_MIU_DEFAULT:I = 0x80

.field private static final LLCP_MIU_MAX:I = 0x880

.field private static final LLCP_OPT_DEFAULT:I = 0x0

.field private static final LLCP_OPT_MAX:I = 0x3

.field private static final LLCP_WKS_DEFAULT:I = 0x1

.field private static final LLCP_WKS_MAX:I = 0xf

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MDM_LOCK_STATE_DEFAULT:Z = false

.field private static final MDM_PERM:Ljava/lang/String; = "com.htc.framework.permission.ACCESS_HTC_MDM_API"

.field private static final MDM_PERM_ERROR:Ljava/lang/String; = "ACCESS_HTC_MDM_API permission required"

.field static final MSG_CARD_EMULATION:I = 0xc9

.field static final MSG_CHECK_SCREEN_STATE:I = 0x26ad

.field static final MSG_CLEAR_ROUTING:I = 0xcb

.field static final MSG_COMMIT_ROUTING:I = 0x7

.field static final MSG_CONNECTIVITY_EVENT:I = 0xd3

.field static final MSG_DELAY_ENABLING_AFTER_MODEM_ON:I = 0x26b0

.field static final MSG_EMVCO_MULTI_CARD_DETECTED_EVENT:I = 0x130

.field static final MSG_INVOKE_BEAM:I = 0x8

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x1

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x2

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0x4

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_MOCK_NDEF_CONFIRM:I = 0x26ae

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_NDEF_TAG_CONFIRM:I = 0x26af

.field static final MSG_RESUME_POLLING:I = 0xb

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x9

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xa

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_SET_SCREEN_STATE:I = 0xd4

.field static final MSG_SE_APDU_RECEIVED:I = 0xce

.field static final MSG_SE_EMV_CARD_REMOVAL:I = 0xcf

.field static final MSG_SE_FIELD_ACTIVATED:I = 0xcc

.field static final MSG_SE_FIELD_DEACTIVATED:I = 0xcd

.field static final MSG_SE_LISTEN_ACTIVATED:I = 0xd1

.field static final MSG_SE_LISTEN_DEACTIVATED:I = 0xd2

.field static final MSG_SE_MIFARE_ACCESS:I = 0xd0

.field static final MSG_SWP_READER_ACTIVATED:I = 0x12e

.field static final MSG_SWP_READER_DEACTIVATED:I = 0x12f

.field static final MSG_SWP_READER_REQUESTED:I = 0x12d

.field static final MSG_TARGET_DESELECTED:I = 0xca

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field static final NFC_ON_DEFAULT:Z = true

.field static final NFC_POLLING_MODE:I = 0x3

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_ISO15693:I = 0x8

.field static final NFC_POLL_KOVIO:I = 0x20

.field public static final P61LIB_INUSE:I = 0x4

.field public static final PN65T_ID:I = 0x2

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_AIRPLANE_OVERRIDE:Ljava/lang/String; = "airplane_override"

.field private static final PREF_DEFAULT_ROUTE_ID:Ljava/lang/String; = "default_route_id"

.field private static final PREF_DISABLE_P2P_FOR_CALL:Ljava/lang/String; = "disable_p2p_for_call"

.field private static final PREF_DISABLE_READWRITE_FOR_CALL:Ljava/lang/String; = "disable_readwrite_for_call"

.field private static final PREF_DISCOVERY_15693:Ljava/lang/String; = "discovery_15693"

.field private static final PREF_DISCOVERY_A:Ljava/lang/String; = "discovery_a"

.field private static final PREF_DISCOVERY_B:Ljava/lang/String; = "discovery_b"

.field private static final PREF_DISCOVERY_F:Ljava/lang/String; = "discovery_f"

.field private static final PREF_DISCOVERY_NFCIP:Ljava/lang/String; = "discovery_nfcip"

.field private static final PREF_DISCOVERY_P2P:Ljava/lang/String; = "discovery_p2p"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field private static final PREF_LLCP_LTO:Ljava/lang/String; = "llcp_lto"

.field private static final PREF_LLCP_MIU:Ljava/lang/String; = "llcp_miu"

.field private static final PREF_LLCP_OPT:Ljava/lang/String; = "llcp_opt"

.field private static final PREF_LLCP_WKS:Ljava/lang/String; = "llcp_wks"

.field static final PREF_MDM_LOCK_ON:Ljava/lang/String; = "mdm_lock_on"

.field static final PREF_MDM_NFC_ON:Ljava/lang/String; = "mdm_nfc_on"

.field private static final PREF_MIFARE_CLT_ROUTE_ID:Ljava/lang/String; = "mifare_clt_route"

.field private static final PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID:Ljava/lang/String; = "mifare_desfire_proto_route"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field private static final PREF_SECURE_ELEMENT_ID:Ljava/lang/String; = "secure_element_id"

.field private static final PREF_SECURE_ELEMENT_ON:Ljava/lang/String; = "secure_element_on"

.field private static final PREF_SET_DEFAULT_ROUTE_ID:Ljava/lang/String; = "set_default_route"

.field private static final PROPERTY_LLCP_LTO:I = 0x0

.field private static final PROPERTY_LLCP_LTO_VALUE:Ljava/lang/String; = "llcp.lto"

.field private static final PROPERTY_LLCP_MIU:I = 0x1

.field private static final PROPERTY_LLCP_MIU_VALUE:Ljava/lang/String; = "llcp.miu"

.field private static final PROPERTY_LLCP_OPT:I = 0x3

.field private static final PROPERTY_LLCP_OPT_VALUE:Ljava/lang/String; = "llcp.opt"

.field private static final PROPERTY_LLCP_WKS:I = 0x2

.field private static final PROPERTY_LLCP_WKS_VALUE:Ljava/lang/String; = "llcp.wks"

.field private static final PROPERTY_NFC_CHIP_FIRMWARE:Ljava/lang/String; = "prop_nfc_chip_firmware"

.field private static final PROPERTY_NFC_CHIP_MANUFACTURER:Ljava/lang/String; = "prop_nfc_chip_manufacturer"

.field private static final PROPERTY_NFC_CHIP_MODEL:Ljava/lang/String; = "prop_nfc_chip_model"

.field private static final PROPERTY_NFC_DEFAULT_PROTOCOL_ROUTE:Ljava/lang/String; = "prop_nfc_default_protocol_route"

.field private static final PROPERTY_NFC_DISCOVERY_15693:I = 0x7

.field private static final PROPERTY_NFC_DISCOVERY_15693_VALUE:Ljava/lang/String; = "discovery.iso15693"

.field private static final PROPERTY_NFC_DISCOVERY_A:I = 0x4

.field private static final PROPERTY_NFC_DISCOVERY_A_VALUE:Ljava/lang/String; = "discovery.iso14443A"

.field private static final PROPERTY_NFC_DISCOVERY_B:I = 0x5

.field private static final PROPERTY_NFC_DISCOVERY_B_VALUE:Ljava/lang/String; = "discovery.iso14443B"

.field private static final PROPERTY_NFC_DISCOVERY_F:I = 0x6

.field private static final PROPERTY_NFC_DISCOVERY_F_VALUE:Ljava/lang/String; = "discovery.felica"

.field private static final PROPERTY_NFC_DISCOVERY_NFCIP:I = 0x8

.field private static final PROPERTY_NFC_DISCOVERY_NFCIP_VALUE:Ljava/lang/String; = "discovery.nfcip"

.field private static final PROPERTY_NFC_DISCOVERY_P2P:I = 0x9

.field private static final PROPERTY_NFC_DISCOVERY_P2P_VALUE:Ljava/lang/String; = "discovery.p2p"

.field private static final PROPERTY_NFC_LIBRARY_VERSION:Ljava/lang/String; = "prop_nfc_library_version"

.field public static final ROUTE_LOC_MASK:I = 0x3

.field static final ROUTE_OFF:I = 0x1

.field static final ROUTE_ON_ALWAYS:I = 0x5

.field static final ROUTE_ON_WHEN_POWER_ON:I = 0x4

.field static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x2

.field static final ROUTE_ON_WHEN_SCREEN_UNLOCK:I = 0x3

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field private static final SECURE_ELEMENT_SMX_ID:I = 0xabcdef

.field private static final SECURE_ELEMENT_UICC_ID:I = 0xabcdf0

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field private static final SE_ID_SMX:I = 0x1

.field private static final SE_ID_UICC:I = 0x2

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_DISABLE_RW_P2P:I = 0x6

.field static final TASK_EE_WIPE:I = 0x4

.field static final TASK_ENABLE:I = 0x1

.field public static final TECH_TYPE_MASK:I = 0x5

.field private static final UICC_READER_NAME:Ljava/lang/String; = "SIM: UICC"

.field public static final VEN_CFG_NFC_OFF_POWER_OFF:I = 0x2

.field public static final VEN_CFG_NFC_ON_POWER_ON:I = 0x3

.field static final VIBRATION_END:[J

.field static final VIBRATION_ERROR:[J

.field static final VIBRATION_START:[J

.field static final WAIT_FOR_NFCEE_OPERATIONS_MS:I = 0x1388

.field static final WAIT_FOR_NFCEE_POLL_MS:I = 0x64

.field static final bShowSecurityLog:Z

.field private static mDefaultoffHostSeId:I

.field public static mIsDtaMode:Z

.field private static sService:Lcom/android/nfc/NfcService;


# instance fields
.field private ACConnection:Landroid/content/ServiceConnection;

.field private DEFAULT_ROUTE_ID_DEFAULT:I

.field NXP_ESE_SWITCH_INFO:Ljava/lang/String;

.field PROVIDER_KEY_EMBEDDED_SECURE_ELEMENT_ENABLED:Ljava/lang/String;

.field private ROUTE_BATT_OFF:I

.field private ROUTE_ID_HOST:I

.field private ROUTE_ID_SMX:I

.field private ROUTE_ID_UICC:I

.field private ROUTE_SWITCH_OFF:I

.field private ROUTE_SWITCH_ON:I

.field private SECURE_ELEMENT_ID_DEFAULT:I

.field private SECURE_ELEMENT_ON_DEFAULT:Z

.field private volatile accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

.field private isClosed:Z

.field private isOpened:Z

.field private mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field mAlaService:Lcom/android/nfc/NfcService$NfcAlaService;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBootDelay:I

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mClearNextTapDefault:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field mDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

.field private mEeRoutingState:I

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mEndSound:I

.field mErrorSound:I

.field mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mGSMATransactionBehavior:I

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field private mHceRoutingState:I

.field mHostRouteEnabled:Z

.field private mHtcTestApps:[Ljava/lang/String;

.field mInProvisionMode:Z

.field mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIsAirplaneSensitive:Z

.field mIsAirplaneToggleable:Z

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsMdmLockEnabled:Z

.field mIsNdefPushEnabled:Z

.field mIsRouteForced:Z

.field mIsRoutingTableDirty:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field mNfcAccessExtrasService:Lcom/android/nfc/NfcService$NfcAccessExtrasService;

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field private mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field private mNfcEventsPermissionResults:[Z

.field private mNfcEventsResultCacheTime:J

.field mNfcHceRouteEnabled:Z

.field mNfcPollingEnabled:Z

.field private final mNfcSccAccessControl:Lcom/android/nfc/NfcSccAccessControl;

.field private final mNfcSeAccessControl:Lcom/android/nfc/NfcSeAccessControl;

.field private mNfcSecureElementState:Z

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private final mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

.field mNfceeRouteEnabled:Z

.field mNxpExtrasService:Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

.field mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

.field private mOpenSmxPending:Z

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private mPackagesWithNfcPermission:[Ljava/lang/String;

.field private mPackagesWithTransactionPermission:[Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPollingLoopStarted:Z

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mPowerShutDown:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScreenObserver:Landroid/os/FileObserver;

.field mScreenState:I

.field mScreenStateFile:Ljava/lang/String;

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field mSePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

.field private mSecureElementHandle:I

.field mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

.field private mSelectedSeId:I

.field mSimState:I

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:Ljava/lang/Integer;

.field private mTag4Prompt:Lcom/android/nfc/DeviceHost$TagEndpoint;

.field mTimeSimSlotDetected:J

.field private mTimerOpenSmx:Ljava/util/Timer;

.field mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

.field private mTransactionEvent4Aid:Ljava/lang/String;

.field private mTransactionPermissionResults:[Z

.field private mTransactionResultCacheTime:J

.field private mUseGSMATransactionIntent:I

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mVibrator:Landroid/os/Vibrator;

.field mVzwService:Lcom/android/nfc/NfcService$NfcVzwService;

.field private mbDisableP2pRWForIncomingCall:Z

.field private mnUserPromptUI:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 168
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    .line 588
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/NfcService;->VIBRATION_START:[J

    .line 589
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/NfcService;->VIBRATION_END:[J

    .line 590
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/nfc/NfcService;->VIBRATION_ERROR:[J

    .line 598
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    return-void

    .line 588
    nop

    :array_0
    .array-data 8
        0x0
        0xc8
        0x2710
    .end array-data

    .line 589
    :array_1
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data

    .line 590
    :array_2
    .array-data 8
        0x0
        0xa
        0x1f4
        0xa
        0x1f4
        0xa
        0x1f4
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 12
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_SMX:I

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    .line 199
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    .line 200
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    .line 201
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/NfcService;->ROUTE_BATT_OFF:I

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isClosed:Z

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->isOpened:Z

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    .line 483
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 506
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    .line 512
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 520
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 536
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/nfc/NfcService;->mTimeSimSlotDetected:J

    .line 537
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->mSimState:I

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mbDisableP2pRWForIncomingCall:Z

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mTag4Prompt:Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 594
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->mnUserPromptUI:I

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPackagesWithNfcPermission:[Ljava/lang/String;

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z

    .line 606
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/nfc/NfcService;->mNfcEventsResultCacheTime:J

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPackagesWithTransactionPermission:[Ljava/lang/String;

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z

    .line 612
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/nfc/NfcService;->mTransactionResultCacheTime:J

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mTransactionEvent4Aid:Ljava/lang/String;

    .line 617
    const-string v0, "nxp_pn65o_ese_enabled"

    iput-object v0, p0, Lcom/android/nfc/NfcService;->PROVIDER_KEY_EMBEDDED_SECURE_ELEMENT_ENABLED:Ljava/lang/String;

    .line 618
    const-string v0, "/sys/class/NFC_sensor/comn/nxp_ese_switch"

    iput-object v0, p0, Lcom/android/nfc/NfcService;->NXP_ESE_SWITCH_INFO:Ljava/lang/String;

    .line 684
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I

    .line 687
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcService;->mGSMATransactionBehavior:I

    .line 5523
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 5572
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5778
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 5835
    new-instance v0, Lcom/android/nfc/NfcService$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 930
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    .line 931
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 933
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/HtcUtils;->setContext(Landroid/content/Context;)V

    .line 935
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 936
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 937
    new-instance v0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    .line 938
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    .line 939
    new-instance v0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpExtrasService:Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

    .line 943
    const-string v0, "NfcService"

    const-string v1, "Starting NFC service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 947
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 948
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 949
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 951
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 953
    new-instance v0, Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/HandoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 954
    const/4 v7, 0x0

    .line 956
    .local v7, "isNfcProvisioningEnabled":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 961
    :goto_0
    if-eqz v7, :cond_d

    .line 962
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 968
    :goto_2
    new-instance v0, Lcom/android/nfc/NfcDispatcher;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v0, v1, v2, v4}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 969
    new-instance v0, Lcom/android/nfc/P2pLinkManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;II)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 972
    new-instance v0, Lcom/android/nfc/NfcService$ToastHandler;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/NfcService$ToastHandler;-><init>(Lcom/android/nfc/NfcService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

    .line 973
    new-instance v0, Lcom/android/nfc/NfcSeAccessControl;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcSeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcSeAccessControl:Lcom/android/nfc/NfcSeAccessControl;

    .line 974
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcAla;

    invoke-direct {v0}, Lcom/android/nfc/dhimpl/NativeNfcAla;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;

    .line 975
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 981
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->setSeMode()V

    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 984
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcAla;

    invoke-direct {v0}, Lcom/android/nfc/dhimpl/NativeNfcAla;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;

    .line 986
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "NfcServicePrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 987
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 989
    new-instance v0, Lcom/android/nfc/NfceeAccessControl;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 990
    new-instance v0, Lcom/android/nfc/NfcSccAccessControl;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcSccAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcSccAccessControl:Lcom/android/nfc/NfcSccAccessControl;

    .line 992
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    .line 993
    invoke-static {}, Lcom/android/nfc/HtcUtils;->ResetNdefPushSetting()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 994
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 997
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "mdm_lock_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsMdmLockEnabled:Z

    .line 999
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_0
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 1001
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 1003
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NfcService:mRoutingWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1005
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NfcService:mEeWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1008
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 1009
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 1011
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1012
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mAudioManager:Landroid/media/AudioManager;

    .line 1013
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    .line 1014
    invoke-static {}, Lcom/android/nfc/HtcUtils;->deviceBootDelay()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mBootDelay:I

    .line 1015
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force to delay enabling after modem powered on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/nfc/HtcUtils;->forceDelayAfterModemPowerOn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_1
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getUserPromptUIOption()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mnUserPromptUI:I

    .line 1017
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/NfcService;->mnUserPromptUI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1026
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1027
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1028
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1029
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1031
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    iget v0, p0, Lcom/android/nfc/NfcService;->mnUserPromptUI:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1035
    const-string v0, "com.htc.nfc.p2mode.action.ALLOW_RECEIVE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1037
    :cond_2
    iget v0, p0, Lcom/android/nfc/NfcService;->mnUserPromptUI:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1038
    const-string v0, "com.htc.nfc.readmode.action.ALLOW_RECEIVE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    :cond_3
    invoke-static {}, Lcom/android/nfc/HtcUtils;->deviceSupportDualSIM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1049
    :cond_4
    invoke-static {}, Lcom/android/nfc/HtcUtils;->supportNfcLock()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1050
    const-string v0, "com.htc.android.zoneinfo"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1053
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 1054
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/screen_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateFile:Ljava/lang/String;

    .line 1057
    new-instance v0, Lcom/android/nfc/NfcService$ScreenObserver;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ScreenObserver;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mScreenObserver:Landroid/os/FileObserver;

    .line 1058
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 1061
    new-instance v11, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v11, p0, v0}, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;-><init>(Lcom/android/nfc/NfcService;Landroid/os/Handler;)V

    .line 1062
    .local v11, "sObserver":Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;
    invoke-virtual {v11}, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->startObserving()V

    .line 1065
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v8, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1069
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1070
    .restart local v8    # "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    const-string v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 1077
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1078
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.nfc.hce"

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 1079
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "support HCE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_6
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_7

    .line 1081
    new-instance v0, Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 1082
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 1087
    :cond_7
    const-string v0, "nfc"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1090
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getHtcTestApps()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHtcTestApps:[Ljava/lang/String;

    .line 1091
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NFC test apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHtcTestApps:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_8
    iget v0, p0, Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I

    if-lez v0, :cond_9

    .line 1095
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->ACConnection:Landroid/content/ServiceConnection;

    .line 1112
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1113
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "org.simalliance.openmobileapi.service"

    const-string v1, "org.simalliance.openmobileapi.service.security.AccessControlSvc"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->ACConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v10

    .line 1115
    .local v10, "ret":Z
    const-string v1, "NfcService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AC : bindService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v10, :cond_10

    const-string v0, "success!"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "ret":Z
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 1119
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 1120
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1124
    invoke-static {}, Lcom/android/nfc/HtcUtils;->IsDisableRwAndBeamDuringCall()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1129
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1130
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.htc.intent.action.LOOP_BACK_MODE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1133
    :cond_a
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "NfcService"

    const-string v1, "NFCservice.onCreate() finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_b
    return-void

    .line 962
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "sObserver":Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 965
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto/16 :goto_2

    .line 993
    :cond_e
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ndef_push_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_3

    .line 999
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1115
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "ownerFilter":Landroid/content/IntentFilter;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "ret":Z
    .restart local v11    # "sObserver":Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;
    :cond_10
    const-string v0, "failed!!"

    goto :goto_5

    .line 958
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "ret":Z
    .end local v11    # "sObserver":Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static CreateSHA(Ljava/lang/String;)[B
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1328
    const-string v0, "Utils:CreateSHA"

    .line 1329
    .local v0, "TAG":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1331
    .local v4, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1332
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1334
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1335
    .local v1, "byteData":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteData len : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    .end local v1    # "byteData":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 1342
    :catch_0
    move-exception v2

    .line 1343
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1345
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private GetDefaultMifareDesfireRouteEntry()I
    .locals 3

    .prologue
    .line 4716
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDefaultMifareDesfireRouteEntry :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultDesfireRoute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultDesfireRoute()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int/2addr v0, v1

    return v0
.end method

.method private GetDefaultMifateCLTRouteEntry()I
    .locals 3

    .prologue
    .line 4736
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultMifareCLTRoute :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTRoute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTRoute()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private GetDefaultRouteEntry()I
    .locals 3

    .prologue
    .line 4725
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDefaultRouteEntry :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultAidRoute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidRoute()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v0, v1

    return v0
.end method

.method static SeIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "nSE_Id"    # I

    .prologue
    .line 5823
    packed-switch p0, :pswitch_data_0

    .line 5831
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 5825
    :pswitch_0
    const-string v0, "SMX"

    goto :goto_0

    .line 5827
    :pswitch_1
    const-string v0, "UICC"

    goto :goto_0

    .line 5829
    :pswitch_2
    const-string v0, "All On"

    goto :goto_0

    .line 5823
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/nfc/NfcService;Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/android/nfc/NfcService$OpenSecureElement;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->maybeDisableDiscovery()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->maybeEnableDiscovery()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcAla;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/NfcService;->mSecureElementHandle:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/nfc/NfcService;->mSecureElementHandle:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/nfc/NfcService;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/nfc/NfcService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isOpened:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isOpened:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isClosed:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isClosed:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/NfcService;->mnUserPromptUI:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I

    return v0
.end method

.method static synthetic access$3700([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->byteArray2String([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/NfcService;->mGSMATransactionBehavior:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/nfc/NfcService;Landroid/content/Intent;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # [B

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService;->intentAccessControl(Landroid/content/Intent;[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/nfc/NfcService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/nfc/NfcService;->mNfcEventsResultCacheTime:J

    return-wide v0
.end method

.method static synthetic access$4102(Lcom/android/nfc/NfcService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # J

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/android/nfc/NfcService;->mNfcEventsResultCacheTime:J

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/android/nfc/NfcService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/nfc/NfcService;[Z)[Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # [Z

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/nfc/NfcService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPackagesWithNfcPermission:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/nfc/NfcService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/nfc/NfcService;->mTransactionResultCacheTime:J

    return-wide v0
.end method

.method static synthetic access$4402(Lcom/android/nfc/NfcService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # J

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/android/nfc/NfcService;->mTransactionResultCacheTime:J

    return-wide p1
.end method

.method static synthetic access$4500(Lcom/android/nfc/NfcService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mTransactionEvent4Aid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mTransactionEvent4Aid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/nfc/NfcService;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/nfc/NfcService;[Z)[Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # [Z

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/nfc/NfcService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPackagesWithTransactionPermission:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/nfc/NfcService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHtcTestApps:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$TagEndpoint;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mTag4Prompt:Lcom/android/nfc/DeviceHost$TagEndpoint;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/nfc/NfcService;Lcom/android/nfc/DeviceHost$TagEndpoint;)Lcom/android/nfc/DeviceHost$TagEndpoint;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mTag4Prompt:Lcom/android/nfc/DeviceHost$TagEndpoint;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    return v0
.end method

.method static synthetic access$5000()Lcom/android/nfc/NfcService;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/nfc/NfcService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->updateNfcState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget v0, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private static byteArray2String([BIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4100
    if-nez p0, :cond_0

    .line 4101
    const/4 v2, 0x0

    .line 4112
    :goto_0
    return-object v2

    .line 4103
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 4104
    array-length v2, p0

    sub-int p2, v2, p1

    .line 4107
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4108
    .local v0, "buffer":Ljava/lang/StringBuffer;
    move v1, p1

    .local v1, "i":I
    :goto_1
    add-int v2, p1, p2

    if-ge v1, v2, :cond_2

    .line 4109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4112
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 6
    .param p1, "screenState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x2

    .line 4481
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 4483
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    const/4 v2, 0x3

    if-lt p1, v2, :cond_8

    .line 4485
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v2, :cond_7

    .line 4486
    const/4 v1, 0x0

    .line 4487
    .local v1, "techMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4488
    or-int/lit8 v1, v1, 0x1

    .line 4489
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 4490
    or-int/lit8 v1, v1, 0x2

    .line 4491
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 4492
    or-int/lit8 v1, v1, 0x4

    .line 4493
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 4494
    or-int/lit8 v1, v1, 0x8

    .line 4495
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 4496
    or-int/lit8 v1, v1, 0x20

    .line 4498
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4499
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4512
    .end local v1    # "techMask":I
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v2, v3, :cond_6

    .line 4514
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4516
    :cond_6
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v2

    return-object v2

    .line 4501
    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 4503
    :cond_8
    if-ne p1, v3, :cond_9

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_9

    .line 4504
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 4505
    :cond_9
    if-ne p1, v3, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4508
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 4509
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0
.end method

.method public static getCallingAppPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 1349
    const-string v0, "getCallingAppPkg"

    .line 1350
    .local v0, "TAG":Ljava/lang/String;
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1353
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1355
    .local v4, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v6, "topActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CURRENT Activity ::"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1359
    .local v3, "s":Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1360
    .local v2, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "componentInfo.getPackageName()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .prologue
    .line 733
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method private getProcessNameFromPid(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 4116
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4117
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 4118
    .local v2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4119
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    .line 4120
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v4

    .line 4124
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    new-instance v4, Ljava/security/AccessControlException;

    const-string v5, "CallerPackageName can not be determined"

    invoke-direct {v4, v5}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 4228
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 4239
    :cond_1
    return-object v0

    .line 4229
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4230
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    .line 4231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4232
    add-int/lit8 v2, v2, 0x1

    .line 4234
    :cond_3
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 4235
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 4236
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 4235
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private intentAccessControl(Landroid/content/Intent;[B)V
    .locals 15
    .param p1, "intentTransaction"    # Landroid/content/Intent;
    .param p2, "aid"    # [B

    .prologue
    .line 4129
    const/4 v10, 0x0

    .line 4130
    .local v10, "signature":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4133
    .local v5, "msgDigest":Ljava/security/MessageDigest;
    iget-object v12, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 4134
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/high16 v12, 0x10000

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 4135
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v12, "NfcService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "intentAccessControl : list.size() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_0

    .line 4138
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 4139
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 4142
    .local v8, "processname":Ljava/lang/String;
    const/16 v12, 0x40

    :try_start_0
    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 4144
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    move-object v11, v10

    .end local v10    # "signature":Ljava/lang/String;
    .local v11, "signature":Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v12, v12

    if-ge v3, v12, :cond_5

    .line 4145
    if-eqz v6, :cond_6

    .line 4146
    new-instance v10, Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v12, v12, v3

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4148
    .end local v11    # "signature":Ljava/lang/String;
    .restart local v10    # "signature":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 4149
    :try_start_2
    iget-object v12, p0, Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    if-nez v12, :cond_1

    .line 4150
    const-string v12, "NfcService"

    const-string v13, "re-gain IAccessControlSvc again ...."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    iget-object v12, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v12}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    move-result-object v12

    iput-object v12, p0, Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    .line 4152
    iget-object v12, p0, Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    if-nez v12, :cond_1

    .line 4153
    const-string v12, "NfcService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processName : :accessControlSvc : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4177
    .end local v3    # "j":I
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v8    # "processname":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_2
    return-void

    .line 4158
    .restart local v3    # "j":I
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v8    # "processname":Ljava/lang/String;
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :try_start_3
    iget-object v12, p0, Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    const-string v13, "SIM: UICC"

    move-object/from16 v0, p2

    invoke-interface {v12, v13, v8, v0}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;->isConnectionAllowed(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 4159
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4160
    const/high16 v12, 0x10000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4161
    const-string v12, "NfcService"

    const-string v13, "Start Activity for Card Emulation event"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    iget-object v12, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 4168
    :catch_0
    move-exception v12

    .line 4144
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object v11, v10

    .end local v10    # "signature":Ljava/lang/String;
    .restart local v11    # "signature":Ljava/lang/String;
    goto :goto_1

    .line 4165
    .end local v11    # "signature":Ljava/lang/String;
    .restart local v10    # "signature":Ljava/lang/String;
    :cond_3
    const-string v12, "NfcService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processname : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " connection rejected ...."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 4173
    .end local v3    # "j":I
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v1

    .line 4174
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    sget-boolean v12, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v12, :cond_4

    const-string v12, "NfcService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Application name not found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v10    # "signature":Ljava/lang/String;
    .restart local v3    # "j":I
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v11    # "signature":Ljava/lang/String;
    :cond_5
    move-object v10, v11

    .line 4175
    .end local v11    # "signature":Ljava/lang/String;
    .restart local v10    # "signature":Ljava/lang/String;
    goto :goto_5

    .line 4173
    .end local v10    # "signature":Ljava/lang/String;
    .restart local v11    # "signature":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "signature":Ljava/lang/String;
    .restart local v10    # "signature":Ljava/lang/String;
    goto :goto_4

    .end local v10    # "signature":Ljava/lang/String;
    .restart local v11    # "signature":Ljava/lang/String;
    :cond_6
    move-object v10, v11

    .end local v11    # "signature":Ljava/lang/String;
    .restart local v10    # "signature":Ljava/lang/String;
    goto :goto_3
.end method

.method private isTagPresent()Z
    .locals 3

    .prologue
    .line 4520
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4521
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 4522
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    .line 4525
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized maybeDisableDiscovery()V
    .locals 1

    .prologue
    .line 3799
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3800
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    if-nez v0, :cond_1

    .line 3801
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3806
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3803
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3799
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized maybeEnableDiscovery()V
    .locals 4

    .prologue
    .line 3766
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3767
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    if-nez v1, :cond_2

    .line 3768
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    .line 3769
    const-string v1, "NfcService"

    const-string v2, "maybeEnableDiscovery inside"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    :cond_0
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    .line 3782
    .local v0, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3783
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3795
    .end local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 3788
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3766
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3791
    :cond_3
    :try_start_2
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1

    .line 3792
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setDefaultRoute(I)Z
    .locals 2
    .param p1, "routeLoc"    # I

    .prologue
    .line 4656
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost;->setDefaultAidRoute(I)Z

    move-result v0

    .line 4657
    .local v0, "ret":Z
    return v0
.end method

.method private setSeMode()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x2

    .line 622
    iput v10, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    .line 623
    iput v6, p0, Lcom/android/nfc/NfcService;->mHceRoutingState:I

    .line 624
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getDefaultOffHostSE()I

    move-result v1

    .line 625
    .local v1, "nEnableCEM_SIE":I
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CEM setting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-ne v1, v8, :cond_0

    .line 628
    sput v8, Lcom/android/nfc/NfcService;->mDefaultoffHostSeId:I

    .line 637
    :goto_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getCardModeRoutingScreenState()I

    move-result v0

    .line 638
    .local v0, "nEeRoutingState_SIE":I
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CEM routing state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    packed-switch v0, :pswitch_data_0

    .line 654
    iput v8, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    .line 658
    :goto_1
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getEvtTransactionOption()I

    move-result v2

    .line 659
    .local v2, "nEvtTransactionBehavior_SIE":I
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Evt transaction behavior: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    packed-switch v2, :pswitch_data_1

    .line 676
    iput v7, p0, Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I

    .line 679
    .end local v0    # "nEeRoutingState_SIE":I
    .end local v2    # "nEvtTransactionBehavior_SIE":I
    :goto_2
    return-void

    .line 629
    :cond_0
    if-ne v1, v6, :cond_1

    .line 630
    sput v6, Lcom/android/nfc/NfcService;->mDefaultoffHostSeId:I

    goto :goto_0

    .line 632
    :cond_1
    sput v6, Lcom/android/nfc/NfcService;->mDefaultoffHostSeId:I

    .line 633
    iput v7, p0, Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I

    goto :goto_2

    .line 643
    .restart local v0    # "nEeRoutingState_SIE":I
    :pswitch_0
    iput v10, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    goto :goto_1

    .line 646
    :pswitch_1
    iput v6, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    goto :goto_1

    .line 649
    :pswitch_2
    iput v9, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    .line 650
    iput v9, p0, Lcom/android/nfc/NfcService;->mHceRoutingState:I

    goto :goto_1

    .line 666
    .restart local v2    # "nEvtTransactionBehavior_SIE":I
    :pswitch_3
    const/16 v3, 0x1e

    iput v3, p0, Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I

    goto :goto_2

    .line 669
    :pswitch_4
    const/16 v3, 0x29

    iput v3, p0, Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I

    goto :goto_2

    .line 672
    :pswitch_5
    iput v7, p0, Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I

    goto :goto_2

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 664
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 5808
    packed-switch p0, :pswitch_data_0

    .line 5818
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 5810
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 5812
    :pswitch_1
    const-string v0, "turning on"

    goto :goto_0

    .line 5814
    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    .line 5816
    :pswitch_3
    const-string v0, "turning off"

    goto :goto_0

    .line 5808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final updateNfcState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5844
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    .line 5845
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call state changed, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NFC state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", have disabled Nfc due to call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mbDisableP2pRWForIncomingCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5850
    :cond_0
    if-nez p1, :cond_3

    .line 5851
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mbDisableP2pRWForIncomingCall:Z

    .line 5853
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5854
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isReaderWriterEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "disable_readwrite_for_call"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5856
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->enableReaderWriter()Z

    .line 5857
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "disable_readwrite_for_call"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5858
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5860
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isP2PEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "disable_p2p_for_call"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5862
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->enableP2P()Z

    .line 5863
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "disable_p2p_for_call"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5864
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5882
    :cond_2
    :goto_0
    return-void

    .line 5868
    :cond_3
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mbDisableP2pRWForIncomingCall:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5869
    iput-boolean v4, p0, Lcom/android/nfc/NfcService;->mbDisableP2pRWForIncomingCall:Z

    .line 5870
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isReaderWriterEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5871
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableReaderWriter()Z

    .line 5872
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "disable_readwrite_for_call"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5873
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5875
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->isP2PEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5876
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->disableP2P()Z

    .line 5877
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "disable_p2p_for_call"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5878
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public GetDefaultRouteLoc()I
    .locals 3

    .prologue
    .line 4708
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_SET_DEFAULT_ROUTE_ID"

    iget v2, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public SelectSecureElement()V
    .locals 5

    .prologue
    .line 4686
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v1

    .line 4687
    .local v1, "seList":[I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectSecureElement seList.length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4689
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    aget v3, v1, v0

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 4688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4692
    :cond_0
    return-void
.end method

.method _nfcEeClose(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "callingPid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3524
    monitor-enter p0

    .line 3525
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3526
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3544
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3528
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-nez v0, :cond_1

    .line 3529
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3531
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq p1, v0, :cond_2

    .line 3532
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong PID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3534
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    if-eq v0, p2, :cond_3

    .line 3535
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong binder handle"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3538
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3539
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 3540
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    .line 3541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 3542
    const-string v0, "NfcService"

    const-string v1, "applyRouting -8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3544
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3545
    return-void
.end method

.method _nfcEeReset()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3548
    monitor-enter p0

    .line 3549
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3550
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3557
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3552
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-nez v0, :cond_1

    .line 3553
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3556
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v1, v1, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doReset(I)Z

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method applyRouting(Z)V
    .locals 11
    .param p1, "force"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4295
    monitor-enter p0

    .line 4296
    :try_start_0
    const-string v8, "NfcService"

    const-string v9, "applyRouting"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-eqz v8, :cond_1

    .line 4299
    :cond_0
    const-string v6, "NfcService"

    const-string v7, "Ignore this applyRouting..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    monitor-exit p0

    .line 4390
    :goto_0
    return-void

    .line 4302
    :cond_1
    new-instance v5, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v8, "applyRouting"

    const/16 v9, 0x2710

    invoke-direct {v5, p0, v8, v9}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 4303
    .local v5, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v8, :cond_2

    .line 4304
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "device_provisioned"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_3

    :goto_1
    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 4306
    iget-boolean v6, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v6, :cond_2

    .line 4309
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v6}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 4310
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/nfc/handover/HandoverManager;->setEnabled(Z)V

    .line 4315
    :cond_2
    iget v6, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4316
    const-string v6, "NfcService"

    const-string v7, "Not updating discovery parameters, tag connected."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v7, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4319
    monitor-exit p0

    goto :goto_0

    .line 4389
    .end local v5    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v5    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_3
    move v6, v7

    .line 4304
    goto :goto_1

    .line 4323
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 4326
    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setScreenState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v8}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4327
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v6, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setScreenState(I)V

    .line 4328
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4329
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4330
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget v7, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost;->doSetScreenState(I)V

    .line 4335
    :cond_5
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4337
    const-string v6, "NfcService"

    const-string v7, "computeEmulationParameters"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    iget v6, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {p0, p1, v6}, Lcom/android/nfc/NfcService;->computeEmulationParameters(ZI)V

    .line 4341
    :cond_6
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    if-eqz v6, :cond_7

    .line 4342
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 4343
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    iget v8, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4344
    .local v2, "protoRoute":I
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "PREF_SET_DEFAULT_ROUTE_ID"

    iget v8, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4345
    .local v0, "defaultRoute":I
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifateCLTRouteEntry()I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 4346
    .local v4, "techRoute":I
    const-string v6, "NfcService"

    const-string v7, "Set default Route Entry"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    shl-int/lit8 v6, v0, 0x3

    iget v7, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v6, v7

    iget v7, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int v0, v6, v7

    .line 4348
    shl-int/lit8 v6, v2, 0x3

    iget v7, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v6, v7

    iget v7, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int v2, v6, v7

    .line 4349
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/nfc/NfcService;->setDefaultRoute(III)Z

    .line 4353
    .end local v0    # "defaultRoute":I
    .end local v2    # "protoRoute":I
    .end local v4    # "techRoute":I
    :cond_7
    const-string v6, "NfcService"

    const-string v7, "computeDiscoveryParameters"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    iget v6, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v6}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 4355
    .local v1, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_8

    iget-object v6, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v1, v6}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 4357
    :cond_8
    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4358
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v6}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v3

    .line 4359
    .local v3, "shouldRestart":Z
    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NFC-C ON, shouldRestart = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6, v1, v3}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 4361
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 4369
    .end local v3    # "shouldRestart":Z
    :goto_2
    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableHostRouting()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4382
    :cond_9
    iput-object v1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4387
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 4389
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4363
    :cond_a
    :try_start_3
    const-string v6, "NfcService"

    const-string v7, "NFC-C OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 4365
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 4387
    .end local v1    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4384
    .restart local v1    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_b
    :try_start_5
    const-string v6, "NfcService"

    const-string v7, "Discovery configuration equal, not updating."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3
.end method

.method public clearRouting()V
    .locals 2

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4650
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .prologue
    .line 4645
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4646
    return-void
.end method

.method computeEmulationParameters(ZI)V
    .locals 9
    .param p1, "force"    # Z
    .param p2, "screenState"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4395
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_0

    .line 4396
    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v2, v5, :cond_9

    .line 4397
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 4398
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v6}, Lcom/android/nfc/DeviceHost;->SetScreenState(Z)Z

    .line 4399
    const-string v2, "NfcService"

    const-string v3, "SCREEN_STATE_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    :cond_0
    :goto_0
    const-string v2, "NfcService"

    const-string v3, "configure EE routing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    iget v2, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    if-ne v2, v7, :cond_b

    if-ne p2, v7, :cond_b

    .line 4413
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-nez v2, :cond_2

    .line 4414
    :cond_1
    const-string v2, "NfcService"

    const-string v3, "NFC-EE ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    iput-boolean v5, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 4416
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->SelectSecureElement()V

    .line 4435
    :cond_2
    :goto_1
    const-string v2, "NfcService"

    const-string v3, "configure HCE routing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    const/4 v0, 0x1

    .line 4437
    .local v0, "bIsAidsRoutedToHost":Z
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isRussianSku()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/nfc/HtcUtils;->disableHceWhenNoHostPayment()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4439
    :cond_3
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isRussianSku()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4440
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Russian ROM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v4}, Lcom/android/nfc/cardemulation/AidRoutingManager;->aidsRoutedToHost()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidRoutingManager;->aidsRoutedToHost()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4442
    const/4 v0, 0x1

    .line 4447
    :cond_5
    :goto_2
    iget v2, p0, Lcom/android/nfc/NfcService;->mHceRoutingState:I

    if-ne v2, v8, :cond_10

    if-lt p2, v8, :cond_10

    if-eqz v0, :cond_10

    .line 4448
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    if-nez v2, :cond_7

    .line 4449
    :cond_6
    const-string v2, "NfcService"

    const-string v3, "NFC-HCE ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    iput-boolean v5, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    .line 4451
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->enableRoutingToHost()V

    .line 4470
    :cond_7
    :goto_3
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configure routing table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    if-eqz v2, :cond_8

    .line 4472
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v1

    .line 4473
    .local v1, "defaultRoute":I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set default route "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4474
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v1}, Lcom/android/nfc/DeviceHost;->setDefaultAidRoute(I)Z

    .line 4475
    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 4477
    .end local v1    # "defaultRoute":I
    :cond_8
    return-void

    .line 4401
    .end local v0    # "bIsAidsRoutedToHost":Z
    :cond_9
    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v2, v8, :cond_a

    .line 4402
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v6}, Lcom/android/nfc/DeviceHost;->SetScreenState(Z)Z

    .line 4403
    const-string v2, "NfcService"

    const-string v3, "SCREEN_STATE_ON_LOCKED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4404
    :cond_a
    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v2, v7, :cond_0

    .line 4405
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost;->SetScreenState(Z)Z

    .line 4406
    const-string v2, "NfcService"

    const-string v3, "SCREEN_STATE_ON_UNLOCKED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4419
    :cond_b
    iget v2, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    if-lt p2, v5, :cond_d

    .line 4420
    if-nez p1, :cond_c

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-nez v2, :cond_2

    .line 4421
    :cond_c
    const-string v2, "NfcService"

    const-string v3, "NFC-EE ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    iput-boolean v5, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 4423
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->SelectSecureElement()V

    goto/16 :goto_1

    .line 4427
    :cond_d
    if-nez p1, :cond_e

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-eqz v2, :cond_2

    .line 4428
    :cond_e
    const-string v2, "NfcService"

    const-string v3, "NFC-EE OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4429
    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 4430
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->deSelectSecureElement()V

    goto/16 :goto_1

    .line 4444
    .restart local v0    # "bIsAidsRoutedToHost":Z
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 4454
    :cond_10
    iget v2, p0, Lcom/android/nfc/NfcService;->mHceRoutingState:I

    if-ne v2, v7, :cond_12

    if-lt p2, v7, :cond_12

    if-eqz v0, :cond_12

    .line 4455
    if-nez p1, :cond_11

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    if-nez v2, :cond_7

    .line 4456
    :cond_11
    const-string v2, "NfcService"

    const-string v3, "NFC-HCE ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    iput-boolean v5, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    .line 4458
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->enableRoutingToHost()V

    goto/16 :goto_3

    .line 4462
    :cond_12
    if-nez p1, :cond_13

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    if-eqz v2, :cond_7

    .line 4463
    :cond_13
    const-string v2, "NfcService"

    const-string v3, "NFC-HCE OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    .line 4465
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->disableRoutingToHost()V

    goto/16 :goto_3
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 4612
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 6
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 4620
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 4604
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method public deSelectSecureElement()V
    .locals 5

    .prologue
    .line 4694
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v1

    .line 4695
    .local v1, "seList":[I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectSecureElement seList.length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4697
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    aget v3, v1, v0

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 4696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4699
    :cond_0
    return-void
.end method

.method doDisconnect(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1312
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1316
    return-void

    .line 1314
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection()I
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1290
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1292
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doReset(I)Z
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1321
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doReset(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1323
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceive(I[B)[B
    .locals 2
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1299
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1301
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .locals 1
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5900
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5931
    :goto_0
    return-void

    .line 5908
    :cond_0
    monitor-enter p0

    .line 5909
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSelectedSeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->SeIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNfcPollingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNfceeRouteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneSensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneToggleable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5917
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpenEe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEeRoutingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpenSmxPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHostRouteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5922
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5923
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 5926
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfceeAccessControl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5927
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcSccAccessControl:Lcom/android/nfc/NfcSccAccessControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcSccAccessControl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5928
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5929
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5930
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enforceNfcSccAdminPerm(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 719
    if-nez p1, :cond_0

    .line 720
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 723
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcSccAccessControl:Lcom/android/nfc/NfcSccAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcSccAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 724
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcscc_access.xml denies NFCSCC access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to act as SCC admin"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_2
    return-void
.end method

.method public enforceNfcSeAdminPerm(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 694
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcSeAccessControl:Lcom/android/nfc/NfcSeAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcSeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcse_access.xml denies NFCSe access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to act as SCC admin"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_2
    return-void
.end method

.method public enforceNfceeAdminPerm(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 704
    if-nez p1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 708
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfceeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcee_access.xml denies NFCEE access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to call SE APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_2
    return-void
.end method

.method findObject(I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 4563
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4564
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4565
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 4566
    const-string v1, "NfcService"

    const-string v3, "Handle not found"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    :cond_0
    monitor-exit v2

    return-object v0

    .line 4569
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCardModeRoutingState()I
    .locals 1

    .prologue
    .line 5885
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 5886
    iget v0, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return v0
.end method

.method public getCodebaseVersion()I
    .locals 1

    .prologue
    .line 5890
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 5893
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getCodebaseVersion()I

    move-result v0

    return v0
.end method

.method public getDefaultRoute()I
    .locals 3

    .prologue
    .line 4668
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_route_id"

    iget v2, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultSecureElement()I
    .locals 3

    .prologue
    .line 4676
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 4677
    .local v0, "seList":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 4679
    :cond_0
    const/4 v1, -0x1

    .line 4681
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    .prologue
    .line 1952
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .locals 4

    .prologue
    .line 1137
    monitor-enter p0

    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1140
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 1142
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 1143
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f040000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 1144
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 1146
    :cond_0
    monitor-exit p0

    .line 1147
    return-void

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5800
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isNfcEnabled()Z
    .locals 3

    .prologue
    .line 4186
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 4187
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 3

    .prologue
    .line 4180
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 4181
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method maybeDisconnectTarget()V
    .locals 11

    .prologue
    .line 4531
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4560
    :cond_0
    return-void

    .line 4535
    :cond_1
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 4536
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 4539
    .local v5, "objectValues":[Ljava/lang/Object;
    array-length v8, v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 4540
    .local v6, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 4541
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4542
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4543
    .local v4, "o":Ljava/lang/Object;
    sget-boolean v8, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnecting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    :cond_2
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v8, :cond_4

    move-object v7, v4

    .line 4546
    check-cast v7, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 4547
    .local v7, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4542
    .end local v7    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4541
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "objectValues":[Ljava/lang/Object;
    .end local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 4548
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "objectValues":[Ljava/lang/Object;
    .restart local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :cond_4
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v8, :cond_3

    move-object v1, v4

    .line 4550
    check-cast v1, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 4551
    .local v1, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v8

    if-nez v8, :cond_3

    .line 4553
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_1
.end method

.method public onAidRoutingTableFull()V
    .locals 2

    .prologue
    .line 775
    const-string v0, "NfcService"

    const-string v1, "NxpNci: onAidRoutingTableFull: AID Routing Table is FULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void
.end method

.method public onCardEmulationAidSelected([B[BI)V
    .locals 5
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # I

    .prologue
    .line 765
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_0

    .line 766
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 767
    .local v0, "dataSrc":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 768
    .local v1, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCardEmulationAidSelected : Source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/16 v2, 0xc9

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 771
    return-void
.end method

.method public onCardEmulationDeselected()V
    .locals 2

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 756
    :cond_0
    const/16 v0, 0xca

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 758
    return-void
.end method

.method public onConnectivityEvent(I)V
    .locals 3
    .param p1, "evtSrc"    # I

    .prologue
    .line 746
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectivityEvent : Source"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/16 v0, 0xd3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 748
    return-void
.end method

.method public onEmvcoMultiCardDetectedEvent()V
    .locals 2

    .prologue
    .line 805
    const-string v0, "NfcService"

    const-string v1, "onEmvcoMultiCardDetectedEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/16 v0, 0x130

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 807
    return-void
.end method

.method public onHostCardEmulationActivated()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated()V

    .line 786
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData([B)V

    .line 794
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 801
    :cond_0
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 830
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 831
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 814
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 815
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 822
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 823
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 739
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 901
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 903
    :cond_0
    const/16 v0, 0xcc

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 909
    :goto_0
    return-void

    .line 906
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 913
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 915
    :cond_0
    const/16 v0, 0xcd

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 921
    :goto_0
    return-void

    .line 918
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onRestore()V
    .locals 5

    .prologue
    .line 4587
    const-string v2, "NfcService"

    const-string v3, "onRestore: Disabling NFC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 4589
    .local v0, "disableTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4591
    :try_start_0
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$EnableDisableTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4597
    :goto_0
    return-void

    .line 4592
    :catch_0
    move-exception v1

    .line 4593
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "NfcService"

    const-string v3, "failed to disable NFC"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4594
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 4595
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "NfcService"

    const-string v3, "failed to disable NFC"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSWPReaderActivatedEvent()V
    .locals 2

    .prologue
    .line 890
    const/16 v0, 0x12e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 891
    return-void
.end method

.method public onSWPReaderDeActivatedEvent()V
    .locals 2

    .prologue
    .line 896
    const/16 v0, 0x12f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 897
    return-void
.end method

.method public onSWPReaderRequestedEvent(ZZ)V
    .locals 3
    .param p1, "istechA"    # Z
    .param p2, "istechB"    # Z

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v1, "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 880
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_0
    if-eqz p2, :cond_1

    .line 882
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_1
    const/16 v2, 0x12d

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 885
    return-void
.end method

.method public onSeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 856
    :cond_0
    const/16 v0, 0xce

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 858
    return-void
.end method

.method public onSeEmvCardRemoval()V
    .locals 2

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 863
    :cond_0
    const/16 v0, 0xcf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 865
    return-void
.end method

.method public onSeListenActivated()V
    .locals 2

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 836
    :cond_0
    const/16 v0, 0xd1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 838
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated()V

    .line 841
    :cond_1
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 846
    :cond_0
    const/16 v0, 0xd2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 848
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 851
    :cond_1
    return-void
.end method

.method public onSeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 870
    :cond_0
    const/16 v0, 0xd0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 872
    return-void
.end method

.method public playSound(I)V
    .locals 8
    .param p1, "sound"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1919
    monitor-enter p0

    .line 1920
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 1921
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    monitor-exit p0

    .line 1949
    :goto_0
    return-void

    .line 1924
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 1925
    .local v7, "modeVibrate":Z
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1948
    :goto_2
    monitor-exit p0

    goto :goto_0

    .end local v7    # "modeVibrate":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v7, v0

    .line 1924
    goto :goto_1

    .line 1927
    .restart local v7    # "modeVibrate":Z
    :pswitch_0
    if-eqz v7, :cond_2

    .line 1928
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/NfcService;->VIBRATION_START:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_2

    .line 1930
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_2

    .line 1934
    :pswitch_1
    if-eqz v7, :cond_3

    .line 1935
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/NfcService;->VIBRATION_END:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_2

    .line 1937
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_2

    .line 1941
    :pswitch_2
    if-eqz v7, :cond_4

    .line 1942
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/NfcService;->VIBRATION_ERROR:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_2

    .line 1944
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1925
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshAirplaneModeSettings()V
    .locals 7

    .prologue
    .line 1227
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_radios"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_toggleable_radios"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1232
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 1234
    .local v1, "isAirplaneSensitive":Z
    :goto_0
    if-nez v3, :cond_3

    const/4 v2, 0x0

    .line 1237
    .local v2, "isAirplaneToggleable":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eq v4, v1, :cond_0

    .line 1238
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    .line 1239
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Airplane mode settings changed: mIsAirplaneSensitive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    if-eq v4, v2, :cond_1

    .line 1242
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    .line 1243
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Airplane mode settings changed: mIsAirplaneToggleable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_1
    return-void

    .line 1232
    .end local v1    # "isAirplaneSensitive":Z
    .end local v2    # "isAirplaneToggleable":Z
    :cond_2
    const-string v4, "nfc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 1234
    .restart local v1    # "isAirplaneSensitive":Z
    :cond_3
    const-string v4, "nfc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_1
.end method

.method registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 1249
    new-instance v0, Lcom/android/nfc/NfcService$SettingsObserver;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/NfcService$SettingsObserver;-><init>(Lcom/android/nfc/NfcService;Landroid/os/Handler;)V

    .line 1250
    .local v0, "sObserver":Lcom/android/nfc/NfcService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$SettingsObserver;->startObserving()V

    .line 1252
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->refreshAirplaneModeSettings()V

    .line 1253
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1254
    return-void
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 3
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 4573
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4574
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4575
    monitor-exit v1

    .line 4576
    return-void

    .line 4575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseSoundPool()V
    .locals 2

    .prologue
    .line 1150
    monitor-enter p0

    .line 1151
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 1155
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    const-string v1, "SoundPool released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_1
    return-void

    .line 1155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestReceiveConfirmation(Landroid/nfc/NdefMessage;I)V
    .locals 5
    .param p1, "ndefmsg"    # Landroid/nfc/NdefMessage;
    .param p2, "nUserPromptType"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4746
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/ConfirmReceiveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4747
    .local v0, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4748
    if-ne p2, v3, :cond_1

    .line 4749
    const-string v1, "USER_PROMPT_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4750
    const-string v1, "RECEIVED_NFC_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4754
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4755
    return-void

    .line 4751
    :cond_1
    if-ne p2, v4, :cond_0

    .line 4752
    const-string v1, "USER_PROMPT_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public routeAids(Ljava/lang/String;II)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "powerState"    # I

    .prologue
    .line 4628
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4629
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4630
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4631
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 4632
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4633
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4634
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1912
    monitor-enter p0

    .line 1913
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1914
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1915
    monitor-exit p0

    .line 1916
    return-void

    .line 1915
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendData([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 4652
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4661
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4662
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4663
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4664
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4665
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 4624
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4625
    return-void
.end method

.method setBeamShareActivityState(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1956
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.android.nfc"

    const-string v4, "com.android.nfc.BeamShareActivity"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1961
    return-void

    .line 1956
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setDefaultRoute(III)Z
    .locals 2
    .param p1, "defaultRouteEntry"    # I
    .param p2, "defaultProtoRouteEntry"    # I
    .param p3, "defaultTechRouteEntry"    # I

    .prologue
    .line 4741
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/nfc/DeviceHost;->setDefaultRoute(III)Z

    move-result v0

    .line 4742
    .local v0, "ret":Z
    return v0
.end method

.method unregisterObject(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 4579
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4580
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4581
    monitor-exit v1

    .line 4582
    return-void

    .line 4581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;I)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 4637
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4638
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4639
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4640
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4641
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4642
    return-void
.end method

.method updatePackageCache()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1257
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1258
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v8, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    .line 1259
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 1260
    :try_start_0
    iput-object v5, p0, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    .line 1261
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/nfc/NfcService;->mPackagesWithNfcPermission:[Ljava/lang/String;

    .line 1262
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/nfc/NfcService;->mPackagesWithTransactionPermission:[Ljava/lang/String;

    .line 1263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v2, "packageList4NfcEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v3, "packageList4TransactionEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1267
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 1268
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1270
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    .line 1271
    const-string v7, "android.permission.NFC"

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 1272
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    :cond_1
    const-string v7, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1274
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1284
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageList4NfcEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "packageList4TransactionEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1277
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "packageList4NfcEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "packageList4TransactionEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    sget-boolean v7, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePackageCache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/nfc/NfcService;->mPackagesWithNfcPermission:[Ljava/lang/String;

    .line 1279
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/nfc/NfcService;->mPackagesWithTransactionPermission:[Ljava/lang/String;

    .line 1280
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z

    .line 1281
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z

    .line 1282
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/nfc/NfcService;->mNfcEventsResultCacheTime:J

    .line 1283
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/nfc/NfcService;->mTransactionResultCacheTime:J

    .line 1284
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1285
    return-void
.end method
