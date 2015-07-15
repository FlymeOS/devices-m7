.class public Lcom/android/server/wifi/WifiHtcOffload;
.super Ljava/lang/Object;
.source "WifiHtcOffload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x24000

.field public static final ENABLE_WIFI_OFFLOAD:I = 0x240cc

.field public static final EXTRA_FINDAP:Ljava/lang/String; = "findAP"

.field public static final GET_WIFI_OFFLOAD_STATUS:I = 0x240ce

.field public static GSM_THRESHOLD:I = 0x0

.field public static MOBILE_TO_WIFI_THRESHOLD:I = 0x0

.field public static final NETWORK_HIGH_TXPER_EVENT:I = 0x240c5

.field public static final OFFLOAD_NOTIFICATION_EVENT:I = 0x240c9

.field public static final OFFLOAD_TRIGGER_EVENT:I = 0x240ca

.field public static final OFFLOAD_TRIGGER_NOTIFICATION_ACTION:Ljava/lang/String; = "android.net.wifi.trigger_notification"

.field public static final OFFLOAD_TRIGGER_NOTIFICATION_EVENT:I = 0x240c8

.field private static final PROPERTY_WIFIOFFLOAD_RSSI:Ljava/lang/String; = "wifi.offload.rssi"

.field private static final PROPERTY_WIFIOFFLOAD_SUPPORTED:Ljava/lang/String; = "persist.wifi.offload"

.field public static final RSSI_CHANGED_EVENT:I = 0x240c6

.field public static final SCAN_RESULTS_AVAILABLE_EVENT:I = 0x240cb

.field public static final START_WIFI_NETWORK_SELECTION:I = 0x240cf

.field public static final START_WIFI_OFFLOAD:I = 0x240cd

.field private static final TAG:Ljava/lang/String; = "WifiHtcOffload"

.field public static final TX_FAIL_EVENT:I = 0x240c7

.field public static WIFI_24G_THRESHOLD_MIN:I

.field public static WIFI_5G_THRESHOLD_MIN:I

.field public static WIFI_HYSTERESIS:I

.field public static WIFI_TO_3G_THRESHOLD:I

.field public static ignoreOffloadForGetIPThreshold:I

.field public static mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

.field public static vh_5G:Z

.field public static vh_first_time:Z

.field public static vh_mobile_available:Z

.field public static vh_mobile_link_speed:I

.field public static vh_mobile_signalStrength:I

.field public static vh_offload_enabled:Z

.field public static vh_pingpong:Z

.field public static vh_switch_counter:I

.field public static vh_wifi_link_speed:I

.field public static vh_wifi_rssi:I

.field public static vh_wifi_to_mobile:Z


# instance fields
.field private mAirplaneModeOn:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field public mForceWifiOffload:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mInterfaceName:Ljava/lang/String;

.field private mMobileNetworkType:Ljava/lang/String;

.field private mOffloadRSSI:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mScreenOn:Z

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field public mStartOffload:Z

.field public mStartOffloadNotification:Z

.field public mStartOffloadTime:J

.field private mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field public mWifiOffloadEnabled:Z

.field public mWifiOffloadFirstTime:Z

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private phoneManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const/16 v0, 0xa

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_HYSTERESIS:I

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    .line 143
    const/16 v0, 0x2710

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->ignoreOffloadForGetIPThreshold:I

    .line 148
    sput-boolean v1, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    .line 149
    sput-boolean v1, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    .line 152
    sput-boolean v1, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    .line 154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiHtcOffload;->vh_first_time:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNative;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p4, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p5, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/16 v5, -0x63

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mContext:Landroid/content/Context;

    .line 85
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mInterfaceName:Ljava/lang/String;

    .line 86
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 87
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 88
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 89
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .line 90
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    .line 91
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    .line 98
    iput v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadRSSI:I

    .line 103
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    .line 104
    const-string v0, "UNINITIALIZED"

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 108
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    .line 111
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mScreenOn:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mAirplaneModeOn:Z

    .line 518
    new-instance v0, Lcom/android/server/wifi/WifiHtcOffload$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiHtcOffload$1;-><init>(Lcom/android/server/wifi/WifiHtcOffload;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 305
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mContext:Landroid/content/Context;

    .line 306
    iput-object p2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mInterfaceName:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 308
    iput-object p4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 309
    iput-object p5, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 312
    const/16 v0, 0xa

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_HYSTERESIS:I

    .line 313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadTime:J

    .line 314
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    .line 315
    iput v5, p0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadRSSI:I

    .line 316
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    .line 317
    const-string v0, "UNINITIALIZED"

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    .line 318
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 319
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    .line 320
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    .line 321
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mScreenOn:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mAirplaneModeOn:Z

    .line 324
    sput-object v3, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    .line 326
    const/16 v0, -0x50

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_24G_THRESHOLD_MIN:I

    .line 327
    const/16 v0, -0x51

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_5G_THRESHOLD_MIN:I

    .line 328
    const/16 v0, -0x4b

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_TO_3G_THRESHOLD:I

    .line 329
    const/16 v0, -0x4c

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->MOBILE_TO_WIFI_THRESHOLD:I

    .line 330
    const/16 v0, 0x16

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->GSM_THRESHOLD:I

    .line 332
    sput v5, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_rssi:I

    .line 333
    sput v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_link_speed:I

    .line 334
    sput v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_link_speed:I

    .line 335
    sput-boolean v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    .line 336
    sput-boolean v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    .line 337
    sput v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_switch_counter:I

    .line 338
    sput v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    .line 339
    sput-boolean v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    .line 340
    sput-boolean v4, Lcom/android/server/wifi/WifiHtcOffload;->vh_first_time:Z

    .line 341
    sput-boolean v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_5G:Z

    .line 342
    sput-boolean v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_pingpong:Z

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiHtcOffload;)Lcom/android/server/wifi/WifiHtcNetworkSelection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiHtcOffload;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/WifiHtcOffload;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiHtcOffload;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadRSSI:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiHtcOffload;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcOffload;->handleOffloadNotification_WifiOffload()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiHtcOffload;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcOffload;->handleOffloadTrigger_WifiOffload()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiHtcOffload;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiHtcOffload;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiHtcOffload;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiHtcOffload;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiHtcOffload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/server/wifi/WifiHtcOffload;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiHtcOffload;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method private checkMobileNetworkType_WifiOffload()V
    .locals 5

    .prologue
    .line 749
    const-string v2, "WifiHtcOffload"

    const-string v3, "checkMobileNetworkType_WifiOffload()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    if-eqz v2, :cond_2

    .line 751
    :cond_0
    const/4 v1, 0x0

    .line 752
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiHtcOffload;->getMobileDataSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "gsmSignalStrength":I
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiHtcOffload;->setSignalStrength(I)V

    .line 755
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v1

    .line 756
    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 758
    const-string v2, "gsm.network.type"

    const-string v3, "UNKNOWN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 764
    .end local v0    # "gsmSignalStrength":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 765
    iput-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    .line 766
    const-string v2, "WifiHtcOffload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set mMobileNetworkType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/WifiHtcOffload;->setMobileNetworkType(Ljava/lang/String;)Z

    .line 770
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    return-void

    .line 761
    .restart local v1    # "type":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "WifiHtcOffload"

    const-string v3, "MobileDataSetting is disable, shall not do WiFioffload"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_4
    const-string v1, "NOT_AVAILABLE"

    goto :goto_0
.end method

.method private handleOffloadNotification_WifiOffload()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 774
    const-string v0, "WifiHtcOffload"

    const-string v1, "handleOffloadNotification_WifiOffload()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    sget-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v0, :cond_1

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 778
    const-string v0, "WifiHtcOffload"

    const-string v1, "got OFFLOAD_NOTIFICATION_EVENT, do network selection first"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadTime:J

    .line 781
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(I)Z

    .line 791
    :goto_0
    return-void

    .line 784
    :cond_0
    const-string v0, "WifiHtcOffload"

    const-string v1, "just trigger network selection check, ignore OFFLOAD_TRIGGER_EVENT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_1
    const-string v0, "WifiHtcOffload"

    const-string v1, "Network selection is diable, send OFFLOAD_NOTIFICATION_EVENT directly"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiHtcOffload;->sendErrorBroadcast(I)V

    goto :goto_0
.end method

.method private handleOffloadTrigger_WifiOffload()V
    .locals 14

    .prologue
    .line 794
    const-string v9, "WifiHtcOffload"

    const-string v10, "handleOffloadTrigger_WifiOffload()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    sget-boolean v9, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v9, :cond_9

    .line 796
    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v8

    .line 797
    .local v8, "signalPoll":Ljava/lang/String;
    const/4 v1, 0x0

    .line 798
    .local v1, "currentRSSI":I
    if-eqz v8, :cond_2

    .line 799
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 800
    .local v6, "lines":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 801
    .local v5, "line":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "prop":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 800
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 804
    :cond_1
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v7, v9

    const-string v10, "RSSI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 805
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 813
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lines":[Ljava/lang/String;
    .end local v7    # "prop":[Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    if-nez v9, :cond_3

    .line 814
    const-string v9, "WifiHtcOffload"

    const-string v10, "Not get IP address yet, shall not do WiFioffload"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_2
    iput v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadRSSI:I

    .line 848
    sput v1, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_rssi:I

    .line 855
    .end local v1    # "currentRSSI":I
    .end local v8    # "signalPoll":Ljava/lang/String;
    :goto_3
    return-void

    .line 815
    .restart local v1    # "currentRSSI":I
    .restart local v8    # "signalPoll":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHaveIpAddressTime:J

    sub-long/2addr v10, v12

    sget v9, Lcom/android/server/wifi/WifiHtcOffload;->ignoreOffloadForGetIPThreshold:I

    int-to-long v12, v9

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    .line 816
    const-string v9, "WifiHtcOffload"

    const-string v10, "Just got IP address, shall not do WiFioffload"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 817
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x2710

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_8

    .line 819
    const-string v9, "WifiHtcOffload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WiFioffload, currentRSSI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", previous offload RSSI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadRSSI:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadTime:J

    .line 822
    iget v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadRSSI:I

    sub-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_5

    .line 823
    const-string v9, "WifiHtcOffload"

    const-string v10, "WiFioffload, got OFFLOAD_TRIGGER_EVENT, do network selection and scan first"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    .line 825
    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(I)Z

    goto :goto_2

    .line 829
    :cond_5
    const-string v9, "WifiHtcOffload"

    const-string v10, "WiFioffload, got OFFLOAD_TRIGGER_EVENT, do network selection first"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    sget-boolean v9, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionRoamToOtherSsid:Z

    if-eqz v9, :cond_6

    .line 832
    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP(Z)Z

    move-result v2

    .line 836
    .local v2, "findAP":Z
    :goto_4
    if-nez v2, :cond_7

    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    if-eqz v9, :cond_7

    .line 837
    const-string v9, "WifiHtcOffload"

    const-string v10, "Network selection didn\'t find roaming AP, trigger WiFioffload"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiHtcOffload;->startWifiOffload(Z)Z

    goto/16 :goto_2

    .line 834
    .end local v2    # "findAP":Z
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP(Z)Z

    move-result v2

    .restart local v2    # "findAP":Z
    goto :goto_4

    .line 841
    :cond_7
    const-string v9, "WifiHtcOffload"

    const-string v10, "Network selection find candidate AP, NOT trigger WiFioffload"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 845
    .end local v2    # "findAP":Z
    :cond_8
    const-string v9, "WifiHtcOffload"

    const-string v10, "WiFioffload, just trigger network selection check, ignore OFFLOAD_TRIGGER_EVENT"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 852
    .end local v1    # "currentRSSI":I
    .end local v8    # "signalPoll":Ljava/lang/String;
    :cond_9
    const-string v9, "WifiHtcOffload"

    const-string v10, "Network selection is diable, trigger WiFioffload directly"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiHtcOffload;->startWifiOffload(Z)Z

    goto/16 :goto_3

    .line 807
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "currentRSSI":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "lines":[Ljava/lang/String;
    .restart local v7    # "prop":[Ljava/lang/String;
    .restart local v8    # "signalPoll":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_1
.end method

.method public static handleStartWifiOffload(Z)Z
    .locals 5
    .param p0, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 459
    const-string v0, "WifiHtcOffload"

    const-string v2, "handleWifiOffloadEnable ()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sget-object v0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    if-eqz v0, :cond_0

    .line 461
    sget-object v2, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    sget-object v3, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    const v4, 0x240cd

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 463
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 461
    goto :goto_0
.end method

.method public static handleTxFailEvent()V
    .locals 3

    .prologue
    .line 433
    const-string v0, "WifiHtcOffload"

    const-string v1, "...receive TX FAIL event"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object v0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    if-eqz v0, :cond_0

    .line 441
    sget-object v0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    sget-object v1, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    const v2, 0x240c7

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    :cond_0
    return-void
.end method

.method public static handleWifiOffloadEnable(Z)Z
    .locals 5
    .param p0, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 449
    const-string v0, "WifiHtcOffload"

    const-string v2, "handleWifiOffloadEnable ()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    if-eqz v0, :cond_0

    .line 451
    sget-object v2, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    sget-object v3, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    const v4, 0x240cc

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 453
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 451
    goto :goto_0
.end method

.method private persistWifiOffloadEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 355
    if-eqz p1, :cond_0

    const-string v1, "WifiHtcOffload"

    const-string v2, "WifiOffload: persistWifiOffloadEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, "cr":Landroid/content/ContentResolver;
    return-void

    .line 356
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiHtcOffload"

    const-string v2, "persistWifiOffloadEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendErrorBroadcast(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 1180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1182
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1183
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1184
    return-void
.end method

.method private setIntentReceiver_WifiOffload()V
    .locals 3

    .prologue
    .line 1059
    new-instance v0, Lcom/android/server/wifi/WifiHtcOffload$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiHtcOffload$2;-><init>(Lcom/android/server/wifi/WifiHtcOffload;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1157
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.trigger_notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1168
    return-void
.end method

.method public static setMobileNetworkType(Ljava/lang/String;)Z
    .locals 8
    .param p0, "mNetwType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 905
    const/16 v3, 0x12

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "UNKNOWN"

    aput-object v3, v0, v7

    const-string v3, "GPRS"

    aput-object v3, v0, v6

    const/4 v3, 0x2

    const-string v4, "EDGE"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "UMTS"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "CDMA"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "CDMA - EvDo rev. 0"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "CDMA - EvDo rev. A"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "CDMA - 1xRTT"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "HSDPA"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "HSUPA"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "HSPA"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "IDEN"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "CDMA - EvDo rev. B"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "LTE"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "CDMA - eHRPD"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "HSPA+"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "NOT_AVAILABLE"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "AVAILABLE"

    aput-object v4, v0, v3

    .line 908
    .local v0, "netName":[Ljava/lang/String;
    const-string v3, "WifiHtcOffload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileNetworkType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 910
    .local v1, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 911
    .local v2, "result":Z
    if-ne v2, v6, :cond_2

    .line 912
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_link_speed:I

    .line 916
    :goto_0
    const-string v3, "MOBILE_NOT_AVAILABLE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MOBILE_UNKNOWN"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NOT_AVAILABLE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UNKNOWN"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    :cond_0
    sput v7, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_link_speed:I

    .line 920
    :cond_1
    return v6

    .line 914
    :cond_2
    const-string v3, "MOBILE_UNKNOWN"

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_link_speed:I

    goto :goto_0
.end method


# virtual methods
.method public clearOffloadFlags()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    const-string v0, "WifiHtcOffload"

    const-string v1, "clearOffloadFlags ()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mSwitchSSID:Z

    .line 424
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    .line 425
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    .line 426
    return-void
.end method

.method public getMobileDataSettingEnabled()Z
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x1

    return v0
.end method

.method public getOffloadFlagStatus()Z
    .locals 3

    .prologue
    .line 375
    const-string v0, "WifiHtcOffload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOffloadFlagStatus() mStartOffloadNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStartOffload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vh_wifi_to_mobile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffloadSystemProperties()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 346
    const-string v0, "WifiHtcOffload"

    const-string v1, "getOffloadSystemProperties()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v0, "persist.wifi.offload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 348
    const-string v0, "WifiHtcOffload"

    const-string v1, "WiFioffload is enable by property(persist.wifi.offload)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    return v0
.end method

.method public getWifiOffloadEnabled()Z
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiHtcOffload;->getpersistWifiOffloadEnabled()I

    move-result v0

    .line 382
    .local v0, "ret":I
    const-string v1, "WifiHtcOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiOffloadEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiOffloadFirstTime()Z
    .locals 3

    .prologue
    .line 369
    const-string v0, "WifiHtcOffload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiOffloadFirstTime()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    return v0
.end method

.method public getWifiOffloadPersistState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 935
    const-string v2, "persist.wifi.offload"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 936
    const-string v1, "WifiHtcOffload"

    const-string v2, "WiFioffload is enabled by property(persist.wifi.offload)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    .line 940
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getpersistWifiOffloadEnabled()I
    .locals 2

    .prologue
    .line 1006
    const-string v0, "WifiHtcOffload"

    const-string v1, "getpersistWifiOffloadEnabled()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v0, 0x1

    return v0
.end method

.method public initWifiOffload(Lcom/android/server/wifi/WifiHtcNetworkSelection;)V
    .locals 7
    .param p1, "wifiHtcNetworkSelection"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .prologue
    const/16 v6, -0x4b

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 672
    const-string v1, "WifiHtcOffload"

    const-string v4, "initWifiOffload()"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .line 678
    const-string v1, "persist.wifi.offload"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 680
    const-string v1, "WifiHtcOffload"

    const-string v4, "WiFioffload is enable by property(persist.wifi.offload)"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;

    .line 695
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x100

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 696
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v4, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 697
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 699
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    if-eqz v1, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiHtcOffload;->getpersistWifiOffloadEnabled()I

    move-result v0

    .line 711
    .local v0, "ret":I
    if-lez v0, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    .line 713
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    sput-boolean v1, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    .line 714
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 715
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    .line 716
    sput-boolean v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_first_time:Z

    .line 720
    .end local v0    # "ret":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcOffload;->setIntentReceiver_WifiOffload()V

    .line 721
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mAirplaneModeOn:Z

    .line 725
    sput v6, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_24G_THRESHOLD_MIN:I

    .line 726
    sput v6, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_5G_THRESHOLD_MIN:I

    .line 727
    sput v6, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_TO_3G_THRESHOLD:I

    .line 728
    sput v6, Lcom/android/server/wifi/WifiHtcOffload;->MOBILE_TO_WIFI_THRESHOLD:I

    .line 729
    const/16 v1, 0x8

    sput v1, Lcom/android/server/wifi/WifiHtcOffload;->GSM_THRESHOLD:I

    .line 730
    const/16 v1, 0xa

    sput v1, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_HYSTERESIS:I

    .line 732
    sput-boolean v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    .line 744
    return-void

    .restart local v0    # "ret":I
    :cond_2
    move v1, v3

    .line 711
    goto :goto_0

    .end local v0    # "ret":I
    :cond_3
    move v2, v3

    .line 721
    goto :goto_1
.end method

.method public sendHighTxPerEventBroadcast()V
    .locals 3

    .prologue
    .line 1172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.HIGH_TXPER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1176
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1177
    return-void
.end method

.method public setSignalStrength(I)V
    .locals 2
    .param p1, "signalStrength"    # I

    .prologue
    .line 925
    const-string v0, "WifiHtcOffload"

    const-string v1, "setSignalStrength()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sput p1, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    .line 927
    return-void
.end method

.method public setWifiOffloadEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 949
    const-string v1, "WifiHtcOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiOffloadEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    if-eqz v1, :cond_0

    .line 956
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiHtcOffload;->startWifiOffloadCommand(Z)Z

    .line 958
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    .line 959
    sput-boolean p1, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    .line 960
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->setWifiOffloadEnabledCommand(Z)Z

    move-result v0

    .line 962
    :cond_0
    return v0
.end method

.method public declared-synchronized setWifiOffloadFirstTime(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 997
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiHtcOffload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiOffloadFirstTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    .line 999
    sput-boolean p1, Lcom/android/server/wifi/WifiHtcOffload;->vh_first_time:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    monitor-exit p0

    return-void

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startWifiOffload(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 967
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiHtcOffload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWifiOffload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->switchToBetterSsid(Z)Z

    .line 988
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiHtcOffload;->startWifiOffloadCommand(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    monitor-exit p0

    return p1

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startWifiOffloadCommand(Z)Z
    .locals 13
    .param p1, "enabled"    # Z

    .prologue
    .line 467
    const-string v10, "WifiHtcOffload"

    const-string v11, "startWifiOffloadCommand ()"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-eqz p1, :cond_8

    .line 470
    iget-boolean v10, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    if-nez v10, :cond_0

    .line 471
    const/4 v10, 0x0

    .line 514
    :goto_0
    return v10

    .line 473
    :cond_0
    const/4 v2, 0x0

    .line 474
    .local v2, "currentRSSI":I
    const/4 v1, 0x0

    .line 478
    .local v1, "currentFREQ":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v8

    .line 479
    .local v8, "signalPoll":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 480
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, "lines":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    .line 482
    .local v5, "line":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "prop":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 481
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 485
    :cond_2
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v7, v10

    const-string v11, "RSSI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 486
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 487
    :cond_3
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "FREQUENCY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 488
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_2

    .line 495
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "prop":[Ljava/lang/String;
    :cond_4
    const-string v10, "WifiHtcOffload"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current RSSI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "vh_wifi_rssi: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_rssi:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v10, 0xfa0

    if-le v1, v10, :cond_5

    const/4 v10, 0x1

    :goto_3
    sput-boolean v10, Lcom/android/server/wifi/WifiHtcOffload;->vh_5G:Z

    .line 497
    sget-boolean v10, Lcom/android/server/wifi/WifiHtcOffload;->vh_5G:Z

    if-eqz v10, :cond_6

    sget v10, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_TO_3G_THRESHOLD:I

    add-int/lit8 v9, v10, -0x5

    .line 498
    .local v9, "wifi_to_3g_threshold":I
    :goto_4
    sget v10, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_TO_3G_THRESHOLD:I

    if-gt v2, v10, :cond_7

    .line 499
    const-string v10, "WifiHtcOffload"

    const-string v11, "...switch WiFi to 3G"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadTime:J

    .line 501
    sget v10, Lcom/android/server/wifi/WifiHtcOffload;->vh_switch_counter:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/server/wifi/WifiHtcOffload;->vh_switch_counter:I

    .line 502
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    .line 503
    iget-object v10, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiNative;->startWifiOffloadCommand(Z)Z

    .line 508
    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 496
    .end local v9    # "wifi_to_3g_threshold":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 497
    :cond_6
    sget v9, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_TO_3G_THRESHOLD:I

    goto :goto_4

    .line 506
    .restart local v9    # "wifi_to_3g_threshold":I
    :cond_7
    const-string v10, "WifiHtcOffload"

    const-string v11, "Cannot WifiOffload to 3G"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 512
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "currentFREQ":I
    .end local v2    # "currentRSSI":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "lines":[Ljava/lang/String;
    .end local v8    # "signalPoll":Ljava/lang/String;
    .end local v9    # "wifi_to_3g_threshold":I
    :cond_8
    iget-object v10, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/wifi/WifiNative;->startWifiOffloadCommand(Z)Z

    .line 514
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 490
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "currentFREQ":I
    .restart local v2    # "currentRSSI":I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "lines":[Ljava/lang/String;
    .restart local v7    # "prop":[Ljava/lang/String;
    .restart local v8    # "signalPoll":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_2
.end method

.method public declared-synchronized startWifiOffloadHandler()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 871
    monitor-enter p0

    :try_start_0
    const-string v4, "WifiHtcOffload"

    const-string v5, "startWifiOffloadHandler()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    sget-boolean v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v4, :cond_2

    .line 873
    :cond_0
    const-string v4, "WifiHtcOffload"

    const-string v5, "startOffloadHanlder()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "WifiOffloadThread"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 875
    .local v0, "offloadHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 876
    new-instance v4, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;-><init>(Lcom/android/server/wifi/WifiHtcOffload;Landroid/os/Looper;)V

    sput-object v4, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    .line 881
    .end local v0    # "offloadHandlerThread":Landroid/os/HandlerThread;
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    if-eqz v4, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiHtcOffload;->getpersistWifiOffloadEnabled()I

    move-result v1

    .line 883
    .local v1, "ret":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    .line 888
    if-lez v1, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    .line 890
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    sput-boolean v2, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    .line 891
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/WifiHtcOffload;->setMobileNetworkType(Ljava/lang/String;)Z

    .line 893
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 898
    .end local v1    # "ret":I
    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    .line 879
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    sput-object v4, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 871
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "ret":I
    :cond_3
    move v4, v3

    .line 883
    goto :goto_1

    :cond_4
    move v2, v3

    .line 888
    goto :goto_2

    .line 896
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setWifiOffloadEnabledCommand(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public stopWifiOffloadHandler()V
    .locals 2

    .prologue
    .line 859
    const-string v0, "WifiHtcOffload"

    const-string v1, "stopOffloadHanlder()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    sget-object v0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    if-eqz v0, :cond_0

    .line 861
    const-string v0, "WifiHtcOffload"

    const-string v1, "quit OffloadHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget-object v0, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 864
    :cond_0
    return-void
.end method

.method public triggerOffloadNotification(Z)Z
    .locals 5
    .param p1, "findAP"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    const-string v0, "WifiHtcOffload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerOffloadNotification ()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "WifiHtcOffload"

    const-string v1, "mStartOffloadNotification is true, check network selection result..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    .line 398
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    if-eqz v0, :cond_2

    .line 399
    const-string v0, "WifiHtcOffload"

    const-string v1, "Network selection didn\'t find roaming AP, trigger WiFioffloadNotification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiHtcOffload;->sendErrorBroadcast(I)V

    .line 406
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    if-eqz v0, :cond_1

    .line 407
    const-string v0, "WifiHtcOffload"

    const-string v1, "WiFioffload: mStartOffload is true, check network selection result..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    .line 409
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    if-eqz v0, :cond_3

    .line 410
    const-string v0, "WifiHtcOffload"

    const-string v1, "Network selection didn\'t find roaming AP, trigger WiFioffload"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiHtcOffload;->startWifiOffload(Z)Z

    .line 417
    :cond_1
    :goto_1
    return v4

    .line 403
    :cond_2
    const-string v0, "WifiHtcOffload"

    const-string v1, "Network selection find candidate AP, NOT trigger WiFioffloadNotification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_3
    const-string v0, "WifiHtcOffload"

    const-string v1, "Network selection find candidate AP, NOT trigger WiFioffload"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
