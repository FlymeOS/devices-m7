.class public Lcom/android/nfc/snep/SnepMessenger;
.super Ljava/lang/Object;
.source "SnepMessenger.java"


# static fields
.field private static final DBG:Z

.field private static final HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnepMessenger"


# instance fields
.field final mFragmentLength:I

.field final mIsClient:Z

.field final mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    return-void
.end method

.method public constructor <init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 0
    .param p1, "isClient"    # Z
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 60
    iput p3, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    .line 61
    iput-boolean p1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    .line 62
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V

    .line 276
    return-void
.end method

.method public getMessage()Lcom/android/nfc/snep/SnepMessage;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/nfc/snep/SnepException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    iget v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 137
    .local v6, "buffer":Ljava/io/ByteArrayOutputStream;
    iget v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    new-array v12, v0, [B

    .line 139
    .local v12, "partial":[B
    const/4 v13, 0x0

    .line 140
    .local v13, "readSize":I
    const/4 v1, 0x0

    .line 141
    .local v1, "requestVersion":B
    const/4 v2, 0x0

    .line 142
    .local v2, "requestField":B
    const/4 v3, 0x0

    .line 143
    .local v3, "requestLength":I
    const/4 v8, 0x0

    .line 146
    .local v8, "doneReading":Z
    iget-boolean v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_1

    .line 147
    const/4 v10, 0x0

    .line 148
    .local v10, "fieldContinue":B
    const/16 v11, 0x7f

    .line 154
    .local v11, "fieldReject":B
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v14

    .line 155
    .local v14, "size":I
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SnepMessenger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    if-gez v14, :cond_2

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v11}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 162
    :goto_1
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Error reading SNEP message."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    .end local v10    # "fieldContinue":B
    .end local v11    # "fieldReject":B
    .end local v14    # "size":I
    :cond_1
    const/16 v10, -0x80

    .line 151
    .restart local v10    # "fieldContinue":B
    const/4 v11, -0x1

    .restart local v11    # "fieldReject":B
    goto :goto_0

    .line 163
    .restart local v14    # "size":I
    :cond_2
    const/4 v0, 0x6

    if-ge v14, v0, :cond_5

    .line 165
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_4

    .line 166
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "SnepMessenger"

    const-string v4, "Invalid header length"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 171
    :goto_2
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v11}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :goto_3
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Invalid fragment from sender."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v11}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 172
    :catch_0
    move-exception v0

    goto :goto_3

    .line 177
    :cond_5
    add-int/lit8 v13, v14, -0x6

    .line 178
    const/4 v0, 0x0

    invoke-virtual {v6, v12, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 181
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v7, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 183
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 184
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 186
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "SnepMessenger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v0, v0, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    .line 189
    sget-boolean v0, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    if-eqz v0, :cond_10

    .line 190
    const/16 v0, -0x1f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 198
    :cond_7
    sget-boolean v0, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    if-eqz v0, :cond_14

    .line 199
    iget-boolean v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v0, :cond_a

    const/16 v0, -0x80

    if-eq v2, v0, :cond_8

    const/16 v0, -0x7f

    if-eq v2, v0, :cond_8

    const/16 v0, -0x40

    if-ne v2, v0, :cond_a

    .line 203
    :cond_8
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "SnepMessenger"

    const-string v4, "errorneous response received, disconnecting client"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_9
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 206
    :cond_a
    iget-boolean v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v0, :cond_c

    const/4 v0, 0x3

    if-ne v2, v0, :cond_c

    .line 208
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SnepMessenger"

    const-string v4, "unknown request received, disconnecting client"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_b
    const/16 v0, -0x3e

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 212
    :cond_c
    iget-boolean v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    if-ne v2, v0, :cond_e

    .line 214
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "SnepMessenger"

    const-string v4, "errorneous PUT request received, disconnecting from server"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_d
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 217
    :cond_e
    iget-boolean v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x400

    if-le v3, v0, :cond_11

    .line 219
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "SnepMessenger"

    const-string v4, "responding reject"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_f
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    .line 267
    .end local v3    # "requestLength":I
    :goto_4
    return-object v0

    .line 194
    .restart local v3    # "requestLength":I
    :cond_10
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    goto :goto_4

    .line 222
    :cond_11
    iget-boolean v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v0, :cond_14

    const/16 v0, 0x400

    if-gt v3, v0, :cond_12

    const/4 v0, -0x1

    if-ne v3, v0, :cond_14

    .line 224
    :cond_12
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_13

    const-string v0, "SnepMessenger"

    const-string v4, "responding reject"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_13
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    goto :goto_4

    .line 229
    :cond_14
    if-le v3, v13, :cond_18

    .line 230
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "SnepMessenger"

    const-string v4, "requesting continuation"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_15
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 237
    :cond_16
    :goto_5
    if-nez v8, :cond_1a

    .line 239
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0, v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v14

    .line 240
    sget-boolean v0, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "SnepMessenger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 241
    :cond_17
    if-gez v14, :cond_19

    .line 243
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v11}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 247
    :goto_6
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 255
    :catch_1
    move-exception v9

    .line 257
    .local v9, "e":Ljava/io/IOException;
    :try_start_6
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v11}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 261
    :goto_7
    throw v9

    .line 233
    .end local v9    # "e":Ljava/io/IOException;
    :cond_18
    const/4 v8, 0x1

    goto :goto_5

    .line 249
    :cond_19
    add-int/2addr v13, v14

    .line 250
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {v6, v12, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 251
    if-ne v13, v3, :cond_16

    .line 252
    const/4 v8, 0x1

    goto :goto_5

    .line 267
    :cond_1a
    :try_start_8
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_8
    .catch Landroid/nfc/FormatException; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v0

    goto/16 :goto_4

    .line 268
    :catch_2
    move-exception v9

    .line 269
    .local v9, "e":Landroid/nfc/FormatException;
    const-string v0, "SnepMessenger"

    const-string v4, "Badly formatted NDEF message, ignoring"

    invoke-static {v0, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    new-instance v0, Lcom/android/nfc/snep/SnepException;

    invoke-direct {v0, v9}, Lcom/android/nfc/snep/SnepException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 258
    .local v9, "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_7

    .line 244
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    goto :goto_6

    .line 159
    .end local v7    # "dataIn":Ljava/io/DataInputStream;
    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method

.method public sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    .locals 12
    .param p1, "msg"    # Lcom/android/nfc/snep/SnepMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x6

    .line 65
    invoke-virtual {p1}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v0

    .line 67
    .local v0, "buffer":[B
    iget-boolean v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v8, :cond_3

    .line 68
    const/16 v4, -0x80

    .line 72
    .local v4, "remoteContinue":B
    :goto_0
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "SnepMessenger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    array-length v8, v0

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 76
    .local v2, "length":I
    const/4 v8, 0x0

    invoke-static {v0, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 77
    .local v7, "tmpBuffer":[B
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "SnepMessenger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte fragment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 80
    array-length v8, v0

    if-ne v2, v8, :cond_4

    .line 133
    :cond_2
    :goto_1
    return-void

    .line 70
    .end local v2    # "length":I
    .end local v4    # "remoteContinue":B
    .end local v7    # "tmpBuffer":[B
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "remoteContinue":B
    goto :goto_0

    .line 85
    .restart local v2    # "length":I
    .restart local v7    # "tmpBuffer":[B
    :cond_4
    move v3, v2

    .line 86
    .local v3, "offset":I
    new-array v5, v11, [B

    .line 87
    .local v5, "responseBytes":[B
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 90
    :try_start_0
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 95
    .local v6, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "SnepMessenger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got response from first fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_5
    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v8

    if-eq v8, v4, :cond_6

    .line 97
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid response from server ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 91
    .end local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Landroid/nfc/FormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid SNEP message"

    invoke-direct {v8, v9, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 102
    .end local v1    # "e":Landroid/nfc/FormatException;
    .restart local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_6
    sget-boolean v8, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    if-eqz v8, :cond_9

    .line 103
    iget-boolean v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v8, :cond_9

    sget v8, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    if-ne v8, v11, :cond_9

    .line 104
    array-length v8, v0

    sub-int/2addr v8, v3

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 105
    add-int v8, v3, v2

    invoke-static {v0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 106
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_7

    const-string v8, "SnepMessenger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte fragment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_7
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 108
    add-int/2addr v3, v2

    .line 110
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 113
    :try_start_1
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 117
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_8

    const-string v8, "SnepMessenger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got response from second fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_8
    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v8

    if-ne v8, v4, :cond_9

    .line 119
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto/16 :goto_1

    .line 114
    :catch_1
    move-exception v1

    .line 115
    .restart local v1    # "e":Landroid/nfc/FormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid SNEP message"

    invoke-direct {v8, v9, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 126
    .end local v1    # "e":Landroid/nfc/FormatException;
    :cond_9
    :goto_2
    array-length v8, v0

    if-ge v3, v8, :cond_2

    .line 127
    array-length v8, v0

    sub-int/2addr v8, v3

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 128
    add-int v8, v3, v2

    invoke-static {v0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 129
    sget-boolean v8, Lcom/android/nfc/snep/SnepMessenger;->DBG:Z

    if-eqz v8, :cond_a

    const-string v8, "SnepMessenger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte fragment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_a
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 131
    add-int/2addr v3, v2

    goto :goto_2
.end method
