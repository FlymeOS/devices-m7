.class Lcom/android/nfc/P2pLinkManager;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/nfc/P2pEventListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/P2pLinkManager$SendTask;,
        Lcom/android/nfc/P2pLinkManager$ConnectTask;,
        Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final DISABLE_BEAM_DEFAULT:Ljava/lang/String; = "android.nfc.disable_beam_default"

.field static final ECHOSERVER_ENABLED:Z = false

.field static final HANDOVER_FAILURE:I = 0x1

.field static final HANDOVER_SAP:I = 0x14

.field static final HANDOVER_SUCCESS:I = 0x0

.field static final HANDOVER_UNSUPPORTED:I = 0x2

.field static final LINK_FIRST_PDU_LIMIT_MS:I = 0xc8

.field static final LINK_NOTHING_TO_SEND_DEBOUNCE_MS:I = 0x2ee

.field static final LINK_SEND_CANCELED_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_COMPLETE_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_CONFIRMED_DEBOUNCE_MS:I = 0x1388

.field static final LINK_SEND_PENDING_DEBOUNCE_MS:I = 0xbb8

.field static final LINK_STATE_DEBOUNCE:I = 0x4

.field static final LINK_STATE_DOWN:I = 0x1

.field static final LINK_STATE_UP:I = 0x3

.field static final LINK_STATE_WAITING_PDU:I = 0x2

.field static final MSG_DEBOUNCE_TIMEOUT:I = 0x1

.field static final MSG_HANDOVER_NOT_SUPPORTED:I = 0x7

.field static final MSG_RECEIVE_COMPLETE:I = 0x2

.field static final MSG_RECEIVE_HANDOVER:I = 0x3

.field static final MSG_SEND_COMPLETE:I = 0x4

.field static final MSG_SET_NDEF_TO_SEND:I = 0xa

.field static final MSG_SHOW_CONFIRMATION_UI:I = 0x8

.field static final MSG_START_ECHOSERVER:I = 0x5

.field static final MSG_STOP_ECHOSERVER:I = 0x6

.field static final MSG_WAIT_FOR_LINK_TIMEOUT:I = 0x9

.field static final NDEFPUSH_SAP:I = 0x10

.field static final SEND_STATE_CANCELED:I = 0x6

.field static final SEND_STATE_COMPLETE:I = 0x5

.field static final SEND_STATE_NEED_CONFIRMATION:I = 0x2

.field static final SEND_STATE_NOTHING_TO_SEND:I = 0x1

.field static final SEND_STATE_PENDING:I = 0x3

.field static final SEND_STATE_SENDING:I = 0x4

.field static final SNEP_FAILURE:I = 0x1

.field static final SNEP_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcP2pLinkManager"

.field static final WAIT_FOR_LINK_TIMEOUT_MS:I = 0x2710


# instance fields
.field mCallbackNdef:Landroid/nfc/IAppCallback;

.field private mClientEnabled:Z

.field mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

.field final mContext:Landroid/content/Context;

.field final mDefaultMiu:I

.field final mDefaultRwSize:I

.field final mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

.field private mDtaMiu:I

.field private mDtaRwSize:I

.field private mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

.field private mDtaSnepClientReady:Z

.field final mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

.field final mEventListener:Lcom/android/nfc/P2pEventListener;

.field private mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

.field final mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

.field private mExtDtaSnepServerRunning:Z

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

.field final mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field final mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

.field mIsReceiveEnabled:Z

.field mIsSendEnabled:Z

.field mLastLlcpActivationTime:J

.field mLinkState:I

.field mLlcpConnectDelayed:Z

.field mLlcpServicesConnected:Z

.field mMessageToSend:Landroid/nfc/NdefMessage;

.field mNdefCallbackUid:I

.field mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field final mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

.field final mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mPutBeforeGet:Z

.field mSendFlags:I

.field mSendState:I

.field mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

.field private mServerEnabled:Z

.field private mServiceName:Ljava/lang/String;

.field private mServiceSap:I

.field private mSetNdefHandler:Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;

.field mSnepClient:Lcom/android/nfc/snep/SnepClient;

.field private mTestCaseID:I

.field mUrisToSend:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p3, "defaultMiu"    # I
    .param p4, "defaultRwSize"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 263
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 264
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 265
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    .line 266
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClientReady:Z

    .line 267
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 268
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    .line 314
    new-instance v0, Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSetNdefHandler:Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;

    .line 1014
    new-instance v0, Lcom/android/nfc/P2pLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$1;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 1021
    new-instance v0, Lcom/android/nfc/P2pLinkManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$2;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 1028
    new-instance v0, Lcom/android/nfc/P2pLinkManager$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$3;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 1055
    new-instance v0, Lcom/android/nfc/P2pLinkManager$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$4;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    .line 272
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/ndefpush/NdefPushServer;-><init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 273
    new-instance v0, Lcom/android/nfc/snep/SnepServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/nfc/snep/SnepServer;-><init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 274
    new-instance v0, Lcom/android/nfc/handover/HandoverServer;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/nfc/handover/HandoverServer;-><init>(ILcom/android/nfc/handover/HandoverManager;Lcom/android/nfc/handover/HandoverServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    .line 279
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 282
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 283
    new-instance v0, Lcom/android/nfc/P2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    .line 285
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 286
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 287
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 288
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 289
    const-string v0, "NfcServicePrefs"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 290
    iput-object p2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 291
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultMiu:I

    .line 292
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultRwSize:I

    .line 293
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 295
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/P2pLinkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/nfc/P2pLinkManager;Lcom/android/nfc/sneptest/DtaSnepClient;)Lcom/android/nfc/sneptest/DtaSnepClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Lcom/android/nfc/sneptest/DtaSnepClient;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/nfc/P2pLinkManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/nfc/P2pLinkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClientReady:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/nfc/P2pLinkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClientReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/nfc/P2pLinkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/nfc/P2pLinkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    return p1
.end method

.method private isManagedOrBeamDisabled(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 626
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 627
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 628
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static linkStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1323
    packed-switch p0, :pswitch_data_0

    .line 1333
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 1325
    :pswitch_0
    const-string v0, "LINK_STATE_DOWN"

    goto :goto_0

    .line 1327
    :pswitch_1
    const-string v0, "LINK_STATE_DEBOUNCE"

    goto :goto_0

    .line 1329
    :pswitch_2
    const-string v0, "LINK_STATE_UP"

    goto :goto_0

    .line 1331
    :pswitch_3
    const-string v0, "LINK_STATE_WAITING_PDU"

    goto :goto_0

    .line 1323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onP2pSendConfirmed(Z)V
    .locals 6
    .param p1, "requireConfirmation"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 1254
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    monitor-enter p0

    .line 1256
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v3, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v4, :cond_1

    .line 1258
    :cond_0
    monitor-exit p0

    .line 1279
    :goto_0
    return-void

    .line 1260
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1261
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v4, :cond_3

    .line 1266
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1267
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 1278
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1268
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    if-eqz v0, :cond_4

    .line 1269
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    goto :goto_1

    .line 1270
    :cond_4
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z

    if-eqz v0, :cond_5

    .line 1272
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_1

    .line 1273
    :cond_5
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v5, :cond_2

    .line 1275
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1276
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static sendStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1306
    packed-switch p0, :pswitch_data_0

    .line 1318
    :pswitch_0
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 1308
    :pswitch_1
    const-string v0, "SEND_STATE_NOTHING_TO_SEND"

    goto :goto_0

    .line 1310
    :pswitch_2
    const-string v0, "SEND_STATE_NEED_CONFIRMATION"

    goto :goto_0

    .line 1312
    :pswitch_3
    const-string v0, "SEND_STATE_SENDING"

    goto :goto_0

    .line 1314
    :pswitch_4
    const-string v0, "SEND_STATE_COMPLETE"

    goto :goto_0

    .line 1316
    :pswitch_5
    const-string v0, "SEND_STATE_CANCELED"

    goto :goto_0

    .line 1306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 636
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 638
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 643
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 641
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.nfc.disable_beam_default"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 642
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method cancelSendNdefMessage()V
    .locals 2

    .prologue
    .line 743
    monitor-enter p0

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->cancel(Z)Z

    .line 747
    :cond_0
    monitor-exit p0

    .line 748
    return-void

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method connectLlcpServices()V
    .locals 2

    .prologue
    .line 751
    monitor-enter p0

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 753
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    new-instance v0, Lcom/android/nfc/P2pLinkManager$ConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 756
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 757
    monitor-exit p0

    .line 758
    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&feature=beam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 650
    .local v1, "appUri":Landroid/nfc/NdefRecord;
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 651
    .local v0, "appRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method public disableDtaSnepClient()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "disableDtaSnepClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 410
    return-void
.end method

.method public disableExtDtaSnepServer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 374
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Disabling Extended DTA Server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 379
    :cond_0
    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->stop()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 384
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iput-boolean v2, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method disconnectLlcpServices()V
    .locals 2

    .prologue
    .line 655
    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->cancel(Z)Z

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 673
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 674
    monitor-exit p0

    .line 675
    return-void

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1338
    monitor-enter p0

    .line 1339
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSendEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReceiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->linkStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->sendStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbackNdef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUrisToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    monitor-exit p0

    .line 1348
    return-void

    .line 1347
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDisable(ZZ)V
    .locals 2
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 324
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->start()V

    .line 325
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->start()V

    .line 326
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 340
    iput-boolean p2, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 342
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_1

    .line 343
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 344
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    :cond_1
    monitor-exit p0

    .line 347
    return-void

    .line 329
    :cond_2
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 330
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "enableDisable: llcp deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 332
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 333
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->stop()V

    .line 334
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->stop()V

    .line 335
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDtaSnepClient(Ljava/lang/String;III)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I

    .prologue
    .line 393
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "enableDtaSnepClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 395
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    .line 396
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mServiceSap:I

    .line 397
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    .line 398
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    .line 399
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    .line 400
    return-void
.end method

.method public enableExtDtaSnepServer(Ljava/lang/String;III)V
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I

    .prologue
    const/4 v6, 0x1

    .line 354
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Enabling Extended DTA Server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    .line 356
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mServiceSap:I

    .line 357
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    .line 358
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mServiceSap:I

    iget v3, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    iget v4, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;-><init>(Ljava/lang/String;IIILcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->start()V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 365
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iput-boolean v6, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    .line 367
    return-void

    .line 365
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getMessageAarPresent(Landroid/nfc/NdefMessage;)I
    .locals 8
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    .line 1232
    if-nez p1, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return v5

    .line 1235
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 1236
    .local v4, "records":[Landroid/nfc/NdefRecord;
    if-eqz v4, :cond_0

    .line 1239
    move-object v0, v4

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1240
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1242
    const/4 v5, 0x1

    goto :goto_0

    .line 1239
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getMessageSize(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1191
    if-eqz p1, :cond_0

    .line 1192
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    .line 1194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMessageTnf(Landroid/nfc/NdefMessage;)I
    .locals 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 1199
    if-nez p1, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return v1

    .line 1202
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1203
    .local v0, "records":[Landroid/nfc/NdefRecord;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 1206
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    goto :goto_0
.end method

.method getMessageType(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1210
    if-nez p1, :cond_0

    .line 1211
    const-string v2, "null"

    .line 1227
    :goto_0
    return-object v2

    .line 1213
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 1214
    .local v1, "records":[Landroid/nfc/NdefRecord;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    .line 1215
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 1217
    :cond_2
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1218
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1227
    const-string v2, "unknown"

    goto :goto_0

    .line 1221
    :pswitch_0
    const-string v2, "uri"

    goto :goto_0

    .line 1225
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 1218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    .line 1092
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1187
    :goto_0
    :pswitch_0
    return v5

    .line 1094
    :pswitch_1
    monitor-enter p0

    .line 1095
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->start()V

    .line 1096
    monitor-exit p0

    goto :goto_0

    .line 1097
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1099
    :pswitch_2
    monitor-enter p0

    .line 1100
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->stop()V

    .line 1101
    monitor-exit p0

    goto :goto_0

    .line 1102
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1104
    :pswitch_3
    monitor-enter p0

    .line 1107
    const/4 v2, 0x1

    :try_start_2
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1108
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pTimeoutWaitingForLink()V

    .line 1109
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 1112
    :pswitch_4
    monitor-enter p0

    .line 1113
    :try_start_3
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v3, :cond_0

    .line 1114
    monitor-exit p0

    goto :goto_0

    .line 1123
    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 1116
    :cond_0
    :try_start_4
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Debounce timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1118
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1119
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1120
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 1121
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pOutOfRange()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pOutOfRange()V

    .line 1123
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 1127
    :pswitch_5
    monitor-enter p0

    .line 1128
    :try_start_5
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v5, :cond_1

    .line 1129
    monitor-exit p0

    goto :goto_0

    .line 1137
    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v2

    .line 1131
    :cond_1
    :try_start_6
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_2

    .line 1132
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1134
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1135
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1137
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_0

    .line 1140
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 1141
    .local v1, "m":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 1142
    :try_start_7
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v5, :cond_3

    .line 1143
    monitor-exit p0

    goto :goto_0

    .line 1152
    :catchall_5
    move-exception v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v2

    .line 1145
    :cond_3
    :try_start_8
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_4

    .line 1146
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1148
    :cond_4
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1149
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1151
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V

    .line 1152
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/16 :goto_0

    .line 1155
    .end local v1    # "m":Landroid/nfc/NdefMessage;
    :pswitch_7
    monitor-enter p0

    .line 1156
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1158
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_5

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v3, :cond_6

    .line 1159
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    .line 1164
    :catchall_6
    move-exception v2

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v2

    .line 1161
    :cond_6
    const/4 v2, 0x1

    :try_start_a
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1162
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pHandoverNotSupported()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 1164
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/16 :goto_0

    .line 1167
    :pswitch_8
    monitor-enter p0

    .line 1168
    const/4 v2, 0x0

    :try_start_b
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1170
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v5, :cond_7

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v3, :cond_8

    .line 1171
    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    .line 1184
    :catchall_7
    move-exception v2

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v2

    .line 1173
    :cond_8
    const/4 v2, 0x5

    :try_start_c
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1174
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1175
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pSendComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pSendComplete()V

    .line 1177
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v2, :cond_9

    .line 1179
    :try_start_d
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v2}, Landroid/nfc/IAppCallback;->onNdefPushComplete()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1184
    :cond_9
    :goto_1
    :try_start_e
    monitor-exit p0

    goto/16 :goto_0

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed NDEF completed callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_1

    .line 1092
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isLlcpActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHandoverUnsupported()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 727
    return-void
.end method

.method public onLlcpActivated()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x4

    .line 468
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpActivated()V

    .line 474
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z

    .line 476
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v0, :pswitch_data_0

    .line 528
    :cond_1
    :goto_0
    monitor-exit p0

    .line 529
    :goto_1
    return-void

    .line 478
    :pswitch_0
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pInRange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 480
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pInRange()V

    .line 481
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v3, :cond_2

    .line 482
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Sending pending data."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 487
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    :cond_3
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 501
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    goto :goto_0

    .line 504
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 505
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmationRequested()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested()V

    goto :goto_0

    .line 512
    :pswitch_1
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Unexpected onLlcpActivated() in LINK_STATE_WAITING_PDU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    monitor-exit p0

    goto :goto_1

    .line 515
    :pswitch_2
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Duplicate onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    monitor-exit p0

    goto :goto_1

    .line 518
    :pswitch_3
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_5

    .line 520
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 521
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 525
    :goto_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 523
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLlcpDeactivated()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 681
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "LLCP deactivated."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    monitor-enter p0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpDeactivated()V

    .line 687
    :cond_0
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v1, :pswitch_data_0

    .line 722
    :goto_0
    monitor-exit p0

    .line 723
    return-void

    .line 690
    :pswitch_0
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Duplicate onLlcpDectivated()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 722
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 695
    :pswitch_1
    const/4 v1, 0x4

    :try_start_1
    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "debounceTimeout":I
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    packed-switch v1, :pswitch_data_1

    .line 713
    :goto_1
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 714
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v1, v3, :cond_1

    .line 715
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onP2pSendDebounce()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 718
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 719
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disconnectLlcpServices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 699
    :pswitch_3
    const/4 v0, 0x0

    .line 700
    goto :goto_1

    .line 702
    :pswitch_4
    const/16 v0, 0xbb8

    .line 703
    goto :goto_1

    .line 705
    :pswitch_5
    const/16 v0, 0x1388

    .line 706
    goto :goto_1

    .line 708
    :pswitch_6
    const/16 v0, 0xfa

    .line 709
    goto :goto_1

    .line 711
    :pswitch_7
    const/16 v0, 0xfa

    goto :goto_1

    .line 687
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 697
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onLlcpFirstPacketReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 535
    monitor-enter p0

    .line 536
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    sub-long v0, v2, v4

    .line 537
    .local v0, "totalTime":J
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to get first LLCP PDU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v2, :pswitch_data_0

    .line 557
    :cond_0
    :goto_0
    monitor-exit p0

    .line 558
    return-void

    .line 540
    :pswitch_0
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Dropping first LLCP packet received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    .end local v0    # "totalTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 544
    .restart local v0    # "totalTime":J
    :pswitch_1
    :try_start_1
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Unexpected first LLCP packet received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :pswitch_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 548
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v6, :cond_0

    .line 550
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_0

    .line 553
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onLlcpServicesConnected()V
    .locals 2

    .prologue
    .line 762
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onLlcpServicesConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    monitor-enter p0

    .line 764
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 765
    monitor-exit p0

    .line 777
    :goto_0
    return-void

    .line 767
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 768
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pResumeSend()V

    .line 772
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    .line 776
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .locals 2
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 441
    monitor-exit p0

    .line 462
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 449
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 450
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 455
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 457
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 458
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pNfcTapRequested()V

    .line 459
    const/16 v0, 0x9

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 461
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 451
    :cond_5
    :try_start_1
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onP2pCanceled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1284
    monitor-enter p0

    .line 1285
    const/4 v0, 0x6

    :try_start_0
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1286
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v1, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1296
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1297
    return-void

    .line 1289
    :cond_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1292
    const/4 v0, 0x1

    const/16 v1, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    goto :goto_0

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onP2pSendConfirmed()V
    .locals 1

    .prologue
    .line 1250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 1251
    return-void
.end method

.method onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1088
    return-void
.end method

.method onReceiveHandover()V
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1083
    return-void
.end method

.method onSendComplete(Landroid/nfc/NdefMessage;J)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "elapsedRealtime"    # J

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 562
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 570
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Failed to retrieve PackageManager for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method prepareMessageToSend(Z)V
    .locals 7
    .param p1, "generatePlayLink"    # Z

    .prologue
    .line 573
    monitor-enter p0

    .line 574
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 575
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 576
    iget-boolean v4, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-nez v4, :cond_0

    .line 577
    monitor-exit p0

    .line 623
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v4}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v1

    .line 581
    .local v1, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 582
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "Could not determine foreground UID."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    monitor-exit p0

    goto :goto_0

    .line 622
    .end local v1    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 586
    .restart local v1    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v4, :cond_2

    .line 587
    iget v4, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    .line 589
    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v4}, Landroid/nfc/IAppCallback;->createBeamShareData()Landroid/nfc/BeamShareData;

    move-result-object v3

    .line 590
    .local v3, "shareData":Landroid/nfc/BeamShareData;
    iget-object v4, v3, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 591
    iget-object v4, v3, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 592
    iget v4, v3, Landroid/nfc/BeamShareData;->flags:I

    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 594
    .end local v3    # "shareData":Landroid/nfc/BeamShareData;
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NfcP2pLinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed NDEF callback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_4

    .line 609
    if-eqz p1, :cond_3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/nfc/P2pLinkManager;->isManagedOrBeamDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 611
    :cond_3
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "Disabling default Beam behavior"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 613
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 620
    :cond_4
    :goto_2
    const-string v4, "NfcP2pLinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMessageToSend = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v4, "NfcP2pLinkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUrisToSend = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    monitor-exit p0

    goto/16 :goto_0

    .line 601
    .end local v2    # "pkgs":[Ljava/lang/String;
    :cond_5
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "Last registered callback is not running in the foreground."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 615
    .restart local v2    # "pkgs":[Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 616
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method scheduleTimeoutLocked(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1302
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1303
    return-void
.end method

.method sendNdefMessage()V
    .locals 2

    .prologue
    .line 735
    monitor-enter p0

    .line 736
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 737
    new-instance v0, Lcom/android/nfc/P2pLinkManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 738
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 739
    monitor-exit p0

    .line 740
    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .locals 2
    .param p1, "callbackNdef"    # Landroid/nfc/IAppCallback;
    .param p2, "callingUid"    # I

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mSetNdefHandler:Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 432
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 433
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 434
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mSetNdefHandler:Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/P2pLinkManager$P2PLinkManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    return-void
.end method
