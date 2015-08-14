.class Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;
.super Ljava/lang/Thread;
.source "ExtDtaSnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/sneptest/ExtDtaSnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/sneptest/ExtDtaSnepServer;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-boolean v11, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    .line 175
    .local v11, "threadRunning":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_0
    if-eqz v11, :cond_1

    .line 178
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "about create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_1
    iget-object v12, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v12
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 181
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v1, v1, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaServiceSap:I

    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-object v2, v2, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v3, v3, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaMiu:I

    iget-object v4, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v4, v4, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaRwSize:I

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 183
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_3

    .line 185
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 223
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 224
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "ExtDtaSnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 227
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 231
    :goto_1
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 233
    :cond_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 240
    :cond_1
    :goto_2
    return-void

    .line 175
    .end local v11    # "threadRunning":Z
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 183
    .restart local v11    # "threadRunning":Z
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 218
    :catch_0
    move-exception v7

    .line 219
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_a
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 223
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 224
    :try_start_b
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_2

    .line 225
    const-string v0, "ExtDtaSnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 227
    :try_start_c
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 231
    :goto_3
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 233
    :cond_2
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 236
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_4
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 237
    :try_start_e
    iget-boolean v11, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    .line 238
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    .line 233
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    .line 188
    :cond_3
    :try_start_10
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1
    :try_end_10
    .catch Lcom/android/nfc/LlcpException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 190
    :try_start_11
    iget-boolean v11, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    .line 191
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 193
    :goto_5
    if-eqz v11, :cond_a

    .line 195
    :try_start_12
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1
    :try_end_12
    .catch Lcom/android/nfc/LlcpException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 196
    :try_start_13
    iget-object v10, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 197
    .local v10, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 199
    if-nez v10, :cond_7

    .line 200
    :try_start_14
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "Server socket shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Lcom/android/nfc/LlcpException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 223
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 224
    :try_start_15
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_4

    .line 225
    const-string v0, "ExtDtaSnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 227
    :try_start_16
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 231
    :goto_6
    const/4 v0, 0x0

    :try_start_17
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 233
    :cond_4
    monitor-exit v1

    goto :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    throw v0

    .line 191
    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_5
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :try_start_19
    throw v0
    :try_end_19
    .catch Lcom/android/nfc/LlcpException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 220
    :catch_1
    move-exception v7

    .line 221
    .local v7, "e":Ljava/io/IOException;
    :try_start_1a
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 223
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 224
    :try_start_1b
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_5

    .line 225
    const-string v0, "ExtDtaSnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 227
    :try_start_1c
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 231
    :goto_7
    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 233
    :cond_5
    monitor-exit v1

    goto :goto_4

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    throw v0

    .line 197
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    throw v0
    :try_end_1f
    .catch Lcom/android/nfc/LlcpException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 223
    :catchall_8
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 224
    :try_start_20
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_6

    .line 225
    const-string v2, "ExtDtaSnepServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 227
    :try_start_21
    iget-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    .line 231
    :goto_8
    const/4 v2, 0x0

    :try_start_22
    iput-object v2, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 233
    :cond_6
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    throw v0

    .line 203
    .restart local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_7
    :try_start_23
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 205
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string v0, "ExtDtaSnepServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz v6, :cond_8

    .line 207
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v9

    .line 208
    .local v9, "miu":I
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v0, v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaFragmentLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    move v8, v9

    .line 210
    .local v8, "fragmentLength":I
    :goto_9
    new-instance v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-direct {v0, v1, v6, v8}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;-><init>(Lcom/android/nfc/sneptest/ExtDtaSnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ConnectionThread;->start()V

    .line 213
    .end local v8    # "fragmentLength":I
    .end local v9    # "miu":I
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1
    :try_end_23
    .catch Lcom/android/nfc/LlcpException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    .line 214
    :try_start_24
    iget-boolean v11, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    .line 215
    monitor-exit v1

    goto/16 :goto_5

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :try_start_25
    throw v0

    .line 208
    .restart local v9    # "miu":I
    :cond_9
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget v0, v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mDtaFragmentLength:I

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_9

    .line 217
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v9    # "miu":I
    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_a
    const-string v0, "ExtDtaSnepServer"

    const-string v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Lcom/android/nfc/LlcpException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .line 223
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 224
    :try_start_26
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_b

    .line 225
    const-string v0, "ExtDtaSnepServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 227
    :try_start_27
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_5
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 231
    :goto_a
    const/4 v0, 0x0

    :try_start_28
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 233
    :cond_b
    monitor-exit v1

    goto/16 :goto_4

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    throw v0

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_b
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_c
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    throw v0

    .line 228
    :catch_2
    move-exception v2

    goto :goto_8

    .local v7, "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto/16 :goto_7

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_5
    move-exception v0

    goto :goto_a

    .restart local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_6
    move-exception v0

    goto/16 :goto_6

    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->this$0:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    monitor-enter v1

    .line 245
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mThreadRunning:Z

    .line 246
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 248
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/sneptest/ExtDtaSnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 254
    :cond_0
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method
