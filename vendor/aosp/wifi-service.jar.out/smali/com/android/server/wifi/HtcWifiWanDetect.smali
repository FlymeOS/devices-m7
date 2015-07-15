.class public Lcom/android/server/wifi/HtcWifiWanDetect;
.super Ljava/lang/Object;
.source "HtcWifiWanDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/HtcWifiWanDetect$4;
    }
.end annotation


# static fields
.field public static final ACTION_LAN_DETECTION_RETRY:Ljava/lang/String; = "com.htc.wifi.LAN_DETECTION_RETRY"

.field private static final ACTION_SHOW_WAN_ERROR_DIALOG:Ljava/lang/String; = "com.htc.wifi.SHOW_WAN_ERROR_DIALOG"

.field public static final ACTION_WAN_DETECTION_RETRY:Ljava/lang/String; = "com.htc.wifi.WAN_DETECTION_RETRY"

.field private static final TAG:Ljava/lang/String; = "HtcWifiWanDetect"

.field private static final WAN_DETECTION_ENABLED:Ljava/lang/String; = "wan_detection_enabled"

.field private static final WAN_SOCKET_TIMEOUT_MS:I = 0x3a98


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mHtcLanDetectionEnabled:Z

.field private mHtcWanDetectionDialogEnabled:Z

.field private mHtcWanDetectionEnabled:Z

.field private mHtcWanDetectionFirstConnection:Z

.field private mIndicateWanError:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mInterfaceName:Ljava/lang/String;

.field private mMaxUrlCheckingCount:I

.field private mNetworkID:I

.field private mWifiConnected:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiWanErrorNotification:Landroid/app/Notification;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mInterfaceName:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 48
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 49
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIntentFilter:Landroid/content/IntentFilter;

    .line 50
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 57
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcLanDetectionEnabled:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionEnabled:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionDialogEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionFirstConnection:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiConnected:Z

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mMaxUrlCheckingCount:I

    .line 64
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIndicateWanError:Z

    .line 66
    iput v3, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mErrorCode:I

    .line 67
    iput v3, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mNetworkID:I

    .line 68
    iput-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 76
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->setupWanDetectReceiver()V

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/HtcWifiWanDetect;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/HtcWifiWanDetect;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/HtcWifiWanDetect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->checkStopWanDetection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/HtcWifiWanDetect;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/HtcWifiWanDetect;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/HtcWifiWanDetect;->sendErrorBroadcast(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/HtcWifiWanDetect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionFirstConnection:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/HtcWifiWanDetect;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionFirstConnection:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/HtcWifiWanDetect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->doWanDetection()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/HtcWifiWanDetect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->clearWanErrorNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/HtcWifiWanDetect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->doLanDetection()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/HtcWifiWanDetect;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mErrorCode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/HtcWifiWanDetect;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mNetworkID:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/HtcWifiWanDetect;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/HtcWifiWanDetect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/HtcWifiWanDetect;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->waitDNS()V

    return-void
.end method

.method private canDoWanDetection()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    const-string v2, "wifi.wan.detection"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    const-string v2, "wifi.wan.detection"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 169
    goto :goto_0

    .line 172
    :cond_2
    const-string v2, "ro.boot.mode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "factory2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 176
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTC transfer tool "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    const-string v0, "HtcWifiWanDetect"

    const-string v2, "Connecte to Frisbee AP"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 178
    goto :goto_0

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chromecast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    const-string v0, "HtcWifiWanDetect"

    const-string v2, "Connecte to chromecast"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 182
    goto :goto_0

    .line 187
    :cond_5
    const-string v2, "HtcWifiWanDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDoWanDetection: mHtcWanDetectionDialogEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionDialogEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHtcWanDetectionEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionDialogEnabled:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionEnabled:Z

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    .line 192
    goto/16 :goto_0
.end method

.method private checkStopWanDetection()Z
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 209
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "Disconnect when WAN detection, stop WAN detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearWanErrorNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-boolean v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIndicateWanError:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 437
    invoke-direct {p0, v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->setWanErrorNotificationVisible(Z)V

    .line 438
    iput-boolean v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIndicateWanError:Z

    .line 439
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "clear WAN_ERROR icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    return-void
.end method

.method private doLanDetection()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "LAN detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method private doWanDetection()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "WAN detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "Ignoring WAN detection, mWifiInfo is NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->canDoWanDetection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    const-string v0, "HtcWifiWanDetect"

    const-string v1, "Don\'t enable WAN detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/HtcWifiWanDetect$3;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiWanDetect$3;-><init>(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private doubleCheckWanDetection(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "queryAddress"    # Ljava/lang/String;
    .param p2, "networkId"    # I

    .prologue
    const/16 v12, 0x16

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 272
    const/4 v6, 0x0

    .line 273
    .local v6, "urlConnection":Ljava/net/HttpURLConnection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "httpAddress":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v7, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mMaxUrlCheckingCount:I

    if-ge v3, v7, :cond_6

    .line 275
    const-string v7, "HtcWifiWanDetect"

    const-string v10, "do doubleCheckWanDetection"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 278
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 279
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 280
    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 281
    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 282
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 283
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 285
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 286
    .local v4, "response":I
    const-string v7, "HtcWifiWanDetect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doubleCheckWanDetection urlConnection.getResponseCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v7, 0x190

    if-lt v4, v7, :cond_1

    .line 288
    const-string v7, "HtcWifiWanDetect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WAN problem detected C. response code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/16 v7, 0x16

    invoke-direct {p0, v7, p2}, Lcom/android/server/wifi/HtcWifiWanDetect;->sendErrorBroadcast(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    if-eqz v6, :cond_0

    .line 299
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v7, v8

    .line 307
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :goto_1
    return v7

    .line 293
    .restart local v4    # "response":I
    .restart local v5    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    const-string v7, "HtcWifiWanDetect"

    const-string v10, "WAN link is good"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    if-eqz v6, :cond_2

    .line 299
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v7, v9

    goto :goto_1

    .line 295
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "HtcWifiWanDetect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WAN problem detected D. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    if-eqz v6, :cond_3

    .line 299
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->checkStopWanDetection()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v9

    goto :goto_1

    .line 298
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_4

    .line 299
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v7

    .line 274
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 306
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    invoke-direct {p0, v12, p2}, Lcom/android/server/wifi/HtcWifiWanDetect;->sendErrorBroadcast(II)V

    move v7, v8

    .line 307
    goto :goto_1
.end method

.method private sendErrorBroadcast(II)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "networkID"    # I

    .prologue
    .line 446
    invoke-static {}, Landroid/net/wifi/WifiCustomizeReader;->getWlanDetectionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 447
    const-string v0, "HtcWifiWanDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorBroadcast disable networkID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHandler:Landroid/os/Handler;

    const v2, 0x25011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 455
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v0, "HtcWifiWanDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorBroadcast errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mErrorCode:I

    .line 452
    iput p2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mNetworkID:I

    .line 453
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/HtcWifiWanDetect;->setWanErrorNotificationVisible(Z)V

    goto :goto_0
.end method

.method private setWanErrorNotificationVisible(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 402
    const-string v4, "HtcWifiWanDetect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWanErrorNotificationVisible visible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-nez p1, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIndicateWanError:Z

    if-nez v4, :cond_0

    .line 429
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 410
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 411
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 412
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    .line 413
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 414
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    const v5, 0x302009e

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 415
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 416
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.wifi.SHOW_WAN_ERROR_DIALOG"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 419
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x307007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "details":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 422
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 423
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 428
    .end local v0    # "details":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIndicateWanError:Z

    goto :goto_0

    .restart local v2    # "title":Ljava/lang/String;
    :cond_2
    move-object v0, v3

    .line 420
    goto :goto_1

    .line 426
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiWanErrorNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2
.end method

.method private setWifiWanErrorDialogReceiver()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/HtcWifiWanDetect$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/HtcWifiWanDetect$2;-><init>(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.wifi.SHOW_WAN_ERROR_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method private setupWanDetectReceiver()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/android/server/wifi/HtcWifiWanDetect$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/HtcWifiWanDetect$1;-><init>(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIntentFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.wifi.LAN_DETECTION_RETRY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.wifi.WAN_DETECTION_RETRY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-direct {p0}, Lcom/android/server/wifi/HtcWifiWanDetect;->setWifiWanErrorDialogReceiver()V

    .line 135
    return-void
.end method

.method private waitDNS()V
    .locals 4

    .prologue
    .line 199
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "HtcWifiWanDetect"

    const-string v2, "LOG , InterruptedException was received "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getWanDetectionEnabled()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 362
    iget-object v5, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, "content":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 366
    .local v3, "enable":Z
    const/4 v1, 0x0

    .line 367
    .local v1, "defaultEnabledValue":I
    invoke-static {}, Landroid/net/wifi/WifiCustomizeReader;->getWlanDetectionType()I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiCustomizeReader;->getSenseVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x4016000000000000L    # 5.5

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_0

    .line 368
    const/4 v1, 0x1

    .line 372
    :cond_0
    :try_start_0
    const-string v5, "wan_detection_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v3, v4

    .line 373
    :goto_0
    const-string v5, "HtcWifiWanDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWanDetectionEnabled(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 378
    :goto_1
    return v4

    .line 372
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v2

    .line 376
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "HtcWifiWanDetect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWanDetectionEnabled() Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (Set Default value to WAN detection:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v5, "wan_detection_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public retryLanDetection()Z
    .locals 3

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.LAN_DETECTION_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 321
    const/4 v1, 0x1

    return v1
.end method

.method public retryWanDetection()Z
    .locals 3

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.WAN_DETECTION_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 335
    const/4 v1, 0x1

    return v1
.end method

.method public setSettingsWanDetectionEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, "content":Landroid/content/ContentResolver;
    const-string v1, "HtcWifiWanDetect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWanDetectionEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v2, "wan_detection_enabled"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/HtcWifiWanDetect;->setWanDetectionEnabled(Z)Z

    .line 355
    return-void

    .line 353
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWanDetectionDialogEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionDialogEnabled:Z

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public setWanDetectionEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionEnabled:Z

    .line 343
    const/4 v0, 0x1

    return v0
.end method
