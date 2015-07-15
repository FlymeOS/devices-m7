.class public Lcom/android/server/wifi/WifiHtcNetworkSelection;
.super Ljava/lang/Object;
.source "WifiHtcNetworkSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiHtcNetworkSelection$WirelessDisplayManager;,
        Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x24000

.field private static final DATABASE_AGING_SEC:J = 0x278d00L

.field public static final NETWORK_HIGH_TXPER_ACTION:Ljava/lang/String; = "android.net.wifi.HIGH_TXPER_ACTION"

.field private static final NETWORK_SELECTION_VERSION:Ljava/lang/String; = "1.1"

.field private static final PROPERTY_NETWORK_SELECTION_SUPPORTED:Ljava/lang/String; = "persist.wifi.network_selection"

.field private static final TAG:Ljava/lang/String; = "WifiHtcNetworkSelection"

.field public static mDisconnectReason:I

.field public static mHaveIpAddressTime:J

.field public static mHtcNetworkSelectionFeature:Z

.field public static mHtcNetworkSelectionRoamToOtherSsid:Z

.field public static mHtcNsRoamTime:I

.field public static mHtcNsScoreDiff:I

.field public static mHtcNsTopScoreDiff:I

.field public static mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

.field private static prev_bssid:Ljava/lang/String;

.field private static prev_ssid:Landroid/net/wifi/WifiSsid;

.field private static roamToTopScoreAP_Time:J


# instance fields
.field db:Lcom/android/server/wifi/WifiApDatabaseHandler;

.field private mAvgRSSI:I

.field private mAvgTxRate:I

.field private mBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtA2dpConnected:Z

.field private mBtScoConnected:Z

.field private mContext:Landroid/content/Context;

.field private mEnableAPDatabase:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mInterfaceName:Ljava/lang/String;

.field private mLastLinkspeed:I

.field private mLinkspeedCount:J

.field private mLinkspeedSum:J

.field private mMaxRSSI:I

.field private mMaxTxRate:I

.field private mMinRSSI:I

.field private mMinTxRate:I

.field private mMirrorStatus:Z

.field private mP2pIsConnected:Z

.field private mRSSIRecords:[I

.field private mRSSIcount:I

.field private mScanAlwaysAvailableMode:Z

.field private mScreenOn:Z

.field private mStartTXCount:I

.field public mSwitchSSID:Z

.field private mTXpacketCount:J

.field private mWDManager:Lcom/android/server/wifi/WifiHtcNetworkSelection$WirelessDisplayManager;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateConnected:Z

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP_Time:J

    .line 152
    sput-boolean v2, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    .line 153
    sput-boolean v2, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionRoamToOtherSsid:Z

    .line 154
    const/4 v0, 0x6

    sput v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsScoreDiff:I

    .line 155
    const/4 v0, 0x3

    sput v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsTopScoreDiff:I

    .line 156
    const/16 v0, 0x1770

    sput v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsRoamTime:I

    .line 166
    sput v2, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mDisconnectReason:I

    .line 171
    sput-object v3, Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_bssid:Ljava/lang/String;

    .line 172
    sput-object v3, Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_ssid:Landroid/net/wifi/WifiSsid;

    .line 174
    sput-object v3, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiNative;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p4, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p5, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p6, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v3, 0x0

    const v2, 0x1869f

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWDManager:Lcom/android/server/wifi/WifiHtcNetworkSelection$WirelessDisplayManager;

    .line 106
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mP2pIsConnected:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBtA2dpConnected:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBtScoConnected:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMirrorStatus:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateConnected:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mScanAlwaysAvailableMode:Z

    .line 123
    iput v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLastLinkspeed:I

    .line 124
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mEnableAPDatabase:Z

    .line 125
    iput v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    .line 126
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    .line 127
    iput v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    .line 128
    const v0, -0x1869f

    iput v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxRSSI:I

    .line 129
    iput v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinRSSI:I

    .line 132
    iput v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mStartTXCount:I

    .line 144
    iput-object v3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBlacklist:Ljava/util/ArrayList;

    .line 168
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mSwitchSSID:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mScreenOn:Z

    .line 193
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mInterfaceName:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 196
    iput-object p4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 197
    iput-object p5, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 198
    iput-object p6, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 199
    return-void

    .line 126
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_bssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 88
    sput-object p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_bssid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Landroid/net/wifi/WifiSsid;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_ssid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 88
    sput-object p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_ssid:Landroid/net/wifi/WifiSsid;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Lcom/android/server/wifi/WifiHtcOffload;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiHtcNetworkSelection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiHtcNetworkSelection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBtA2dpConnected:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/wifi/WifiHtcNetworkSelection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBtScoConnected:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/wifi/WifiHtcNetworkSelection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiHtcNetworkSelection;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mP2pIsConnected:Z

    return p1
.end method

.method private addNewDBRecord()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    .line 768
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "WifiApDatabaseHandler, WiFi AP database Inserting .."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 770
    .local v6, "t":Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v6, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 774
    .local v5, "systemTime":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiApDatabaseHandler;->isDuplicate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "This record is existed, only update it..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v7, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    new-instance v0, Lcom/android/server/wifi/APRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\""

    const-string v8, ""

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->fetchCapability()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/android/server/wifi/WifiApDatabaseHandler;->updateConnectedAP(Lcom/android/server/wifi/APRecords;)I

    .line 781
    iget-object v7, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    new-instance v0, Lcom/android/server/wifi/APRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\""

    const-string v8, ""

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->fetchCapability()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/android/server/wifi/WifiApDatabaseHandler;->updateConnectedAP(Lcom/android/server/wifi/APRecords;)I

    .line 793
    :goto_0
    const v0, -0x1869f

    iput v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxRSSI:I

    .line 794
    const v0, 0x1869f

    iput v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinRSSI:I

    .line 795
    iput v3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinTxRate:I

    iput v3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxTxRate:I

    .line 796
    const/16 v0, 0x36

    iput v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    .line 797
    iput-wide v12, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mTXpacketCount:J

    .line 798
    iput v3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    .line 799
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v11, 0x4

    aput v3, v10, v11

    aput v3, v8, v9

    aput v3, v4, v7

    aput v3, v1, v2

    aput v3, v0, v3

    .line 800
    iput v3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    .line 801
    iput-wide v12, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    .line 802
    iput-wide v12, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    .line 803
    const/16 v0, 0x270f

    iput v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLastLinkspeed:I

    .line 804
    return-void

    .line 787
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    new-instance v0, Lcom/android/server/wifi/APRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\""

    const-string v8, ""

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->fetchCapability()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/android/server/wifi/WifiApDatabaseHandler;->addConnectedAP(Lcom/android/server/wifi/APRecords;)V

    .line 789
    iget-object v7, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    new-instance v0, Lcom/android/server/wifi/APRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\""

    const-string v8, ""

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->fetchCapability()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/android/server/wifi/WifiApDatabaseHandler;->addConnectedAP(Lcom/android/server/wifi/APRecords;)V

    goto/16 :goto_0
.end method

.method private fetchCapability()Ljava/lang/String;
    .locals 8

    .prologue
    .line 745
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "fetchCapability()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v4, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 748
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_0

    .line 749
    const-string v4, "WifiHtcNetworkSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchCapability(), capabilities = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 764
    :goto_0
    return-object v4

    .line 756
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, v4, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 757
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 758
    .local v2, "result":Landroid/net/wifi/ScanResult;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    const-string v4, "WifiHtcNetworkSelection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchCapability(), capabilities = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    monitor-exit v5

    goto :goto_0

    .line 763
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    const-string v4, "UNKNOWN"

    goto :goto_0
.end method

.method public static handleStartNetworkSelection(Z)V
    .locals 5
    .param p0, "reconnect"    # Z

    .prologue
    const/4 v1, 0x0

    .line 543
    const-string v0, "WifiHtcNetworkSelection"

    const-string v2, "handleStartNetworkSelection()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-object v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    if-eqz v0, :cond_0

    .line 545
    sget-object v2, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    sget-object v3, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    const v4, 0x240cf

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 545
    goto :goto_0
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 1452
    array-length v1, p2

    .line 1454
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1456
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1455
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1462
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->loge(Ljava/lang/String;)V

    .line 1463
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "set"    # Ljava/util/BitSet;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 1435
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1436
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1440
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 1441
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1442
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1445
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 1446
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1448
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private sendErrorBroadcast(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 1130
    const-string v1, "WifiHtcNetworkSelection"

    const-string v2, "sendErrorBroadcast()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1133
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1134
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1135
    return-void
.end method

.method private setIntentReceiver_WifiNetwSelect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 918
    new-instance v0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;-><init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1000
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1001
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.HIGH_TXPER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1018
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiNative;->setMirrorStatusCommand(Z)Z

    .line 1020
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiHtcNetworkSelection$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection$2;-><init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1034
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiNative;->setBtA2dp(Z)Z

    .line 1035
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiHtcNetworkSelection$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection$3;-><init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1066
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiNative;->setBtSco(Z)Z

    .line 1067
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiHtcNetworkSelection$4;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection$4;-><init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1096
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiNative;->setP2pConnected(Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiHtcNetworkSelection$5;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection$5;-><init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1119
    return-void
.end method


# virtual methods
.method public CanUseHtcRoaming()Z
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMirrorStatus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mP2pIsConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBtA2dpConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBtScoConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DatabaseAging(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/APRecords;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 808
    .local p1, "apRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/APRecords;>;"
    const-string v9, "WifiHtcNetworkSelection"

    const-string v10, "DatabaseAging()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 812
    .local v6, "recentTime":J
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/APRecords;

    .line 813
    .local v0, "apr":Lcom/android/server/wifi/APRecords;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 814
    .local v5, "t":Landroid/text/format/Time;
    invoke-virtual {v0}, Lcom/android/server/wifi/APRecords;->getConnectedTime()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 815
    .local v8, "timeStr":[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Landroid/text/format/Time;->set(III)V

    .line 817
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    sub-long v2, v6, v10

    .line 818
    .local v2, "diffTime":J
    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    const-wide/32 v12, 0x278d00

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 819
    const-string v9, "WifiHtcNetworkSelection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WifiApDatabaseHandler, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/server/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " date:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/server/wifi/APRecords;->getConnectedTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " record is expired. Remove this record... "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    invoke-virtual {v0}, Lcom/android/server/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiApDatabaseHandler;->removeRecord(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    .end local v0    # "apr":Lcom/android/server/wifi/APRecords;
    .end local v2    # "diffTime":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "t":Landroid/text/format/Time;
    .end local v8    # "timeStr":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "WifiHtcNetworkSelection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to Database Aging: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public addNewDBRecord_NetworkSelection(Z)V
    .locals 2
    .param p1, "bssidChanged"    # Z

    .prologue
    .line 495
    sget-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mEnableAPDatabase:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 496
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "addNewDBRecord_NetworkSelection()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->addNewDBRecord()V

    .line 499
    :cond_0
    return-void
.end method

.method public getRssiThresholdMin(I)I
    .locals 1
    .param p1, "freq"    # I

    .prologue
    .line 465
    const/16 v0, 0xfa0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    sget v0, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_5G_THRESHOLD_MIN:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    sget v0, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_24G_THRESHOLD_MIN:I

    goto :goto_0
.end method

.method public getTopScoreApNetId(Ljava/util/List;Ljava/lang/String;)I
    .locals 16
    .param p2, "ignore_SSID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1180
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v11, -0x1

    .line 1182
    .local v11, "topScoreApNetId":I
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + getTopScoreApNetId, ignore_SSID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1183
    if-nez p1, :cond_0

    const-string v13, "[ScoreAP] + list is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    const/4 v13, -0x1

    .line 1431
    :goto_0
    return v13

    .line 1184
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "[ScoreAP] + list size is 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    const/4 v13, -0x1

    goto :goto_0

    .line 1186
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v12

    .line 1188
    .local v12, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + wifi state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_2

    .line 1190
    const-string v13, "[ScoreAP] + wifi state is not enabled"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1191
    const/4 v13, -0x1

    goto :goto_0

    .line 1194
    :cond_2
    if-nez v12, :cond_3

    .line 1195
    const-string v13, "[ScoreAP] + No config profile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1196
    const/4 v13, -0x1

    goto :goto_0

    .line 1199
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + wifiConfigs: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1200
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 1201
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + tmpWifiConfig: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1200
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1205
    :cond_4
    const-string v13, "persist.sys.cne.rssidrop"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1207
    .local v3, "cneRssiDropThreshold":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-ge v7, v13, :cond_5

    .line 1208
    const/4 v13, -0x1

    if-le v11, v13, :cond_6

    .line 1430
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + getTopScoreApNetId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    move v13, v11

    .line 1431
    goto/16 :goto_0

    .line 1209
    :cond_6
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1210
    const-string v13, "[ScoreAP] + ignore SSID. Skipping"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1207
    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1235
    :cond_8
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget v14, v13, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget v13, v13, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->getRssiThresholdMin(I)I

    move-result v13

    if-gt v14, v13, :cond_9

    .line 1236
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + ignore RSSI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget v13, v13, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " <= Threshold: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget v13, v13, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->getRssiThresholdMin(I)I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Skipping"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1425
    .end local v3    # "cneRssiDropThreshold":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v12    # "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_0
    move-exception v4

    .line 1426
    .local v4, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + Error in getTopScoreApNetId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1427
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 1241
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "cneRssiDropThreshold":I
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    .restart local v12    # "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_9
    :try_start_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    :goto_4
    if-ltz v6, :cond_7

    .line 1242
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 1243
    .local v10, "tmpWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v13, :cond_b

    .line 1244
    const-string v13, "[ScoreAP] + Got null wifi configuration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1241
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1246
    :cond_b
    iget v13, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 1247
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + skip disabled SSID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1267
    :cond_c
    iget-object v13, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v14, "\""

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v13

    if-eqz v13, :cond_a

    .line 1268
    const/4 v5, 0x0

    .line 1271
    .local v5, "findAP":Z
    :try_start_3
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v9

    .line 1272
    .local v9, "securityType":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + Found same SSID in tmpWifiConfig.networkId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", SSID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Security:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", ScanAP:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1359
    packed-switch v9, :pswitch_data_0

    .line 1413
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + Invalid AuthType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->loge(Ljava/lang/String;)V

    .line 1416
    :cond_d
    :goto_6
    if-eqz v5, :cond_a

    .line 1417
    iget v11, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1418
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + tmpWifiConfig.networkId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", SSID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Security:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1275
    .end local v9    # "securityType":I
    :catch_1
    move-exception v4

    .line 1277
    .local v4, "e":Ljava/lang/IllegalStateException;
    iget-object v13, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v14, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, "allowedKeyManagementString":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + Found same SSID and multiple Auth type, Security:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1280
    const-string v13, " "

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, "authStr":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_7
    array-length v13, v2

    if-ge v8, v13, :cond_a

    .line 1284
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + Multi-Security:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v2, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    .line 1285
    aget-object v13, v2, v8

    sget-object v14, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1286
    .restart local v9    # "securityType":I
    packed-switch v9, :pswitch_data_1

    .line 1343
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + Invalid AuthType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->loge(Ljava/lang/String;)V

    .line 1347
    :cond_e
    :goto_8
    if-eqz v5, :cond_13

    .line 1348
    iget v11, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1349
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ScoreAP] + tmpWifiConfig.networkId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", SSID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Security:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v2, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1289
    :pswitch_0
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    if-nez v13, :cond_10

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_10

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "[ESS]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "[WPS][ESS]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1291
    :cond_f
    const/4 v5, 0x1

    .line 1293
    :cond_10
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    if-eqz v13, :cond_e

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WEP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1296
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 1300
    :pswitch_1
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA-PSK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_11

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA2-PSK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1303
    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 1306
    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA-EAP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA2-EAP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1309
    :cond_12
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 1312
    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "IEEE8021X"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1313
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 1316
    :pswitch_4
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA2-PSK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1317
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 1283
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 1362
    .end local v1    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v2    # "authStr":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .end local v8    # "k":I
    :pswitch_5
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    if-nez v13, :cond_15

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_15

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "[ESS]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "[WPS][ESS]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1364
    :cond_14
    const/4 v5, 0x1

    .line 1366
    :cond_15
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    if-eqz v13, :cond_d

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_d

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WEP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1368
    const/4 v5, 0x1

    goto/16 :goto_6

    .line 1372
    :pswitch_6
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_d

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA-PSK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA2-PSK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1374
    :cond_16
    const/4 v5, 0x1

    goto/16 :goto_6

    .line 1377
    :pswitch_7
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_d

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA-EAP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA2-EAP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1379
    :cond_17
    const/4 v5, 0x1

    goto/16 :goto_6

    .line 1382
    :pswitch_8
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_d

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "IEEE8021X"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1383
    const/4 v5, 0x1

    goto/16 :goto_6

    .line 1386
    :pswitch_9
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v13, :cond_d

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    iget-object v13, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v14, "WPA2-PSK"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v13

    if-eqz v13, :cond_d

    .line 1387
    const/4 v5, 0x1

    goto/16 :goto_6

    .line 1359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1286
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getWifiNsPersistState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 883
    const-string v2, "persist.wifi.network_selection"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 884
    const-string v1, "WifiHtcNetworkSelection"

    const-string v2, "Enable roamToTopScoreAP by property(persist.wifi.network_selection)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    sput-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    .line 886
    sput-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionRoamToOtherSsid:Z

    .line 889
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public handleDisconnectReason(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 536
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "handleDisconnectReason()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v0, :cond_0

    .line 538
    sput p1, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mDisconnectReason:I

    .line 540
    :cond_0
    return-void
.end method

.method public handleTXPer_NetworkSelection()V
    .locals 4

    .prologue
    .line 202
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "handleTXPer_NetworkSelection()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "NETWORK_HIGH_TXPER_EVENT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "Not get IP address yet, shall not do WiFioffload"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHaveIpAddressTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 208
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "Just got IP address, shall not do WiFioffload"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionRoamToOtherSsid:Z

    if-eqz v0, :cond_3

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP(Z)Z

    goto :goto_0

    .line 212
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP(Z)Z

    goto :goto_0
.end method

.method public haveIpAddressTime(J)V
    .locals 3
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 529
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "haveIpAddressTime()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v0, :cond_0

    .line 531
    sput-wide p1, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHaveIpAddressTime:J

    .line 533
    :cond_0
    return-void
.end method

.method public initWifiNetworkSelection(Lcom/android/server/wifi/WifiHtcOffload;)V
    .locals 7
    .param p1, "wifiHtcOffload"    # Lcom/android/server/wifi/WifiHtcOffload;

    .prologue
    const/4 v6, 0x1

    .line 551
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "initWifiNetworkSelection()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    .line 554
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBlacklist:Ljava/util/ArrayList;

    .line 556
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "Network selection version: 1.1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v4, "persist.wifi.network_selection"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 559
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "Enable Network-Selection by property(persist.wifi.network_selection)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sput-boolean v6, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    .line 561
    sput-boolean v6, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionRoamToOtherSsid:Z

    .line 571
    :cond_0
    const/4 v4, 0x6

    sput v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsScoreDiff:I

    .line 572
    const/4 v4, 0x3

    sput v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsTopScoreDiff:I

    .line 573
    const/16 v4, 0x1770

    sput v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsRoamTime:I

    .line 574
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mEnableAPDatabase:Z

    .line 581
    new-instance v4, Lcom/android/server/wifi/WifiApDatabaseHandler;

    iget-object v5, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/wifi/WifiApDatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    .line 583
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "WifiApDatabaseHandler, Reading all connected AP.."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiApDatabaseHandler;->getAllConnectedAP()Ljava/util/List;

    move-result-object v3

    .line 585
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/APRecords;>;"
    if-eqz v3, :cond_1

    .line 587
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/APRecords;

    .line 588
    .local v0, "apr":Lcom/android/server/wifi/APRecords;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID_Encrypt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wifi/APRecords;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,BSSID_Encrypt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,FREQ: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wifi/APRecords;->getFREQ()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,Security: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wifi/APRecords;->getSecurity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "log":Ljava/lang/String;
    const-string v4, "WifiHtcNetworkSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiApDatabaseHandler, Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    .end local v0    # "apr":Lcom/android/server/wifi/APRecords;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "log":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->setIntentReceiver_WifiNetwSelect()V

    .line 599
    return-void
.end method

.method public isBssidChanged_NetworkSelection(Lcom/android/server/wifi/StateChangeResult;)Z
    .locals 9
    .param p1, "stateChangeResult"    # Lcom/android/server/wifi/StateChangeResult;

    .prologue
    .line 469
    const-string v5, "WifiHtcNetworkSelection"

    const-string v6, "isBssidChanged_NetworkSelection()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "bssidChanged":Z
    sget-boolean v5, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v5, :cond_0

    .line 472
    const-string v5, "WifiHtcNetworkSelection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SupplicantState.ASSOCIATING "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v5, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 475
    iget-object v5, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    const-string v6, "00:00:00:00:00:00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 477
    const-string v5, "WifiHtcNetworkSelection"

    const-string v6, "BSSID was changed, update WiFi database"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x1

    .line 479
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 480
    .local v3, "t":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "systemTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "disconnectedRSSI":Ljava/lang/String;
    const-string v4, "By DRIVER"

    .line 486
    .local v4, "whyDisconnected":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    new-instance v6, Lcom/android/server/wifi/APRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1, v2, v4}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiApDatabaseHandler;->updateConnectedAP(Lcom/android/server/wifi/APRecords;)I

    .line 487
    iget-object v5, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    new-instance v6, Lcom/android/server/wifi/APRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1, v2, v4}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiApDatabaseHandler;->updateConnectedAP(Lcom/android/server/wifi/APRecords;)I

    .line 491
    .end local v1    # "disconnectedRSSI":Ljava/lang/String;
    .end local v2    # "systemTime":Ljava/lang/String;
    .end local v3    # "t":Landroid/text/format/Time;
    .end local v4    # "whyDisconnected":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "WifiHtcNetworkSelection"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v0, "WifiHtcNetworkSelection"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public notifyMirrorStatus()V
    .locals 2

    .prologue
    .line 519
    monitor-enter p0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWDManager:Lcom/android/server/wifi/WifiHtcNetworkSelection$WirelessDisplayManager;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWDManager:Lcom/android/server/wifi/WifiHtcNetworkSelection$WirelessDisplayManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection$WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setMirrorStatusCommand(Z)Z

    .line 523
    :cond_0
    monitor-exit p0

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public roamToTopScoreAP(Z)Z
    .locals 24
    .param p1, "reconnect"    # Z

    .prologue
    .line 231
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "roamToTopScoreAP()"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v8, 0x0

    .line 238
    .local v8, "hasRoamingAP":Z
    const/4 v15, 0x0

    .line 240
    .local v15, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    sget-boolean v19, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->CanUseHtcRoaming()Z

    move-result v19

    if-nez v19, :cond_2

    .line 242
    :cond_0
    sget-boolean v19, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-nez v19, :cond_1

    .line 243
    const-string v19, "WifiHtcNetworkSelection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "roamToTopScoreAP: Network Selection feature is disabled: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v9, v8

    .line 460
    .end local v8    # "hasRoamingAP":Z
    .local v9, "hasRoamingAP":I
    :goto_1
    return v9

    .line 245
    .end local v9    # "hasRoamingAP":I
    .restart local v8    # "hasRoamingAP":Z
    :cond_1
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "roamToTopScoreAP: Cannot do Network Selection, due to scan-only-mode, bt-sco, bt-a2dp, p2p or mirror state is connected"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v15

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v19, v0

    sget-boolean v19, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v19

    const-string v20, "00:00:00:00:00:00"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 254
    :cond_3
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "BSSID is 00:00:00:00:00:00"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 255
    .restart local v9    # "hasRoamingAP":I
    goto :goto_1

    .line 256
    .end local v9    # "hasRoamingAP":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v19, v0

    sget-boolean v19, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    if-eqz v19, :cond_5

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_bssid:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_ssid:Landroid/net/wifi/WifiSsid;

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 260
    :cond_5
    const-string v19, "WifiHtcNetworkSelection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + roamToTopScoreAP: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\""

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sget-wide v22, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP_Time:J

    sub-long v20, v20, v22

    sget v19, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsRoamTime:I

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-gez v19, :cond_6

    .line 263
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + Roaming too often. Comeback later..."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 264
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 267
    .end local v9    # "hasRoamingAP":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiApDatabaseHandler;->getAllConnectedAP()Ljava/util/List;

    move-result-object v4

    .line 268
    .local v4, "apRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/APRecords;>;"
    if-nez v4, :cond_7

    .line 269
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + apRecords is null, Comeback later..."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 270
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 273
    .end local v9    # "hasRoamingAP":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->DatabaseAging(Ljava/util/List;)V

    .line 275
    if-eqz v15, :cond_8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_9

    .line 276
    :cond_8
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + ScanResults is null, Comeback later..."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 277
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 280
    .end local v9    # "hasRoamingAP":I
    :cond_9
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v17, "scoreScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 282
    .local v14, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 283
    const-string v19, "WifiHtcNetworkSelection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + Not add Blacklist BSSID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to NetworkSelection"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 285
    :cond_a
    new-instance v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 289
    .end local v14    # "result":Landroid/net/wifi/ScanResult;
    :cond_b
    if-eqz v17, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_d

    .line 290
    :cond_c
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + scoreScanResults is null, Comeback later..."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 291
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 294
    .end local v9    # "hasRoamingAP":I
    :cond_d
    new-instance v16, Lcom/android/server/wifi/ScoreHelper;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/ScoreHelper;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 295
    .local v16, "score":Lcom/android/server/wifi/ScoreHelper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ScoreHelper;->setWifiConfigurationList(Ljava/util/List;)V

    .line 297
    const/4 v12, 0x0

    .line 299
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/ScoreHelper;->computeScore()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 305
    if-nez v12, :cond_e

    move v9, v8

    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 300
    .end local v9    # "hasRoamingAP":I
    :catch_0
    move-exception v7

    .line 301
    .local v7, "e":Ljava/lang/Exception;
    const-string v19, "WifiHtcNetworkSelection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + Error in computeScore: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 302
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 307
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "hasRoamingAP":I
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->fetchCapability()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UNKNOWN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->fetchCapability()Ljava/lang/String;

    move-result-object v18

    .line 310
    .local v18, "security_type":Ljava/lang/String;
    if-nez v18, :cond_12

    .line 311
    const-string v18, "UNKNOWN"

    .line 329
    :goto_3
    const-string v19, "UNKNOWN"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    const-string v20, "\""

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/ScoreHelper;->computeScore(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 335
    .end local v18    # "security_type":Ljava/lang/String;
    :cond_f
    :goto_4
    if-nez v12, :cond_1e

    .line 336
    const-string v19, "WifiHtcNetworkSelection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + No AP with SSID named "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\""

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is found."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_10
    :goto_5
    if-eqz p1, :cond_11

    .line 430
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + Force connect to top scored AP regardless SSID. Current AP sucks!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v20

    const-string v21, "\""

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->getTopScoreApNetId(Ljava/util/List;Ljava/lang/String;)I

    move-result v13

    .line 432
    .local v13, "netId":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v13, v0, :cond_2f

    .line 433
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + Got candidate AP"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v8, 0x1

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiHtcOffload;->getWifiOffloadFirstTime()Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 446
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + It\'s first time, send OFFLOAD_NOTIFICATION_EVENT"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mSwitchSSID:Z

    .line 448
    const/16 v19, 0x17

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->sendErrorBroadcast(I)V

    .end local v13    # "netId":I
    :cond_11
    :goto_6
    move v9, v8

    .line 460
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 312
    .end local v9    # "hasRoamingAP":I
    .restart local v18    # "security_type":Ljava/lang/String;
    :cond_12
    const-string v19, "WPA-PSK"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_13

    const-string v19, "WPA2-PSK"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 313
    :cond_13
    const-string v18, "WPA"

    goto/16 :goto_3

    .line 314
    :cond_14
    const-string v19, "WEP"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 315
    const-string v18, "WEP"

    goto/16 :goto_3

    .line 316
    :cond_15
    const-string v19, "WPA-EAP"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_16

    const-string v19, "WPA2-EAP"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 317
    :cond_16
    const-string v18, "WPA-EAP"

    goto/16 :goto_3

    .line 318
    :cond_17
    const-string v19, "IEEE8021X"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 319
    const-string v18, "IEEE8021X"

    goto/16 :goto_3

    .line 320
    :cond_18
    const-string v19, "WAPI-CERT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 321
    const-string v18, "WAPI-CERT"

    goto/16 :goto_3

    .line 322
    :cond_19
    const-string v19, "CCKM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 323
    const-string v18, "CCKM"

    goto/16 :goto_3

    .line 324
    :cond_1a
    const-string v19, "[ESS]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1b

    const-string v19, "[WPS][ESS]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 325
    :cond_1b
    const-string v18, "OPEN"

    goto/16 :goto_3

    .line 327
    :cond_1c
    const-string v18, "UNKNOWN"

    goto/16 :goto_3

    .line 333
    .end local v18    # "security_type":Ljava/lang/String;
    :cond_1d
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + Can\'t fetchCapability"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 338
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v19, v0

    sget-boolean v19, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    if-eqz v19, :cond_23

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_23

    .line 340
    const/4 v6, 0x0

    .line 342
    .local v6, "chartTop":Lcom/android/server/wifi/ScoreChart;
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "Try to select suitable AP....."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v11, 0x0

    .local v11, "idx":I
    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_22

    .line 344
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_20

    .line 343
    :cond_1f
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 351
    :cond_20
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v20, v0

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->getRssiThresholdMin(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v21, v0

    sget v21, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_HYSTERESIS:I

    add-int v19, v19, v21

    move/from16 v0, v20

    move/from16 v1, v19

    if-gt v0, v1, :cond_21

    .line 352
    const-string v20, "WifiHtcNetworkSelection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " RSSI="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v20, "WifiHtcNetworkSelection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] RSSI <= "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->getRssiThresholdMin(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v22, v0

    sget v22, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_HYSTERESIS:I

    add-int v19, v19, v22

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ", drop this candidate"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 359
    :cond_21
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "chartTop":Lcom/android/server/wifi/ScoreChart;
    check-cast v6, Lcom/android/server/wifi/ScoreChart;

    .line 360
    .restart local v6    # "chartTop":Lcom/android/server/wifi/ScoreChart;
    if-eqz v6, :cond_1f

    .line 364
    :cond_22
    if-eqz v6, :cond_10

    .line 365
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "3g->wifi, found suitable AP to connect"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v20, "WifiHtcNetworkSelection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " RSSI="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->selectBSSIDCommand(Ljava/lang/String;)Z

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sput-wide v20, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP_Time:J

    .line 369
    const/4 v8, 0x1

    move v9, v8

    .line 370
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 373
    .end local v6    # "chartTop":Lcom/android/server/wifi/ScoreChart;
    .end local v9    # "hasRoamingAP":I
    .end local v11    # "idx":I
    :cond_23
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_24

    .line 374
    const-string v19, "WifiHtcNetworkSelection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + No alternative AP to roam except current AP ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "],\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\""

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 376
    :cond_24
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2d

    .line 377
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + Current AP is not top scored. Checking the scores of top 2 AP."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\""

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScoreChart;

    .line 379
    .local v5, "chartCurrent":Lcom/android/server/wifi/ScoreChart;
    const/4 v6, 0x0

    .line 380
    .restart local v6    # "chartTop":Lcom/android/server/wifi/ScoreChart;
    const/4 v11, 0x0

    .line 381
    .restart local v11    # "idx":I
    const/4 v11, 0x0

    :goto_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_26

    .line 382
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_25

    .line 381
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 384
    :cond_25
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 397
    :cond_26
    :goto_b
    if-nez v5, :cond_29

    if-eqz v6, :cond_29

    .line 398
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + Current AP is gone. Not going to roam."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 402
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 386
    .end local v9    # "hasRoamingAP":I
    :cond_27
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v20, v0

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->getRssiThresholdMin(I)I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-gt v0, v1, :cond_28

    .line 387
    const-string v20, "WifiHtcNetworkSelection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " RSSI="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v20, "WifiHtcNetworkSelection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] RSSI: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " <= "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->getRssiThresholdMin(I)I

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ", drop this candidate"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 393
    :cond_28
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "chartTop":Lcom/android/server/wifi/ScoreChart;
    check-cast v6, Lcom/android/server/wifi/ScoreChart;

    .line 394
    .restart local v6    # "chartTop":Lcom/android/server/wifi/ScoreChart;
    goto/16 :goto_b

    .line 404
    :cond_29
    if-eqz v5, :cond_2c

    if-eqz v6, :cond_2c

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiHtcOffload;->getOffloadFlagStatus()Z

    move-result v19

    if-eqz v19, :cond_2a

    invoke-virtual {v6}, Lcom/android/server/wifi/ScoreChart;->Score()I

    move-result v19

    invoke-virtual {v5}, Lcom/android/server/wifi/ScoreChart;->Score()I

    move-result v20

    sub-int v19, v19, v20

    sget v20, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsTopScoreDiff:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2a

    .line 407
    const-string v20, "WifiHtcNetworkSelection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + Roaming to top scored AP: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " in WiFioffload case"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->selectBSSIDCommand(Ljava/lang/String;)Z

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sput-wide v20, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP_Time:J

    .line 410
    const/4 v8, 0x1

    move v9, v8

    .line 411
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 413
    .end local v9    # "hasRoamingAP":I
    :cond_2a
    invoke-virtual {v6}, Lcom/android/server/wifi/ScoreChart;->Score()I

    move-result v19

    invoke-virtual {v5}, Lcom/android/server/wifi/ScoreChart;->Score()I

    move-result v20

    sub-int v19, v19, v20

    sget v20, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsScoreDiff:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2b

    .line 414
    const-string v19, "WifiHtcNetworkSelection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + Top 2 AP\'s scores are too close ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/android/server/wifi/ScoreChart;->Score()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " vs "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/android/server/wifi/ScoreChart;->Score()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "). Not going to roam.  Diff:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNsScoreDiff:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 418
    :cond_2b
    const-string v20, "WifiHtcNetworkSelection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + Roaming to top scored AP: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->selectBSSIDCommand(Ljava/lang/String;)Z

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sput-wide v20, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP_Time:J

    .line 421
    const/4 v8, 0x1

    move v9, v8

    .line 422
    .restart local v9    # "hasRoamingAP":I
    goto/16 :goto_1

    .line 424
    .end local v9    # "hasRoamingAP":I
    :cond_2c
    const-string v20, "WifiHtcNetworkSelection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[ScoreAP] + No score available to "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\""

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "] or "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "["

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "]"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 427
    .end local v5    # "chartCurrent":Lcom/android/server/wifi/ScoreChart;
    .end local v6    # "chartTop":Lcom/android/server/wifi/ScoreChart;
    .end local v11    # "idx":I
    :cond_2d
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + No need to roam. Current AP is good."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 451
    .restart local v13    # "netId":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->selectNetworkNoDisableOther(I)Z

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->transitionToDisconnectingState()V

    goto/16 :goto_6

    .line 456
    :cond_2f
    const-string v19, "WifiHtcNetworkSelection"

    const-string v20, "[ScoreAP] + Cannot reconnect to any AP. Nothing match or nothing in configured AP List"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public saveLinkSpeed_NetworkSelection(I)V
    .locals 4
    .param p1, "newLinkSpeed"    # I

    .prologue
    .line 604
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "saveLinkSpeed_NetworkSelection()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sget-boolean v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v0, :cond_0

    .line 606
    iget-wide v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    .line 607
    iget-wide v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    .line 608
    const-string v0, "WifiHtcNetworkSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLinkSpeed_NetworkSelection mLinkspeedCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLinkspeedSum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    return-void
.end method

.method public saveRSSI_NetworkSelection()V
    .locals 30

    .prologue
    .line 613
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "saveRSSI_NetworkSelection()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sget-boolean v2, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mEnableAPDatabase:Z

    if-eqz v2, :cond_8

    .line 618
    const/16 v15, -0x63

    .line 619
    .local v15, "newRssi":I
    const/4 v14, 0x0

    .line 620
    .local v14, "newLinkSpeed":I
    const/16 v24, 0x0

    .line 621
    .local v24, "txper":I
    const-wide/16 v20, -0x1

    .line 622
    .local v20, "txPacket":J
    const-wide/16 v22, -0x1

    .line 623
    .local v22, "txRetry":J
    const-wide/16 v18, -0x1

    .line 624
    .local v18, "txFailed":J
    const/4 v10, 0x0

    .line 626
    .local v10, "isQCTWLAN":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v17

    .line 628
    .local v17, "signalPoll":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 629
    const-string v2, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 630
    .local v13, "lines":[Ljava/lang/String;
    move-object v8, v13

    .local v8, "arr$":[Ljava/lang/String;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_6

    aget-object v12, v8, v9

    .line 631
    .local v12, "line":Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 632
    .local v16, "prop":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 630
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 634
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v16, v2

    const-string v3, "RSSI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_1

    .line 636
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const-string v3, "LINKSPEED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 637
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_1

    .line 639
    :cond_3
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const-string v3, "tx packets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 640
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    goto :goto_1

    .line 641
    :cond_4
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const-string v3, "tx retries"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 642
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    goto :goto_1

    .line 643
    :cond_5
    const/4 v2, 0x0

    aget-object v2, v16, v2

    const-string v3, "tx failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    goto :goto_1

    .line 652
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "lines":[Ljava/lang/String;
    .end local v16    # "prop":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    if-ltz v2, :cond_9

    .line 653
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLastLinkspeed:I

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    aput v15, v2, v3

    .line 663
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_8

    .line 665
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    .line 668
    const-wide/16 v2, -0x1

    cmp-long v2, v20, v2

    if-nez v2, :cond_a

    const-wide/16 v2, -0x1

    cmp-long v2, v22, v2

    if-nez v2, :cond_a

    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_a

    .line 669
    const/4 v10, 0x0

    .line 677
    :goto_3
    if-eqz v10, :cond_10

    .line 679
    add-long v2, v20, v22

    add-long v2, v2, v18

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mTXpacketCount:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    .line 682
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mStartTXCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mStartTXCount:I

    .line 683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mStartTXCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    .line 684
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "[ScoreAP] + TX packet increase one time, don\'t update TX rate in DB"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_4
    add-long v2, v20, v22

    add-long v2, v2, v18

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mTXpacketCount:J

    .line 715
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    .line 742
    .end local v10    # "isQCTWLAN":Z
    .end local v14    # "newLinkSpeed":I
    .end local v15    # "newRssi":I
    .end local v17    # "signalPoll":Ljava/lang/String;
    .end local v18    # "txFailed":J
    .end local v20    # "txPacket":J
    .end local v22    # "txRetry":J
    .end local v24    # "txper":I
    :cond_8
    :goto_5
    return-void

    .line 657
    .restart local v10    # "isQCTWLAN":Z
    .restart local v14    # "newLinkSpeed":I
    .restart local v15    # "newRssi":I
    .restart local v17    # "signalPoll":Ljava/lang/String;
    .restart local v18    # "txFailed":J
    .restart local v20    # "txPacket":J
    .restart local v22    # "txRetry":J
    .restart local v24    # "txper":I
    :cond_9
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "reset all count because mRSSIcount is abnormal"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    .line 659
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIcount:I

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    move-object/from16 v27, v0

    const/16 v28, 0x4

    const/16 v29, 0x0

    aput v29, v27, v28

    aput v29, v25, v26

    aput v29, v6, v7

    aput v29, v4, v5

    aput v29, v2, v3

    goto/16 :goto_2

    .line 671
    :cond_a
    const-string v2, "WifiHtcNetworkSelection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ScoreAP] + current TXpacket:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-long v4, v20, v22

    add-long v4, v4, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTXpacketCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mTXpacketCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", avgLinkspeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mAvgTxRate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 686
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mStartTXCount:I

    .line 687
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxRSSI:I

    if-lt v15, v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxTxRate:I

    if-lt v14, v2, :cond_c

    .line 688
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxRSSI:I

    .line 689
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxTxRate:I

    .line 691
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinRSSI:I

    if-gt v15, v2, :cond_d

    .line 692
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinRSSI:I

    .line 693
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinTxRate:I

    .line 697
    :cond_d
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    .line 700
    const-string v2, "WifiHtcNetworkSelection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ScoreAP] + fetchRssiAndLinkSpeedNative: Update RSSI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and linkspeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    const/16 v3, -0x4b

    if-lt v2, v3, :cond_e

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    move-object/from16 v25, v0

    new-instance v2, Lcom/android/server/wifi/APRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxRSSI:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxTxRate:I

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiApDatabaseHandler;->updateConnectedAP(Lcom/android/server/wifi/APRecords;)I

    goto/16 :goto_4

    .line 706
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    move-object/from16 v25, v0

    new-instance v2, Lcom/android/server/wifi/APRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinRSSI:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinTxRate:I

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiApDatabaseHandler;->updateConnectedAP(Lcom/android/server/wifi/APRecords;)I

    goto/16 :goto_4

    .line 710
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mStartTXCount:I

    .line 711
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "[ScoreAP] + TX packet didn\'t send enough number, don\'t update TX rate in DB"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 719
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxRSSI:I

    if-lt v15, v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxTxRate:I

    if-lt v14, v2, :cond_11

    .line 720
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxRSSI:I

    .line 721
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxTxRate:I

    .line 723
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinRSSI:I

    if-gt v15, v2, :cond_12

    .line 724
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinRSSI:I

    .line 725
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinTxRate:I

    .line 729
    :cond_12
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    .line 730
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedCount:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mLinkspeedSum:J

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mRSSIRecords:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    .line 733
    const-string v2, "WifiHtcNetworkSelection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchRssiAndLinkSpeedNative: Update RSSI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and linkspeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    const/16 v3, -0x4b

    if-lt v2, v3, :cond_13

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    move-object/from16 v25, v0

    new-instance v2, Lcom/android/server/wifi/APRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxRSSI:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMaxTxRate:I

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiApDatabaseHandler;->updateConnectedAP(Lcom/android/server/wifi/APRecords;)I

    goto/16 :goto_5

    .line 738
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->db:Lcom/android/server/wifi/WifiApDatabaseHandler;

    move-object/from16 v25, v0

    new-instance v2, Lcom/android/server/wifi/APRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgRSSI:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mAvgTxRate:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinRSSI:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mMinTxRate:I

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/APRecords;-><init>(Ljava/lang/String;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiApDatabaseHandler;->updateConnectedAP(Lcom/android/server/wifi/APRecords;)I

    goto/16 :goto_5

    .line 646
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "lines":[Ljava/lang/String;
    .restart local v16    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public selectTopScoreAP()Z
    .locals 3

    .prologue
    .line 218
    const-string v1, "WifiHtcNetworkSelection"

    const-string v2, "selectTopScoreAP()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "findAP":Z
    sget-boolean v1, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiHtcOffload;->getOffloadFlagStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionRoamToOtherSsid:Z

    if-eqz v1, :cond_1

    .line 222
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP(Z)Z

    move-result v0

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public sendOffloadTriggerNotificationBroadcast(Z)V
    .locals 3
    .param p1, "findAP"    # Z

    .prologue
    .line 1123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.trigger_notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1125
    const-string v2, "findAP"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1126
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1127
    return-void

    .line 1125
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startWifiNetworkSelectionHandler()V
    .locals 3

    .prologue
    .line 898
    monitor-enter p0

    :try_start_0
    const-string v1, "WifiHtcNetworkSelection"

    const-string v2, "startNetworkSelectionHandler()..........starting"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiNetworkSelectionThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 900
    .local v0, "networkSelectionHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 901
    new-instance v1, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;-><init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    monitor-exit p0

    return-void

    .line 898
    .end local v0    # "networkSelectionHandlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopWifiNetworkSelectionHandler()V
    .locals 2

    .prologue
    .line 910
    const-string v0, "WifiHtcNetworkSelection"

    const-string v1, "stopNetworkSelectionHanlder()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    sget-object v0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 915
    return-void
.end method

.method public switchToBetterSsid(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "switchToBetterSsid()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mSwitchSSID:Z

    if-eqz v2, :cond_1

    .line 506
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mSwitchSSID:Z

    .line 507
    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP(Z)Z

    .line 511
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
