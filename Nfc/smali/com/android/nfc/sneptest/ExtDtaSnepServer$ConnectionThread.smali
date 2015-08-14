.class Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "ExtDtaSnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/sneptest/ExtDtaSnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mMessager:Lcom/android/nfc/snep/SnepMessenger;

.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/sneptest/ExtDtaSnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 2
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 77
    const-string v0, "ExtDtaSnepServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 79
    new-instance v0, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V

    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "starting connection thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 88
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-boolean v1, v2, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 89
    .local v1, "running":Z
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    if-eqz v1, :cond_0

    .line 92
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-object v3, v3, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    invoke-static {v2, v3}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :try_start_3
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 111
    .end local v1    # "running":Z
    :goto_1
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "finished connection thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 89
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "Closing from IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    :try_start_7
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 106
    :catch_1
    move-exception v2

    goto :goto_1

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "running":Z
    :cond_1
    :try_start_8
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 97
    :try_start_9
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-boolean v1, v2, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mServerRunning:Z

    .line 98
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 103
    .end local v1    # "running":Z
    :catchall_2
    move-exception v2

    .line 104
    :try_start_b
    const-string v3, "ExtDtaSnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 108
    :goto_2
    throw v2

    .line 106
    :catch_2
    move-exception v3

    goto :goto_2

    .restart local v1    # "running":Z
    :catch_3
    move-exception v2

    goto :goto_1
.end method
