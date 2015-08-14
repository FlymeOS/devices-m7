.class public final Lcom/android/nfc/snep/SnepServer;
.super Ljava/lang/Object;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/snep/SnepServer$ServerThread;,
        Lcom/android/nfc/snep/SnepServer$ConnectionThread;,
        Lcom/android/nfc/snep/SnepServer$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_MIU:I = 0xf8

.field public static final DEFAULT_PORT:I = 0x4

.field private static final DEFAULT_RW_SIZE:I = 0x1

.field public static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final TAG:Ljava/lang/String; = "SnepServer"


# instance fields
.field final mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mFragmentLength:I

.field final mMiu:I

.field final mRwSize:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

.field final mServiceName:Ljava/lang/String;

.field final mServiceSap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/snep/SnepServer$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 80
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 81
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 84
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V
    .locals 1
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 98
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 99
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 100
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 102
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 103
    iput p3, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 104
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILcom/android/nfc/snep/SnepServer$Callback;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "fragmentLength"    # I
    .param p4, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 107
    iput-object p4, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 108
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 109
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 110
    iput p3, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 111
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/nfc/snep/SnepServer$Callback;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 89
    iput-object p3, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 90
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 93
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 95
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    return v0
.end method

.method static handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z
    .locals 7
    .param p0, "messenger"    # Lcom/android/nfc/snep/SnepMessenger;
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/16 v6, -0x3e

    const/4 v2, 0x1

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_0
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    .local v1, "request":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getVersion()B

    move-result v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    if-eq v3, v2, :cond_1

    .line 175
    const/16 v3, -0x1f

    invoke-static {v3}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 193
    .end local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    :goto_0
    return v2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    sget-boolean v2, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SnepServer"

    const-string v3, "Bad snep message"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_0
    const/16 v2, -0x3e

    :try_start_1
    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    :cond_1
    sget-boolean v3, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v3

    const/16 v4, 0x400

    if-gt v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 179
    :cond_2
    sget-boolean v3, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SnepServer"

    const-string v4, "Bad requested length"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    if-ne v3, v2, :cond_6

    .line 182
    sget-boolean v3, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "SnepServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_5
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getAcceptableLength()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/android/nfc/snep/SnepServer$Callback;->doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_0

    .line 185
    :cond_6
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 186
    sget-boolean v3, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v3, :cond_7

    const-string v3, "SnepServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putting message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_7
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/nfc/snep/SnepServer$Callback;->doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto/16 :goto_0

    .line 189
    :cond_8
    sget-boolean v3, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "SnepServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown request ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_9
    invoke-static {v6}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto/16 :goto_0

    .line 168
    .end local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    .restart local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    if-nez v0, :cond_2

    .line 291
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "SnepServer"

    const-string v1, "starting new server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    new-instance v0, Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/snep/SnepServer$ServerThread;-><init>(Lcom/android/nfc/snep/SnepServer;)V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 293
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ServerThread;->start()V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 296
    :cond_2
    monitor-exit p0

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    if-eqz v0, :cond_2

    .line 303
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "SnepServer"

    const-string v1, "shuting down server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ServerThread;->shutdown()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 308
    :cond_2
    monitor-exit p0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
