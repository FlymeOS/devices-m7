.class public final Lcom/android/nfc/sneptest/ExtDtaSnepServer;
.super Ljava/lang/Object;
.source "ExtDtaSnepServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;,
        Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;,
        Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_PORT:I = 0x5

.field public static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:sneptest"

.field public static final EXTENDED_SNEP_DTA_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:sneptest"

.field private static final TAG:Ljava/lang/String; = "ExtDtaSnepServer"


# instance fields
.field final mDtaFragmentLength:I

.field final mDtaMiu:I

.field final mDtaRwSize:I

.field final mDtaServiceName:Ljava/lang/String;

.field final mDtaServiceSap:I

.field final mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "callback"    # Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 61
    iput-object p5, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    .line 62
    iput-object p1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaServiceName:Ljava/lang/String;

    .line 63
    iput p2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaServiceSap:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaFragmentLength:I

    .line 65
    iput p3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaMiu:I

    .line 66
    iput p4, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaRwSize:I

    .line 67
    return-void
.end method

.method static handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;)Z
    .locals 7
    .param p0, "messenger"    # Lcom/android/nfc/snep/SnepMessenger;
    .param p1, "callback"    # Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/16 v6, -0x3e

    const/4 v2, 0x1

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_0
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .local v1, "request":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getVersion()B

    move-result v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    if-eq v3, v2, :cond_0

    .line 133
    const/16 v3, -0x1f

    invoke-static {v3}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 159
    .end local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    :goto_0
    return v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "Bad snep message"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/16 v2, -0x3e

    :try_start_1
    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 136
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    :cond_0
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v3

    const/16 v4, 0x400

    if-gt v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 139
    :cond_1
    const-string v3, "ExtDtaSnepServer"

    const-string v4, "Bad requested length"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    if-ne v3, v2, :cond_3

    .line 144
    const-string v3, "ExtDtaSnepServer"

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

    .line 145
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getAcceptableLength()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;->doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 150
    const-string v3, "ExtDtaSnepServer"

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

    .line 151
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;->doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto/16 :goto_0

    .line 155
    :cond_4
    const-string v3, "ExtDtaSnepServer"

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

    .line 156
    invoke-static {v6}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto/16 :goto_0

    .line 125
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
    .line 260
    monitor-enter p0

    .line 262
    :try_start_0
    const-string v0, "ExtDtaSnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "starting new server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;-><init>(Lcom/android/nfc/sneptest/ExtDtaSnepServer;)V

    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    .line 266
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->start()V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 269
    :cond_0
    monitor-exit p0

    .line 270
    return-void

    .line 269
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
    .line 274
    monitor-enter p0

    .line 276
    :try_start_0
    const-string v0, "ExtDtaSnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "shuting down server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->shutdown()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerThread:Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 283
    :cond_0
    monitor-exit p0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
