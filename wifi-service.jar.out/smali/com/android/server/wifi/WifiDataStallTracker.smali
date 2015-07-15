.class public Lcom/android/server/wifi/WifiDataStallTracker;
.super Landroid/os/Handler;
.source "WifiDataStallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;
    }
.end annotation


# static fields
.field public static final DATA_MONITOR_POLL:I = 0x2

.field private static final DATA_STALL_ALARM_DELAY_IN_MS_DEFAULT:I = 0x1388

.field private static final DATA_STALL_RECOVER_INTERVAL_IN_MS_DEFAULT:I = 0x36ee80

.field public static final DATA_STALL_TIMER_EVENT:I = 0x4

.field private static final DBG:Z = true

.field public static final DO_RECOVERY_EVENT:I = 0x3

.field public static final ENABLE_DATA_MONITOR_POLL:I = 0x1

.field private static final NUMBER_SENT_PACKETS_OF_HANG:I = 0x5

.field private static final RECOVER_ENABLE_AFTER_RX_TIMES:I = 0x78

.field private static final TAG:Ljava/lang/String; = "WifiDataStallTracker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataStallAlarmTag:I

.field private volatile mDataStallDetectionEnabled:Z

.field private mDataStallTxRxSum:Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

.field private mEnableTrafficStatsPoll:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDhcpActive:Z

.field private mIsScreenOn:Z

.field private mIsWifiConnected:Z

.field private mOldWifiDisplayStatus:I

.field private final mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRecoverDuration:I

.field private mRecoverRecently:Z

.field private mSentSinceLastRecv:J

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 221
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;-><init>(Lcom/android/server/wifi/WifiDataStallTracker;JJ)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    .line 72
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    .line 79
    iput v7, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    .line 85
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallDetectionEnabled:Z

    .line 88
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z

    .line 90
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsDhcpActive:Z

    .line 92
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsScreenOn:Z

    .line 94
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverRecently:Z

    .line 96
    iput v7, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverDuration:I

    .line 98
    iput v7, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I

    .line 105
    new-instance v0, Lcom/android/server/wifi/WifiDataStallTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiDataStallTracker$1;-><init>(Lcom/android/server/wifi/WifiDataStallTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    iput-object p1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 226
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiDataStallTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiDataStallTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiDataStallTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->updateDataStallInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->isAllowRecover()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiDataStallTracker;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverRecently:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiDataStallTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiDataStallTracker;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiDataStallTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDataStallTracker;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->pingGateway()Z

    move-result v0

    return v0
.end method

.method private checkIpv4AddressFormat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ipString"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string v2, "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 526
    .local v0, "ipv4FormatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 527
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private doRecovery()V
    .locals 7

    .prologue
    const v6, 0x2400c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->isAllowRecover()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverRecently:Z

    .line 310
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverDuration:I

    .line 311
    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x2400c

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->startIntervalTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiDataStallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Settings.Global.WIFI_ON Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverRecently:Z

    .line 318
    iput v5, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverDuration:I

    .line 319
    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 320
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->startIntervalTimer()V

    goto :goto_0
.end method

.method private isAllowRecover()Z
    .locals 3

    .prologue
    .line 513
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsDhcpActive:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 518
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 513
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isConnectedAndNotRoaming()Z
    .locals 2

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDataStallAlarm()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/WifiDataStallTracker$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiDataStallTracker$2;-><init>(Lcom/android/server/wifi/WifiDataStallTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 399
    return-void
.end method

.method private pingGateway()Z
    .locals 8

    .prologue
    .line 446
    const/4 v3, 0x0

    .line 448
    .local v3, "pingresult":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->isAllowRecover()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 450
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 452
    :try_start_0
    const-string v5, "dhcp.wlan0.gateway"

    const-string v6, "192.168.1.1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "gatewayIP":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiDataStallTracker;->checkIpv4AddressFormat(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
    const-string v5, "WifiDataStallTracker"

    const-string v6, "Incorrect IPv4 formation, use default IP 192.168.1.1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v1, "192.168.1.1"

    .line 458
    :cond_0
    const-string v5, "WifiDataStallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gateway IP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ping -c 2 -W 5 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 460
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 461
    .local v4, "status":I
    if-nez v4, :cond_1

    .line 462
    const-string v5, "WifiDataStallTracker"

    const-string v6, "ping gateway pass, don\'t do recover"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 464
    const/4 v3, 0x1

    .line 474
    .end local v1    # "gatewayIP":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 480
    :goto_1
    return v3

    .line 466
    .restart local v1    # "gatewayIP":Ljava/lang/String;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v4    # "status":I
    :cond_1
    :try_start_1
    const-string v5, "WifiDataStallTracker"

    const-string v6, "ping gateway failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    const/4 v3, 0x0

    goto :goto_0

    .line 469
    .end local v1    # "gatewayIP":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "WifiDataStallTracker"

    const-string v6, "Fail: IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "WifiDataStallTracker"

    const-string v6, "Fail: InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string v5, "WifiDataStallTracker"

    const-string v6, "pingGateway: not allow to run recover"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateDataStallInfo()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 329
    new-instance v0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;-><init>(Lcom/android/server/wifi/WifiDataStallTracker;Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;)V

    .line 330
    .local v0, "preTxRxSum":Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;
    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->updateTxRxSum()V

    .line 332
    const-string v1, "WifiDataStallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataStallInfo: mDataStallTxRxSum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " preTxRxSum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    iget-wide v6, v1, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->txPkts:J

    iget-wide v8, v0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->txPkts:J

    sub-long v4, v6, v8

    .line 336
    .local v4, "sent":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    iget-wide v6, v1, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->rxPkts:J

    iget-wide v8, v0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->rxPkts:J

    sub-long v2, v6, v8

    .line 338
    .local v2, "received":J
    cmp-long v1, v4, v10

    if-lez v1, :cond_0

    cmp-long v1, v2, v10

    if-lez v1, :cond_0

    .line 339
    const-string v1, "WifiDataStallTracker"

    const-string v6, "updateDataStallInfo: IN/OUT"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-wide v10, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J

    .line 353
    :goto_0
    return-void

    .line 341
    :cond_0
    cmp-long v1, v4, v10

    if-lez v1, :cond_1

    cmp-long v1, v2, v10

    if-nez v1, :cond_1

    .line 342
    iget-wide v6, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J

    .line 344
    const-string v1, "WifiDataStallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataStallInfo: OUT sent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSentSinceLastRecv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_1
    cmp-long v1, v4, v10

    if-nez v1, :cond_2

    cmp-long v1, v2, v10

    if-lez v1, :cond_2

    .line 348
    const-string v1, "WifiDataStallTracker"

    const-string v6, "updateDataStallInfo: IN"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-wide v10, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J

    goto :goto_0

    .line 351
    :cond_2
    const-string v1, "WifiDataStallTracker"

    const-string v6, "updateDataStallInfo: NONE"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 289
    const-string v0, "WifiDataStallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified event msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    .line 250
    const-string v0, "WifiDataStallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_DATA_MONITOR_POLL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    .line 255
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    if-eqz v0, :cond_0

    .line 256
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z

    if-nez v0, :cond_3

    .line 257
    :cond_1
    const-string v0, "WifiDataStallTracker"

    const-string v1, "ENABLE_DATA_MONITOR_POLL: Do NOT run data monitor "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 249
    goto :goto_1

    .line 260
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->onDataStallAlarm()V

    .line 261
    iget v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/WifiDataStallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 266
    :pswitch_1
    const-string v0, "WifiDataStallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_MONITOR_POLL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    if-ne v0, v2, :cond_0

    .line 271
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsScreenOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z

    if-nez v0, :cond_5

    .line 272
    :cond_4
    const-string v0, "WifiDataStallTracker"

    const-string v1, "DATA_MONITOR_POLL: Do NOT run data monitor "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 275
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->onDataStallAlarm()V

    .line 276
    iget v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/WifiDataStallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 281
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->doRecovery()V

    goto/16 :goto_0

    .line 285
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallTimer()V

    goto/16 :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDhcpActive(Z)V
    .locals 3
    .param p1, "isActive"    # Z

    .prologue
    .line 441
    const-string v0, "WifiDataStallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDhcpActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mIsDhcpActive:Z

    .line 443
    return-void
.end method

.method public startDataStallAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 418
    iget v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 419
    const-string v0, "WifiDataStallTracker"

    const-string v1, "WifiDisplay connected, not startDataStallAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallTxRxSum:Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->updateTxRxSum()V

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v0}, Lcom/android/server/wifi/WifiDataStallTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiDataStallTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 431
    :cond_1
    const-string v0, "WifiDataStallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDataStallAlarm: NOT started, no connection tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mDataStallAlarmTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIntervalTimer()V
    .locals 4

    .prologue
    .line 403
    const-string v0, "WifiDataStallTracker"

    const-string v1, "startDataStallTimer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/WifiDataStallTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wifi/WifiDataStallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 407
    return-void
.end method

.method public stopDataStallAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    const-string v0, "WifiDataStallTracker"

    const-string v1, "stopDataStallAlarm "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wifi/WifiDataStallTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiDataStallTracker;->sendMessage(Landroid/os/Message;)Z

    .line 438
    return-void
.end method

.method public stopDataStallTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    const-string v0, "WifiDataStallTracker"

    const-string v1, "stopDataStallTimer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverRecently:Z

    .line 413
    iput v2, p0, Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverDuration:I

    .line 414
    return-void
.end method
