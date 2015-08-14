.class public final Lcom/android/nfc/snep/SnepClient;
.super Ljava/lang/Object;
.source "SnepClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x19000

.field private static final DEFAULT_MIU:I = 0x80

.field private static final DEFAULT_RWSIZE:I = 0x1

.field private static final DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SnepClient"


# instance fields
.field private final mAcceptableLength:I

.field private final mFragmentLength:I

.field mMessenger:Lcom/android/nfc/snep/SnepMessenger;

.field private final mMiu:I

.field private final mPort:I

.field private final mRwSize:I

.field private final mServiceName:Ljava/lang/String;

.field private mState:I

.field private final mTransmissionLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 52
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 54
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 56
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "miu"    # I
    .param p2, "rwSize"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 70
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 71
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 72
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 74
    iput p1, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 75
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 61
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 63
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 64
    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 65
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "fragmentLength"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 79
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 81
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 82
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 83
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "acceptableLength"    # I
    .param p3, "fragmentLength"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 88
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 90
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 91
    iput p3, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 92
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 94
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 197
    :cond_0
    :goto_0
    monitor-exit p0

    .line 198
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 193
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public connect()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget v5, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    if-eqz v5, :cond_0

    .line 137
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Socket already in use."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 139
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    iput v5, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 140
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    const/4 v4, 0x0

    .line 145
    .local v4, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_start_2
    sget-boolean v5, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SnepClient"

    const-string v6, "about to create socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    iget v8, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    const/16 v9, 0x400

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v4

    .line 148
    if-nez v4, :cond_2

    .line 149
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not connect to socket."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/android/nfc/LlcpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lcom/android/nfc/LlcpException;
    monitor-enter p0

    .line 163
    const/4 v5, 0x0

    :try_start_3
    iput v5, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 164
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not connect to socket"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    :cond_2
    :try_start_4
    iget v5, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    if-ne v5, v10, :cond_4

    .line 152
    sget-boolean v5, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "SnepClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "about to connect to service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V

    .line 158
    :goto_0
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v3

    .line 159
    .local v3, "miu":I
    iget v5, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    if-ne v5, v10, :cond_7

    move v1, v3

    .line 160
    .local v1, "fragmentLength":I
    :goto_1
    new-instance v2, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4, v1}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    :try_end_4
    .catch Lcom/android/nfc/LlcpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 179
    .local v2, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-enter p0

    .line 180
    :try_start_5
    iput-object v2, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 181
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 182
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 183
    return-void

    .line 155
    .end local v1    # "fragmentLength":I
    .end local v2    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local v3    # "miu":I
    :cond_4
    :try_start_6
    sget-boolean v5, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "SnepClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "about to connect to port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_5
    iget v5, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V
    :try_end_6
    .catch Lcom/android/nfc/LlcpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    if-eqz v4, :cond_6

    .line 169
    :try_start_7
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 173
    :cond_6
    :goto_2
    monitor-enter p0

    .line 174
    const/4 v5, 0x0

    :try_start_8
    iput v5, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 175
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 176
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to connect to socket"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "miu":I
    :cond_7
    :try_start_9
    iget v5, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v1

    goto :goto_1

    .line 164
    .end local v3    # "miu":I
    .local v0, "e":Lcom/android/nfc/LlcpException;
    :catchall_1
    move-exception v5

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v5

    .line 175
    .local v0, "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v5

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fragmentLength":I
    .restart local v2    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local v3    # "miu":I
    :catchall_3
    move-exception v5

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v5

    .line 170
    .end local v1    # "fragmentLength":I
    .end local v2    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local v3    # "miu":I
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 119
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Socket not connected."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 121
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 122
    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    iget-object v3, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 126
    :try_start_2
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    invoke-static {v2, p1}, Lcom/android/nfc/snep/SnepMessage;->getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 127
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_2
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    :try_start_3
    monitor-exit v3

    return-object v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 131
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public put(Landroid/nfc/NdefMessage;)V
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 100
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Socket not connected."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 102
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 103
    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    iget-object v3, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 107
    :try_start_2
    invoke-static {p1}, Lcom/android/nfc/snep/SnepMessage;->getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 108
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_2
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    :try_start_3
    monitor-exit v3

    .line 113
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 112
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
