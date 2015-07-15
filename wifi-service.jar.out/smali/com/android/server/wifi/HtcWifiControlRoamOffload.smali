.class public Lcom/android/server/wifi/HtcWifiControlRoamOffload;
.super Ljava/lang/Object;
.source "HtcWifiControlRoamOffload.java"


# static fields
.field private static GSM_THRESHOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcWifiControlRoamOffload: "

.field public static enableOffload:Z

.field private static mobile_signalStrength:I


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtScoConnected:Z

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mInterfaceName:Ljava/lang/String;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

.field private mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->enableOffload:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mInterfaceName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 33
    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .line 34
    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    .line 36
    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mIntentFilter:Landroid/content/IntentFilter;

    .line 37
    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mBtScoConnected:Z

    .line 100
    new-instance v0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/HtcWifiControlRoamOffload$2;-><init>(Lcom/android/server/wifi/HtcWifiControlRoamOffload;)V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 45
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mInterfaceName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/HtcWifiControlRoamOffload;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiControlRoamOffload;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mBtScoConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcWifiControlRoamOffload;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcWifiControlRoamOffload;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiControlRoamOffload;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 25
    sput p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mobile_signalStrength:I

    return p0
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 131
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canHtcAllowGoogleToOffload()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "currentBSSID":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    sput v2, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mobile_signalStrength:I

    .line 140
    :cond_0
    const-string v2, "HtcWifiControlRoamOffload: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentBSSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Mobile Signal Strength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mobile_signalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " GSM THRESHOLD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->GSM_THRESHOLD:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v0, :cond_3

    .line 143
    sget-boolean v2, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->enableOffload:Z

    if-nez v2, :cond_2

    .line 149
    :cond_1
    :goto_0
    return v1

    .line 145
    :cond_2
    sget v2, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mobile_signalStrength:I

    sget v3, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->GSM_THRESHOLD:I

    if-lt v2, v3, :cond_1

    sget v2, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mobile_signalStrength:I

    const/16 v3, 0x63

    if-eq v2, v3, :cond_1

    .line 149
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canHtcUseGoogleAutoJoin(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "roamCandidate"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "currentBSSID":Ljava/lang/String;
    const-string v3, "HtcWifiControlRoamOffload: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "roamCandidate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "currentBSSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    if-eqz v3, :cond_3

    .line 158
    const-string v3, "HtcWifiControlRoamOffload: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " vh_wifi_to_mobile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    sget-boolean v5, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 161
    const-string v2, "HtcWifiControlRoamOffload: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use htc logic, avoid google logic to autojoin, currentBSSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roamCandidate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    sget-boolean v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    if-eqz v3, :cond_3

    .line 168
    :cond_2
    const-string v2, "HtcWifiControlRoamOffload: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use htc logic, avoid google logic to roam other ssid, currentBSSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vh_wifi_to_mobile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    sget-boolean v4, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifidisplayApEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    const-string v2, "HtcWifiControlRoamOffload: "

    const-string v3, "do not use googleAutoJoin since concurrent hotspot is enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getIPTState()Z

    move-result v3

    if-eq v3, v2, :cond_0

    move v1, v2

    .line 181
    goto :goto_0
.end method

.method public disableOffloadFeature()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v1, "HtcWifiControlRoamOffload: "

    const-string v2, "disableOffloadFeature"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sput-boolean v3, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->enableOffload:Z

    .line 126
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "wifi_watchdog_on"

    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 128
    return-void
.end method

.method public enableOffloadFeature()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    const-string v1, "HtcWifiControlRoamOffload: "

    const-string v2, "enableOffloadFeature"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sput-boolean v3, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->enableOffload:Z

    .line 117
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "wifi_watchdog_on"

    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 119
    return-void
.end method

.method public initHtcWifiControlRoamOffload(Lcom/android/server/wifi/WifiHtcNetworkSelection;Lcom/android/server/wifi/WifiHtcOffload;)V
    .locals 1
    .param p1, "ns"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;
    .param p2, "ol"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .line 52
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->setupControlRoamOffload_IntentReceiver()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mBtScoConnected:Z

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->enableOffload:Z

    .line 59
    const/16 v0, 0x8

    sput v0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->GSM_THRESHOLD:I

    .line 62
    const/16 v0, 0x16

    sput v0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mobile_signalStrength:I

    .line 63
    return-void
.end method

.method public setupControlRoamOffload_IntentReceiver()V
    .locals 5

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/HtcWifiControlRoamOffload$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/HtcWifiControlRoamOffload$1;-><init>(Lcom/android/server/wifi/HtcWifiControlRoamOffload;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 97
    .local v0, "phoneManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 98
    return-void
.end method
