.class Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 1
    .param p2, "sock"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 68
    const-string v0, "NdefPushServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 74
    const-string v7, "NdefPushServer"

    const-string v8, "starting connection thread"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 77
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v4, v7, [B

    .line 79
    .local v4, "partial":[B
    const/4 v1, 0x0

    .line 81
    .local v1, "connectionBroken":Z
    iget-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v8
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 82
    :try_start_1
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->mServerRunning:Z
    invoke-static {v7}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000(Lcom/android/nfc/ndefpush/NdefPushServer;)Z

    move-result v5

    .line 83
    .local v5, "running":Z
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :goto_0
    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    .line 88
    :try_start_2
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v6

    .line 89
    .local v6, "size":I
    const-string v7, "NdefPushServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    if-gez v6, :cond_1

    .line 91
    const/4 v1, 0x1

    .line 108
    .end local v6    # "size":I
    :cond_0
    :try_start_3
    new-instance v3, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>([B)V

    .line 109
    .local v3, "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    const-string v7, "NdefPushServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v7, v7, Lcom/android/nfc/ndefpush/NdefPushServer;->mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-virtual {v3}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->getImmediate()Landroid/nfc/NdefMessage;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/nfc/ndefpush/NdefPushServer$Callback;->onMessageReceived(Landroid/nfc/NdefMessage;)V
    :try_end_3
    .catch Landroid/nfc/FormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 117
    :try_start_4
    const-string v7, "NdefPushServer"

    const-string v8, "about to close"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 123
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v3    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v4    # "partial":[B
    .end local v5    # "running":Z
    :goto_1
    const-string v7, "NdefPushServer"

    const-string v8, "finished connection thread"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 83
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v4    # "partial":[B
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/nfc/FormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 113
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v4    # "partial":[B
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Landroid/nfc/FormatException;
    :try_start_7
    const-string v7, "NdefPushServer"

    const-string v8, "badly formatted NDEF message, ignoring"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 117
    :try_start_8
    const-string v7, "NdefPushServer"

    const-string v8, "about to close"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 119
    :catch_1
    move-exception v7

    goto :goto_1

    .line 94
    .end local v2    # "e":Landroid/nfc/FormatException;
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v4    # "partial":[B
    .restart local v5    # "running":Z
    .restart local v6    # "size":I
    :cond_1
    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {v0, v4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 97
    iget-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v8
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/nfc/FormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 98
    :try_start_a
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    # getter for: Lcom/android/nfc/ndefpush/NdefPushServer;->mServerRunning:Z
    invoke-static {v7}, Lcom/android/nfc/ndefpush/NdefPushServer;->access$000(Lcom/android/nfc/ndefpush/NdefPushServer;)Z

    move-result v5

    .line 99
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v7
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/nfc/FormatException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 100
    .end local v6    # "size":I
    :catch_2
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    .line 103
    :try_start_c
    const-string v7, "NdefPushServer"

    const-string v8, "connection broken by IOException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Landroid/nfc/FormatException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_0

    .line 116
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "partial":[B
    .end local v5    # "running":Z
    :catchall_2
    move-exception v7

    .line 117
    :try_start_d
    const-string v8, "NdefPushServer"

    const-string v9, "about to close"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 121
    :goto_2
    throw v7

    .line 119
    :catch_3
    move-exception v8

    goto :goto_2

    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v3    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .restart local v4    # "partial":[B
    .restart local v5    # "running":Z
    :catch_4
    move-exception v7

    goto :goto_1
.end method
