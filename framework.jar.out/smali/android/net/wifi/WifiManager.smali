.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$ServiceHandler;,
        Landroid/net/wifi/WifiManager$TxPacketCountListener;,
        Landroid/net/wifi/WifiManager$WpsCallback;,
        Landroid/net/wifi/WifiManager$ActionListener;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_AP_DEVICE_STATE_CHANGE:Ljava/lang/String; = "com.meizu.action.wifi_ap_device_state_change"

.field public static final ACTION_WIFI_AP_WPS_EVENT:Ljava/lang/String; = "com.meizu.action.wifi_ap_wps_event"

.field public static final AP_WPS_EVENT_FAILED:I = 0x2

.field public static final AP_WPS_EVENT_PBC_ACTIVE:I = 0x0

.field public static final AP_WPS_EVENT_SUCCESS:I = 0x1

.field public static final AP_WPS_EVENT_TIMEOUT:I = 0x3

.field public static final AP_WPS_EVENT_UNKNOWN:I = -0x1

.field public static final EXTRA_AP_WPS_EVENT:Ljava/lang/String; = "event_extra"

.field public static final EXTRA_STA_ADDRESS:Ljava/lang/String; = "sta_address"

.field public static final EXTRA_STA_STATE:Ljava/lang/String; = "sta_state"

.field public static final ACTION_MANAGEMENT_WIFI_CLIENT:Ljava/lang/String; = "com.htc.hotspot.WIFI_CLIENT_MANAGEMENT"

.field public static final ACTION_PICK_VERIZON_WIFI_NETWORK:Ljava/lang/String; = "com.htc.wifi.PICK_VERIZON_WIFI_NETWORK"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field public static final ACTION_WIFI_AP_CONN_REQ_TIMEOUT:Ljava/lang/String; = "com.htc.wifi.action.WIFI_AP_CONN_REQ_TIMEOUT"

.field public static final AKA_INVALID_SIM_CHANGED_ACTION:Ljava/lang/String; = "com.htc.wifi.AKA_INVALID_SIM"

.field public static final ASSOC_LIST_CHANGE_ACTION:Ljava/lang/String; = "com.htc.hotspot.ASSOCLIST"

.field private static final BASE:I = 0x25000

.field public static final BATCHED_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.BATCHED_RESULTS"

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CMCC_REMINDERT_NOTIFY_ACTION:Ljava/lang/String; = "com.htc.wifi.cmcc_reminder_noty"

.field public static final CMD_CHECK_IMEI_VALUE:I = 0x2a

.field public static final CMD_ENABLE_CHECK_IMEI_VALUE:I = 0x29

.field public static final CMD_START_ACCESS_POINT_MHS:I = 0x1f

.field public static final CMD_STOP_ACCESS_POINT_MHS:I = 0x20

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final DONGLE_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.wifi.DONGLE_SCAN_RESULTS"

.field public static final DRIVER_HUNG_EVENT:Ljava/lang/String; = "com.htc.driver.hung.event"

.field public static final DRIVER_POWER_MODE_BROWSER_ACTIVE:I = 0xb

.field public static final DRIVER_POWER_MODE_BROWSER_AUTO:I = 0xa

.field public static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_START:I = 0x1f

.field public static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_STOP:I = 0x1e

.field public static final DRIVER_POWER_MODE_KDDI_APK_ACTIVE:I = 0x29

.field public static final DRIVER_POWER_MODE_KDDI_APK_AUTO:I = 0x28

.field public static final DRIVER_POWER_MODE_WIFILOCK_ACQUIRE:I = 0x58

.field public static final DRIVER_POWER_MODE_WIFILOCK_RELEASE:I = 0x57

.field public static final DRIVER_WIFI_BEST_PERFORMANCE_DISABLE:I = 0x14

.field public static final DRIVER_WIFI_BEST_PERFORMANCE_ENABLE:I = 0x15

.field public static final ERROR:I = 0x0

.field public static final ERROR_ACTION:Ljava/lang/String; = "com.htc.wifi.ERROR"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BLOCK_MAC:Ljava/lang/String; = "hotspot_block_mac"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_LATEST_TIME_CONNECTION_REQUEST:Ljava/lang/String; = "hotspot_lastest_time_of_request"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_CAPABILITIES:Ljava/lang/String; = "networkCapabilities"

.field public static final EXTRA_NETWORK_ID:Ljava/lang/String; = "networkID"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "scan_enabled"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_SUPPLICANT_BSSID:Ljava/lang/String; = "supplicantBssid"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_SUPPLICANT_FREQ:Ljava/lang/String; = "supplicantFreq"

.field public static final EXTRA_SUPPLICANT_LOCALLYGEN:Ljava/lang/String; = "locallyGenerated"

.field public static final EXTRA_SUPPLICANT_REASON:Ljava/lang/String; = "supplicantReason"

.field public static final EXTRA_SUPPLICANT_SSID:Ljava/lang/String; = "supplicantSsid"

.field public static final EXTRA_SUPPLICANT_STATUS_CODE:Ljava/lang/String; = "supplicantStatusCode"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final HOTSPOT_CONNECTION_REQUEST_NOTIFY:Ljava/lang/String; = "com.htc.hotspot.connectionrequest"

.field public static final HOTSPOT_MAXIMUM_CLIENT_NOTIFY:Ljava/lang/String; = "com.htc.hotspot.max_client_noty"

.field public static final ICON_WIFI_CONNECTION_REQUEST:I = #android:drawable@stat_notify_wifi_in_range#t

.field public static final INVALID_ARGS:I = 0x8

.field private static final INVALID_KEY:I = 0x0

.field public static final IN_PROGRESS:I = 0x1

.field public static final L2PE_FAIL:Ljava/lang/String; = "com.htc.hotspot.L2PE_FAIL"

.field public static final L2PE_SUCCESSFUL:Ljava/lang/String; = "com.htc.hotspot.L2PE_SUCCESSFUL"

.field public static final LAN_PROBLEM_ERROR:I = 0x15

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final NOT_AUTHORIZED:I = 0x9

.field public static final POWER_MODE_ACTIVE:I = 0x1

.field public static final POWER_MODE_AUTO:I = 0x0

.field public static final PPPOE_COMPLETED_ACTION:Ljava/lang/String; = "android.net.wifi.PPPOE_COMPLETED_ACTION"

.field public static final PPPOE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.PPPOE_STATE_CHANGED"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x4

.field public static final RSSI_PKTCNT_FETCH:I = 0x25014

.field public static final RSSI_PKTCNT_FETCH_FAILED:I = 0x25016

.field public static final RSSI_PKTCNT_FETCH_SUCCEEDED:I = 0x25015

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_REGISTRAR:I = 0x7

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final STOP_WPS_REGISTRAR:I = 0x8

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_CONNECTION_STATUS_CHANGE_ACTION:Ljava/lang/String; = "com.htc.wifi.supplicant.CONNECTION_STATUS_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field public static final SUPPLICANT_STATUS_ASSOCIATED_WITH:Ljava/lang/String; = "ASSOCIATED"

.field public static final SUPPLICANT_STATUS_ASSOCIATED_WITH_ROAMING:Ljava/lang/String; = "ASSOCIATED-ROAMING"

.field public static final SUPPLICANT_STATUS_ASSOC_REJECT:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final SUPPLICANT_STATUS_DISCONNECTED:Ljava/lang/String; = "DISCONNECTED"

.field public static final SUPPLICANT_STATUS_DISCONNECTED_LOCALLY:Ljava/lang/String; = "DISCONNECTED-LOCALLY"

.field public static final SUPPLICANT_STATUS_DISCONNECTED_WLANOFF:Ljava/lang/String; = "DISCONNECTED-WLANOFF"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WAN_PROBLEM_ERROR:I = 0x16

.field public static final WEP_ERROR:I = 0x14

.field public static final WIFIDISPLAY_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

.field public static final WIFIOFFLOAD_NOTIFICATION_ERROR:I = 0x17

.field public static final WIFI_AP_IDLE:Ljava/lang/String; = "com.htc.wifi.action.WIFI_AP_DEVICE_IDLE"

.field public static final WIFI_AP_SET_INTERFACE_ADDRESS:Ljava/lang/String; = "com.htc.wifi.SET_HOTSPOT_INTERFACE_ADDRESS"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_FEATURE_ADDITIONAL_STA:I = 0x800

.field public static final WIFI_FEATURE_BATCH_SCAN:I = 0x200

.field public static final WIFI_FEATURE_D2AP_RTT:I = 0x100

.field public static final WIFI_FEATURE_D2D_RTT:I = 0x80

.field public static final WIFI_FEATURE_EPR:I = 0x4000

.field public static final WIFI_FEATURE_INFRA:I = 0x1

.field public static final WIFI_FEATURE_INFRA_5G:I = 0x2

.field public static final WIFI_FEATURE_MOBILE_HOTSPOT:I = 0x10

.field public static final WIFI_FEATURE_NAN:I = 0x40

.field public static final WIFI_FEATURE_P2P:I = 0x8

.field public static final WIFI_FEATURE_PASSPOINT:I = 0x4

.field public static final WIFI_FEATURE_PNO:I = 0x400

.field public static final WIFI_FEATURE_SCANNER:I = 0x20

.field public static final WIFI_FEATURE_TDLS:I = 0x1000

.field public static final WIFI_FEATURE_TDLS_OFFCHANNEL:I = 0x2000

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "wifi_scan_available"

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_FAIL_CHANGED_ACTION:Ljava/lang/String; = "com.htc.wifi.WPS_FAIL"

.field public static final WPS_OVERLAP_CHANGED_ACTION:Ljava/lang/String; = "com.htc.wifi.WPS_OVERLAP"

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_REGISTRAR_FAIL:Ljava/lang/String; = "com.htc.hotspot.WPS_REGISTRAR_FAIL"

.field public static final WPS_REGISTRAR_START:Ljava/lang/String; = "com.htc.hotspot.WPS_REGISTRAR_START"

.field public static final WPS_REGISTRAR_SUCCESSFUL:Ljava/lang/String; = "com.htc.hotspot.WPS_REGISTRAR_SUCCESSFUL"

.field public static final WPS_SUCCESS_CHANGED_ACTION:Ljava/lang/String; = "com.htc.wifi.WPS_SUCCESS"

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mActiveLockCount:I

.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x1

    sput v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 770
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    .line 771
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    .line 776
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiManager;

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 827
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 828
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->init()V

    .line 829
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 73
    invoke-static {p0}, Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 73
    sput-object p0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 73
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$508(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 73
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$510(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 73
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 932
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 934
    :goto_0
    return v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 7
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    const/4 v6, 0x5

    const/16 v5, -0x46

    const/16 v4, -0x4b

    .line 1797
    const/4 v1, 0x0

    .line 1798
    .local v1, "level":I
    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    if-ne p1, v6, :cond_5

    .line 1799
    :cond_0
    if-lt p0, v5, :cond_2

    .line 1800
    const/4 v1, 0x3

    .line 1808
    :goto_0
    if-ne p1, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    move v3, v1

    .line 1820
    :goto_1
    return v3

    .line 1801
    :cond_2
    if-ge p0, v5, :cond_3

    if-lt p0, v4, :cond_3

    .line 1802
    const/4 v1, 0x2

    goto :goto_0

    .line 1803
    :cond_3
    if-ge p0, v4, :cond_4

    const/16 v3, -0x50

    if-lt p0, v3, :cond_4

    .line 1804
    const/4 v1, 0x1

    goto :goto_0

    .line 1806
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1810
    :cond_5
    const/16 v3, -0x64

    if-gt p0, v3, :cond_6

    .line 1811
    const/4 v3, 0x0

    goto :goto_1

    .line 1812
    :cond_6
    const/16 v3, -0x37

    if-lt p0, v3, :cond_7

    .line 1813
    add-int/lit8 v3, p1, -0x1

    goto :goto_1

    .line 1815
    :cond_7
    const/high16 v0, 0x42340000    # 45.0f

    .line 1816
    .local v0, "inputRange":F
    add-int/lit8 v3, p1, -0x1

    int-to-float v2, v3

    .line 1817
    .local v2, "outputRange":F
    add-int/lit8 v3, p0, 0x64

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v0

    float-to-int v3, v3

    goto :goto_1
.end method

.method public static calculateSignalLevel(III)I
    .locals 1
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I
    .param p2, "frequency"    # I

    .prologue
    .line 1827
    invoke-static {p0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .param p0, "rssiA"    # I
    .param p1, "rssiB"    # I

    .prologue
    .line 1841
    sub-int v0, p0, p1

    return v0
.end method

.method private getSupportedFeatures()I
    .locals 2

    .prologue
    .line 1128
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1130
    :goto_0
    return v1

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2397
    sget-object v4, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2398
    :try_start_0
    sget v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-ne v3, v5, :cond_1

    .line 2399
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 2400
    .local v2, "messenger":Landroid/os/Messenger;
    if-nez v2, :cond_0

    .line 2401
    const/4 v3, 0x0

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2402
    monitor-exit v4

    .line 2419
    .end local v2    # "messenger":Landroid/os/Messenger;
    :goto_0
    return-void

    .line 2405
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "WifiManager"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 2406
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2407
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    .line 2409
    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 2410
    new-instance v1, Landroid/net/wifi/WifiManager$ServiceHandler;

    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/WifiManager$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .line 2411
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2413
    :try_start_1
    sget-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2418
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2414
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 2415
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "WifiManager"

    const-string/jumbo v5, "interrupted wait at init"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 1135
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static putListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    .line 2376
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2384
    :goto_0
    return v0

    .line 2378
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2380
    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 2381
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 2382
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2383
    monitor-exit v2

    goto :goto_0

    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    .prologue
    .line 2388
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2392
    :goto_0
    return-object v0

    .line 2389
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2390
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2391
    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 2392
    monitor-exit v2

    goto :goto_0

    .line 2393
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    .line 2422
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2424
    :cond_0
    return-void
.end method


# virtual methods
.method public NotifyWifiPhoneCallComeIn()Z
    .locals 2

    .prologue
    .line 3150
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->NotifyWifiPhoneCallComeIn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3152
    :goto_0
    return v1

    .line 3151
    :catch_0
    move-exception v0

    .line 3152
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public NotifyWifiPhoneCallEnd()Z
    .locals 2

    .prologue
    .line 3158
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->NotifyWifiPhoneCallEnd()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3160
    :goto_0
    return v1

    .line 3159
    :catch_0
    move-exception v0

    .line 3160
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3544
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3546
    :goto_0
    return v1

    .line 3545
    :catch_0
    move-exception v0

    .line 3546
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public SetAutoInterworking(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3583
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->SetAutoInterworking(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3586
    :goto_0
    return-void

    .line 3584
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public SetSignInStatus(II)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 3596
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1, p2}, Landroid/net/wifi/IWifiManager;->SetSignInStatus(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3602
    :cond_0
    :goto_0
    return v1

    .line 3598
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 3600
    const/4 v1, 0x1

    goto :goto_0

    .line 3601
    :catch_0
    move-exception v0

    .line 3602
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 893
    if-nez p1, :cond_0

    .line 897
    :goto_0
    return v0

    .line 896
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 897
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public addOpenNetworkToBlockedList(Ljava/lang/String;)I
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3535
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOpenNetworkToBlockedList(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3537
    :goto_0
    return v1

    .line 3536
    :catch_0
    move-exception v0

    .line 3537
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2020
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    const/4 v1, 0x1

    .line 2023
    :goto_0
    return v1

    .line 2022
    :catch_0
    move-exception v0

    .line 2023
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .prologue
    .line 2576
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2577
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500e

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2578
    return-void
.end method

.method public checkWifiApEnabledMhsRequest()I
    .locals 2

    .prologue
    .line 3258
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->checkWifiApEnabledMhsRequest()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3260
    :goto_0
    return v1

    .line 3259
    :catch_0
    move-exception v0

    .line 3260
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public clearBlacklist()Z
    .locals 2

    .prologue
    .line 2037
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    const/4 v1, 0x1

    .line 2040
    :goto_0
    return v1

    .line 2039
    :catch_0
    move-exception v0

    .line 2040
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2472
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: Base Package Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect to network ID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2477
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2478
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2479
    return-void
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2445
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: Base Package Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2449
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2452
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    const/4 v2, -0x1

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2454
    return-void
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2872
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .param p1, "lockType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2838
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2854
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public decryptConfPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 3307
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->decryptConfPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 3309
    .end local p1    # "enc":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 3308
    .restart local p1    # "enc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3309
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2546
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable: Base Package Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2550
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2551
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25011

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2552
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 994
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableNetwork: Base Package Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1000
    :goto_0
    return v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 4

    .prologue
    .line 1012
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: Base Package Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    const/4 v1, 0x1

    .line 1019
    :goto_0
    return v1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 3105
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->enableAggressiveHandover(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3109
    :goto_0
    return-void

    .line 3106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 974
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNetwork: Base Package Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 980
    :goto_0
    return v1

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePowerActiveForFotaDownload(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3794
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enablePowerActiveForFotaDownload(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3796
    :goto_0
    return v1

    .line 3795
    :catch_0
    move-exception v0

    .line 3796
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePowerActiveMode(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3786
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enablePowerActiveMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3788
    :goto_0
    return v1

    .line 3787
    :catch_0
    move-exception v0

    .line 3788
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableVerboseLogging(I)V
    .locals 4
    .param p1, "verbose"    # I

    .prologue
    .line 3079
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3084
    :goto_0
    return-void

    .line 3080
    :catch_0
    move-exception v0

    .line 3082
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableVerboseLogging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public encryptConfPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 3315
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->encryptConfPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 3317
    .end local p1    # "enc":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 3316
    .restart local p1    # "enc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3317
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3063
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3064
    :try_start_1
    sget v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 3065
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 3067
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3069
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3071
    return-void

    .line 3067
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3069
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2526
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forget: Base Package Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2530
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2531
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25004

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2532
    return-void
.end method

.method public getATTAssociationManual()I
    .locals 2

    .prologue
    .line 3668
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAssociationManual()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3670
    :goto_0
    return v1

    .line 3669
    :catch_0
    move-exception v0

    .line 3670
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAggressiveHandover()I
    .locals 2

    .prologue
    .line 3118
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAggressiveHandover()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3120
    :goto_0
    return v1

    .line 3119
    :catch_0
    move-exception v0

    .line 3120
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowScansWithTraffic()I
    .locals 2

    .prologue
    .line 3142
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAllowScansWithTraffic()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3144
    :goto_0
    return v1

    .line 3143
    :catch_0
    move-exception v0

    .line 3144
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAssocListStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3286
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAssocListStr()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3288
    :goto_0
    return-object v1

    .line 3287
    :catch_0
    move-exception v0

    .line 3288
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAssociationManual()I
    .locals 2

    .prologue
    .line 3645
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAssociationManual()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3647
    :goto_0
    return v1

    .line 3646
    :catch_0
    move-exception v0

    .line 3647
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAutoInterworkingState()Z
    .locals 2

    .prologue
    .line 3575
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAutoInterworkingState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3577
    :goto_0
    return v1

    .line 3576
    :catch_0
    move-exception v0

    .line 3577
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBatchedScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1390
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1392
    :goto_0
    return-object v1

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCaptivePortalState()Z
    .locals 2

    .prologue
    .line 3617
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCaptivePortalState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3619
    :goto_0
    return v1

    .line 3618
    :catch_0
    move-exception v0

    .line 3619
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChannelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getChannelList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1090
    :goto_0
    return-object v1

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3179
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getClientInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3181
    :goto_0
    return-object v1

    .line 3180
    :catch_0
    move-exception v0

    .line 3181
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2631
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2633
    :goto_0
    return-object v1

    .line 2632
    :catch_0
    move-exception v0

    .line 2633
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 854
    :goto_0
    return-object v1

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 1443
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1445
    :goto_0
    return-object v1

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 2

    .prologue
    .line 872
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 874
    :goto_0
    return-object v1

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 6
    .param p1, "updateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1250
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 1267
    :goto_0
    return-object v1

    .line 1253
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 1254
    goto :goto_0

    .line 1256
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v1

    .line 1258
    .local v1, "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1259
    monitor-exit p0

    goto :goto_0

    .line 1263
    .end local v1    # "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1267
    goto :goto_0

    .line 1261
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 1569
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1571
    :goto_0
    return-object v1

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDockWifiApAutoEnabled()Z
    .locals 2

    .prologue
    .line 3507
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDockWifiApAutoEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3509
    :goto_0
    return v1

    .line 3508
    :catch_0
    move-exception v0

    .line 3509
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDockWifiAutoEnabled()Z
    .locals 2

    .prologue
    .line 3523
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDockWifiAutoEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3525
    :goto_0
    return v1

    .line 3524
    :catch_0
    move-exception v0

    .line 3525
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDongleScanList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1671
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDongleScanList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1673
    :goto_0
    return-object v1

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEapSimAkaSlot()I
    .locals 2

    .prologue
    .line 3418
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getEapSimAkaSlot()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3420
    :goto_0
    return v1

    .line 3419
    :catch_0
    move-exception v0

    .line 3420
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFrequencyBand()I
    .locals 2

    .prologue
    .line 1543
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1545
    :goto_0
    return v1

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getHotspotNumAllowedChannels()I
    .locals 2

    .prologue
    .line 3201
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getHotspotNumAllowedChannels()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3203
    :goto_0
    return v1

    .line 3202
    :catch_0
    move-exception v0

    .line 3203
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getHotspotState()I
    .locals 2

    .prologue
    .line 3171
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getHotspotState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3173
    :goto_0
    return v1

    .line 3172
    :catch_0
    move-exception v0

    .line 3173
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1945
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getHtcNewSenseWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1947
    :goto_0
    return-object v1

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostPreferredNetwork()I
    .locals 2

    .prologue
    .line 3268
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getMostPreferredNetwork()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3270
    :goto_0
    return v1

    .line 3269
    :catch_0
    move-exception v0

    .line 3270
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getOpenNetworkBlockedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3553
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getOpenNetworkBlockedList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3555
    :goto_0
    return-object v1

    .line 3554
    :catch_0
    move-exception v0

    .line 3555
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 2

    .prologue
    .line 3767
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3769
    :goto_0
    return-object v1

    .line 3768
    :catch_0
    move-exception v0

    .line 3769
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 864
    :goto_0
    return-object v1

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequestedList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3209
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRequestedList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3211
    :goto_0
    return-object v1

    .line 3210
    :catch_0
    move-exception v0

    .line 3211
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1456
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScanResults: Base Package Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1462
    :goto_0
    return-object v1

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3294
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getTetheringDhcpRange()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3296
    :goto_0
    return-object v1

    .line 3295
    :catch_0
    move-exception v0

    .line 3296
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTxPacketCount(Landroid/net/wifi/WifiManager$TxPacketCountListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .prologue
    .line 1767
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1768
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25014

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1769
    return-void
.end method

.method public getVFAutoJoin(I)I
    .locals 2
    .param p1, "netID"    # I

    .prologue
    .line 3686
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getVFAutoJoin(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3688
    :goto_0
    return v1

    .line 3687
    :catch_0
    move-exception v0

    .line 3688
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getVerboseLoggingLevel()I
    .locals 2

    .prologue
    .line 3093
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3095
    :goto_0
    return v1

    .line 3094
    :catch_0
    move-exception v0

    .line 3095
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWanDetectionEnabled()Z
    .locals 2

    .prologue
    .line 3462
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWanDetectionEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3464
    :goto_0
    return v1

    .line 3463
    :catch_0
    move-exception v0

    .line 3464
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1937
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1939
    :goto_0
    return-object v1

    .line 1938
    :catch_0
    move-exception v0

    .line 1939
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1919
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1921
    :goto_0
    return-object v1

    .line 1920
    :catch_0
    move-exception v0

    .line 1921
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApState()I
    .locals 2

    .prologue
    .line 1876
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1878
    :goto_0
    return v1

    .line 1877
    :catch_0
    move-exception v0

    .line 1878
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getWifiBatteryUsageHint()J
    .locals 4

    .prologue
    .line 3806
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiBatteryUsageHint()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3808
    :goto_0
    return-wide v2

    .line 3807
    :catch_0
    move-exception v0

    .line 3808
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 3471
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3473
    :goto_0
    return-object v1

    .line 3472
    :catch_0
    move-exception v0

    .line 3473
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiOffloadEnabled()Z
    .locals 2

    .prologue
    .line 3719
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiOffloadEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3721
    :goto_0
    return v1

    .line 3720
    :catch_0
    move-exception v0

    .line 3721
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2616
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2620
    :goto_0
    return-object v1

    .line 2617
    :catch_0
    move-exception v0

    .line 2618
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2619
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2620
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 1745
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1747
    :goto_0
    return v1

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifidisplayApEnabled()Z
    .locals 2

    .prologue
    .line 1621
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1623
    :goto_0
    return v1

    .line 1622
    :catch_0
    move-exception v0

    .line 1623
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifidisplayApState()I
    .locals 2

    .prologue
    .line 1613
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifidisplayApState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1615
    :goto_0
    return v1

    .line 1614
    :catch_0
    move-exception v0

    .line 1615
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1904
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1906
    :goto_0
    return-object v1

    .line 1905
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1431
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getWpsNfcConfigurationToken(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1433
    :goto_0
    return-object v1

    .line 1432
    :catch_0
    move-exception v0

    .line 1433
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 3054
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3055
    const/4 v1, 0x1

    .line 3057
    :goto_0
    return v1

    .line 3056
    :catch_0
    move-exception v0

    .line 3057
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public is5GHzBandSupported()Z
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isAdditionalStaSupported()Z
    .locals 1

    .prologue
    .line 1214
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isBatchedScanSupported()Z
    .locals 2

    .prologue
    .line 1363
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isBatchedScanSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1364
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceToApRttSupported()Z
    .locals 1

    .prologue
    .line 1199
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceToDeviceRttSupported()Z
    .locals 1

    .prologue
    .line 1191
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 1556
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1558
    :goto_0
    return v1

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnhancedPowerReportingSupported()Z
    .locals 1

    .prologue
    .line 1236
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isHotspotRestricted()Z
    .locals 2

    .prologue
    .line 3364
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isHotspotRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3366
    :goto_0
    return v1

    .line 3365
    :catch_0
    move-exception v0

    .line 3366
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMdmHotspotRestricted()Z
    .locals 2

    .prologue
    .line 3397
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMdmHotspotRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3399
    :goto_0
    return v1

    .line 3398
    :catch_0
    move-exception v0

    .line 3399
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMdmWifiRestricted()Z
    .locals 2

    .prologue
    .line 3381
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMdmWifiRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3383
    :goto_0
    return v1

    .line 3382
    :catch_0
    move-exception v0

    .line 3383
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 3042
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3044
    :goto_0
    return v1

    .line 3043
    :catch_0
    move-exception v0

    .line 3044
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNanSupported()Z
    .locals 1

    .prologue
    .line 1182
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isOffChannelTdlsSupported()Z
    .locals 1

    .prologue
    .line 1229
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isP2pSupported()Z
    .locals 1

    .prologue
    .line 1156
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPasspointSupported()Z
    .locals 1

    .prologue
    .line 1149
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPortableHotspotSupported()Z
    .locals 1

    .prologue
    .line 1165
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPreferredNetworkOffloadSupported()Z
    .locals 1

    .prologue
    .line 1206
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 2

    .prologue
    .line 1476
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1478
    :goto_0
    return v1

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupport5GHotspot()Z
    .locals 2

    .prologue
    .line 3328
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isSupport5GHotspot()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3330
    :goto_0
    return v1

    .line 3329
    :catch_0
    move-exception v0

    .line 3330
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportHS20()Z
    .locals 3

    .prologue
    .line 3565
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isSupportHS20()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3568
    :goto_0
    return v1

    .line 3566
    :catch_0
    move-exception v0

    .line 3567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string/jumbo v2, "mService.isSupportHS20() exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTdlsSupported()Z
    .locals 1

    .prologue
    .line 1221
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 1890
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 1757
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiRestricted()Z
    .locals 2

    .prologue
    .line 3348
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isWifiRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3350
    :goto_0
    return v1

    .line 3349
    :catch_0
    move-exception v0

    .line 3350
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiScannerSupported()Z
    .locals 1

    .prologue
    .line 1174
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1069
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    .line 1074
    :goto_0
    return v1

    .line 1072
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 1

    .prologue
    .line 1418
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->pollBatchedScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :goto_0
    return-void

    .line 1419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reassociate()Z
    .locals 4

    .prologue
    .line 1052
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reassociate: Base Package Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    const/4 v1, 0x1

    .line 1059
    :goto_0
    return v1

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    .line 1032
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reconnect: Base Package Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    const/4 v1, 0x1

    .line 1039
    :goto_0
    return v1

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 949
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNetwork: Base Package Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 955
    :goto_0
    return v1

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;)Z
    .locals 4
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 1344
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1345
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1350
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, v2, p2}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1351
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDhcpConfig()V
    .locals 1

    .prologue
    .line 3187
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->resetDhcpConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3190
    :goto_0
    return-void

    .line 3188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public retryLanDetection()Z
    .locals 2

    .prologue
    .line 3438
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->retryLanDetection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3440
    :goto_0
    return v1

    .line 3439
    :catch_0
    move-exception v0

    .line 3440
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public retryWanDetection()Z
    .locals 2

    .prologue
    .line 3446
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->retryWanDetection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3448
    :goto_0
    return v1

    .line 3447
    :catch_0
    move-exception v0

    .line 3448
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2502
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save: Base Package Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2506
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2507
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25007

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2508
    return-void
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 1493
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1495
    :goto_0
    return v1

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setATTAssociationManual(I)Z
    .locals 2
    .param p1, "isManual"    # I

    .prologue
    .line 3656
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setAssociationManual(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3657
    const/4 v1, 0x1

    .line 3659
    :goto_0
    return v1

    .line 3658
    :catch_0
    move-exception v0

    .line 3659
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 3130
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setAllowScansWithTraffic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3134
    :goto_0
    return-void

    .line 3131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAssociationManual(I)Z
    .locals 2
    .param p1, "isManual"    # I

    .prologue
    .line 3633
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setAssociationManual(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3634
    const/4 v1, 0x1

    .line 3636
    :goto_0
    return v1

    .line 3635
    :catch_0
    move-exception v0

    .line 3636
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCaptivePortalState(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3608
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setCaptivePortalState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3609
    const/4 v1, 0x1

    .line 3611
    :goto_0
    return v1

    .line 3610
    :catch_0
    move-exception v0

    .line 3611
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCmccTimer(Z)Z
    .locals 2
    .param p1, "isTimerOn"    # Z

    .prologue
    .line 3696
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setCmccTimer(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3698
    :goto_0
    return v1

    .line 3697
    :catch_0
    move-exception v0

    .line 3698
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1509
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCountryCode: Base Package Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    :goto_0
    return-void

    .line 1514
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3499
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setDockWifiApAutoEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3501
    :goto_0
    return v1

    .line 3500
    :catch_0
    move-exception v0

    .line 3501
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3515
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setDockWifiAutoEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3517
    :goto_0
    return v1

    .line 3516
    :catch_0
    move-exception v0

    .line 3517
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEapSimAkaSlot(I)Z
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 3410
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setEapSimAkaSlot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3412
    :goto_0
    return v1

    .line 3411
    :catch_0
    move-exception v0

    .line 3412
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 1
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1528
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHotspotAutoChannel(I)V
    .locals 1
    .param p1, "autoChannel"    # I

    .prologue
    .line 3194
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setHotspotAutoChannel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3197
    :goto_0
    return-void

    .line 3195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHotspotRestricted(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3356
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setHotspotRestricted(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3358
    :goto_0
    return v1

    .line 3357
    :catch_0
    move-exception v0

    .line 3358
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3233
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHtcWifiApConfig enter (band/channel/5G channel) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->band:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setHtcNewSenseWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3236
    :goto_0
    return v1

    .line 3235
    :catch_0
    move-exception v0

    .line 3236
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setMdmHotspotRestricted(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3389
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setMdmHotspotRestricted(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3391
    :goto_0
    return v1

    .line 3390
    :catch_0
    move-exception v0

    .line 3391
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMdmWifiRestricted(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3373
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setMdmWifiRestricted(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3375
    :goto_0
    return v1

    .line 3374
    :catch_0
    move-exception v0

    .line 3375
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 3276
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setMostPreferredNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3278
    :goto_0
    return v1

    .line 3277
    :catch_0
    move-exception v0

    .line 3278
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTdlsEnabled(Ljava/net/InetAddress;Z)V
    .locals 2
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z

    .prologue
    .line 2067
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2071
    :goto_0
    return-void

    .line 2068
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTdlsEnabledWithMacAddress(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2081
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    :goto_0
    return-void

    .line 2082
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVFAutoJoin(ZI)Z
    .locals 2
    .param p1, "isAutojoin"    # Z
    .param p2, "netID"    # I

    .prologue
    .line 3677
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setVFAutoJoin(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3678
    const/4 v1, 0x1

    .line 3680
    :goto_0
    return v1

    .line 3679
    :catch_0
    move-exception v0

    .line 3680
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWanDetectionDialogEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3430
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWanDetectionDialogEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3432
    :goto_0
    return v1

    .line 3431
    :catch_0
    move-exception v0

    .line 3432
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWanDetectionEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3454
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWanDetectionEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3456
    :goto_0
    return v1

    .line 3455
    :catch_0
    move-exception v0

    .line 3456
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3224
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiApConfig enter (band/channel/5G channel) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->band:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel_5g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3227
    :goto_0
    return v1

    .line 3226
    :catch_0
    move-exception v0

    .line 3227
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1961
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    const/4 v1, 0x1

    .line 1964
    :goto_0
    return v1

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 1858
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    const/4 v1, 0x1

    .line 1861
    :goto_0
    return v1

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 3250
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3252
    :goto_0
    return v1

    .line 3251
    :catch_0
    move-exception v0

    .line 3252
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3242
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3244
    :goto_0
    return v1

    .line 3243
    :catch_0
    move-exception v0

    .line 3244
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3479
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3481
    :goto_0
    return v1

    .line 3480
    :catch_0
    move-exception v0

    .line 3481
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3487
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3489
    :goto_0
    return v1

    .line 3488
    :catch_0
    move-exception v0

    .line 3489
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .locals 3
    .param p1, "channel"    # I
    .param p2, "BSSID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1695
    if-nez p2, :cond_0

    .line 1701
    :goto_0
    return v1

    .line 1699
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiDisplayConfigure(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;[BI)Z
    .locals 3
    .param p1, "channel"    # I
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "guest_key"    # [B
    .param p4, "transId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1706
    if-nez p2, :cond_0

    .line 1712
    :goto_0
    return v1

    .line 1710
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/wifi/IWifiManager;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1711
    :catch_0
    move-exception v0

    .line 1712
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setWifiDisplayUnscan(Z)Z
    .locals 2
    .param p1, "disabled"    # Z

    .prologue
    .line 1727
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDisplayUnscan(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    const/4 v1, 0x1

    .line 1730
    :goto_0
    return v1

    .line 1729
    :catch_0
    move-exception v0

    .line 1730
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabled: Base Package Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->isWifiEnableNotifyPackageName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/net/wifi/IWifiManager;->setWifiEnableNotify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiManager;->mzEnforceWifiPermission()V

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiManager;->mzEnforceWifiPermission()V

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiOffloadEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiOffloadEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiPowerSavingMode(I)Z
    .locals 2
    .param p1, "status"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiPowerSavingMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiRestricted(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiRestricted(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDisplay: setWifidisplayApEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifidisplayEnabled(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1590
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDisplay: setWifidisplayEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifidisplayEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startCustomizedScan(Landroid/net/wifi/ScanSettings;)Z
    .locals 3
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startCustomizedScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    .locals 2
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startDongleScan()Z
    .locals 3

    .prologue
    const-string v1, "WifiManager"

    const-string v2, "[Simon] startDongleScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startDongleScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startDongleSingleCscan(I)Z
    .locals 4
    .param p1, "channel"    # I

    .prologue
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Simon] startDongleSingleCscan at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startDongleSingleCscan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startDongleWakeUp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startDongleWakeUp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startNetworkSelection(Z)V
    .locals 4
    .param p1, "reconnect"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startNetworkSelection(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ScoreAP] + startNetworkSelection failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startScan()Z
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startScan(Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWifi()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWifiOffload(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startWifiOffload(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500a

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiManager"

    const-string v2, "[Simon] startWpsRegistrar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 1
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopPPPOE()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->stopPPPOE()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopWifi()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized stopWpsRegistrar()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiManager"

    const-string v2, "[Simon] stopWpsRegistrar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWpsRegistrar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1602
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method private mzEnforceWifiPermission()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x44

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
