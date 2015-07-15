.class public Lcom/android/server/wifi/hotspot/SoftapMonitor;
.super Ljava/lang/Object;
.source "SoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final AP_DOWN:I = 0x2

.field private static final AP_UNKNOWN:I = 0x7

.field private static final AP_UP:I = 0x1

.field private static final ERROR_EVENT:I = 0x6

.field private static final HANG:I = 0xd

.field private static final L2PE_FAIL:I = 0xc

.field private static final L2PE_SUCCESSFUL:I = 0xb

.field private static final MAX_CLIENT:I = 0x10

.field private static final MAX_RECV_ERRORS:I = 0xc

.field private static final MAX_RECV_NULLS:I = 0x6

.field private static final PERF_LOCK:I = 0xe

.field private static final PERF_UNLOCK:I = 0xf

.field private static final STA_BLOCK:I = 0x5

.field private static final STA_JOIN:I = 0x3

.field private static final STA_LEAVE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SoftapMonitor"

.field private static final WPS_REGISTRAR_FAIL:I = 0xa

.field private static final WPS_REGISTRAR_START:I = 0x8

.field private static final WPS_REGISTRAR_SUCCESSFUL:I = 0x9

.field private static final ap_down:Ljava/lang/String; = "AP_DOWN"

.field private static final ap_up:Ljava/lang/String; = "AP_UP"

.field private static final error_event:Ljava/lang/String; = "ERROR_EVENT"

.field private static final hang:Ljava/lang/String; = "HANG"

.field private static final l2pe_fail:Ljava/lang/String; = "L2PE_FAIL"

.field private static final l2pe_successful:Ljava/lang/String; = "L2PE_SUCCESSFUL"

.field private static final max_client:Ljava/lang/String; = "MAX_CLIENT"

.field private static final perf_lock:Ljava/lang/String; = "PERF_LOCK"

.field private static final perf_unlock:Ljava/lang/String; = "PERF_UNLOCK"

.field private static final qct_sta_join:Ljava/lang/String; = "AP-STA-CONNECTED"

.field private static final qct_sta_leave:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final sta_block:Ljava/lang/String; = "STA_BLOCK"

.field private static final sta_join:Ljava/lang/String; = "STA_JOIN"

.field private static final sta_leave:Ljava/lang/String; = "STA_LEAVE"

.field private static final wps_registrar_fail:Ljava/lang/String; = "WPS_FAIL"

.field private static final wps_registrar_start:Ljava/lang/String; = "WPS_START"

.field private static final wps_registrar_successful:Ljava/lang/String; = "WPS_SUCCESSFUL"


# instance fields
.field private mNullErrors:I

.field private mRecvErrors:I

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mRecvErrors:I

    .line 95
    iput v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mNullErrors:I

    .line 103
    iput-object p1, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/hotspot/SoftapMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot/SoftapMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mNullErrors:I

    return p1
.end method

.method static synthetic access$004(Lcom/android/server/wifi/hotspot/SoftapMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot/SoftapMonitor;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mNullErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mNullErrors:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/hotspot/SoftapMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot/SoftapMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mRecvErrors:I

    return p1
.end method

.method static synthetic access$104(Lcom/android/server/wifi/hotspot/SoftapMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot/SoftapMonitor;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mRecvErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mRecvErrors:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hotspot/SoftapMonitor;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method


# virtual methods
.method public startMonitoring()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "SoftapMonitor"

    const-string v1, "startMonitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;-><init>(Lcom/android/server/wifi/hotspot/SoftapMonitor;)V

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->start()V

    .line 109
    return-void
.end method
