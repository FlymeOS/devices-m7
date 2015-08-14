.class public final Lcom/android/nfc/snep/SnepMessage;
.super Ljava/lang/Object;
.source "SnepMessage.java"


# static fields
.field private static final HEADER_LENGTH:I = 0x6

.field public static final MAL:I = -0x1

.field public static final MAL_IUT:I = 0x400

.field public static final REQUEST_CONTINUE:B = 0x0t

.field public static final REQUEST_GET:B = 0x1t

.field public static final REQUEST_PUT:B = 0x2t

.field public static final REQUEST_REJECT:B = 0x7ft

.field public static final REQUEST_RFU:B = 0x3t

.field public static final RESPONSE_BAD_REQUEST:B = -0x3et

.field public static final RESPONSE_CONTINUE:B = -0x80t

.field public static final RESPONSE_EXCESS_DATA:B = -0x3ft

.field public static final RESPONSE_NOT_FOUND:B = -0x40t

.field public static final RESPONSE_NOT_IMPLEMENTED:B = -0x20t

.field public static final RESPONSE_REJECT:B = -0x1t

.field public static final RESPONSE_SUCCESS:B = -0x7ft

.field public static final RESPONSE_UNSUPPORTED_VERSION:B = -0x1ft

.field public static final VERSION:B = 0x10t

.field public static final VERSION_MAJOR:B = 0x1t

.field public static final VERSION_MINOR:B


# instance fields
.field private final mAcceptableLength:I

.field private final mField:B

.field private final mLength:I

.field private final mNdefMessage:Landroid/nfc/NdefMessage;

.field private final mVersion:B


# direct methods
.method constructor <init>(BBIILandroid/nfc/NdefMessage;)V
    .locals 0
    .param p1, "version"    # B
    .param p2, "field"    # B
    .param p3, "length"    # I
    .param p4, "acceptableLength"    # I
    .param p5, "ndefMessage"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-byte p1, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    .line 179
    iput-byte p2, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    .line 180
    iput p3, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 181
    iput p4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 182
    iput-object p5, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 183
    return-void
.end method

.method private constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 154
    .local v1, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    .line 155
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    .line 156
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .line 157
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 159
    const/16 v3, 0xa

    .line 160
    .local v3, "ndefOffset":I
    iget v4, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    add-int/lit8 v2, v4, -0x4

    .line 167
    .local v2, "ndefLength":I
    :goto_0
    if-lez v2, :cond_1

    .line 168
    new-array v0, v2, [B

    .line 169
    .local v0, "bytes":[B
    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 170
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V

    iput-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 174
    .end local v0    # "bytes":[B
    :goto_1
    return-void

    .line 162
    .end local v2    # "ndefLength":I
    .end local v3    # "ndefOffset":I
    :cond_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    .line 163
    const/4 v3, 0x6

    .line 164
    .restart local v3    # "ndefOffset":I
    iget v2, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    .restart local v2    # "ndefLength":I
    goto :goto_0

    .line 172
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    goto :goto_1
.end method

.method public static fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    invoke-direct {v0, p0}, Lcom/android/nfc/snep/SnepMessage;-><init>([B)V

    return-object v0
.end method

.method public static getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 6
    .param p0, "acceptableLength"    # I
    .param p1, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 79
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x4

    move v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getLargeNdef()Landroid/nfc/NdefMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 105
    const-string v5, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at lorem nunc, ut venenatis quam. Etiam id dolor quam, at viverra dolor. Phasellus eu lacus ligula, quis euismod erat. Sed feugiat, ligula at mollis aliquet, justo lacus condimentum eros, non tincidunt neque ipsum eu risus. Sed adipiscing dui euismod tellus ullamcorper ornare. Phasellus mattis risus et lectus euismod eu fermentum sem cursus. Phasellus tristique consectetur mauris eu porttitor. Sed lobortis porttitor orci."

    .line 113
    .local v5, "snep_test_data2":Ljava/lang/String;
    const-string v1, "la"

    .line 114
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 115
    .local v6, "textBytes":[B
    const-string v8, "US-ASCII"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 116
    .local v2, "langBytes":[B
    array-length v3, v2

    .line 117
    .local v3, "langLength":I
    array-length v7, v6

    .line 119
    .local v7, "textLength":I
    add-int/lit8 v8, v3, 0x1

    add-int/2addr v8, v7

    new-array v4, v8, [B

    .line 120
    .local v4, "payload":[B
    int-to-byte v8, v3

    aput-byte v8, v4, v10

    .line 122
    invoke-static {v2, v10, v4, v11, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 123
    add-int/lit8 v8, v3, 0x1

    invoke-static {v6, v10, v4, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 125
    new-instance v0, Landroid/nfc/NdefRecord;

    sget-object v8, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v9, v10, [B

    invoke-direct {v0, v11, v8, v9, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 126
    .local v0, "data2":Landroid/nfc/NdefRecord;
    new-instance v8, Landroid/nfc/NdefMessage;

    new-array v9, v11, [Landroid/nfc/NdefRecord;

    aput-object v0, v9, v10

    invoke-direct {v8, v9}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v8
.end method

.method public static getMessage(B)Lcom/android/nfc/snep/SnepMessage;
    .locals 6
    .param p0, "field"    # B

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/4 v5, 0x0

    move v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 6
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 84
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v0
.end method

.method public static getSmallNdef()Landroid/nfc/NdefMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 131
    const-string v5, "Lorem ipsum dolor sit amet."

    .line 132
    .local v5, "snep_test_data1":Ljava/lang/String;
    const-string v1, "la"

    .line 133
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 134
    .local v6, "textBytes":[B
    const-string v8, "US-ASCII"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 135
    .local v2, "langBytes":[B
    array-length v3, v2

    .line 136
    .local v3, "langLength":I
    array-length v7, v6

    .line 138
    .local v7, "textLength":I
    add-int/lit8 v8, v3, 0x1

    add-int/2addr v8, v7

    new-array v4, v8, [B

    .line 139
    .local v4, "payload":[B
    int-to-byte v8, v3

    aput-byte v8, v4, v10

    .line 141
    invoke-static {v2, v10, v4, v11, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 142
    add-int/lit8 v8, v3, 0x1

    invoke-static {v6, v10, v4, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 144
    new-instance v0, Landroid/nfc/NdefRecord;

    sget-object v8, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v9, v10, [B

    invoke-direct {v0, v11, v8, v9, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 145
    .local v0, "data1":Landroid/nfc/NdefRecord;
    new-instance v8, Landroid/nfc/NdefMessage;

    new-array v9, v11, [Landroid/nfc/NdefRecord;

    aput-object v0, v9, v10

    invoke-direct {v8, v9}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v8
.end method

.method public static getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 10
    .param p0, "ndef"    # Landroid/nfc/NdefMessage;

    .prologue
    const/16 v1, 0x10

    const/16 v2, -0x7f

    const/4 v3, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 93
    new-instance v0, Lcom/android/nfc/snep/SnepMessage;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/android/nfc/snep/SnepMessage;

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v7, v0

    move v5, v1

    move v6, v2

    move v8, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getAcceptableLength()I
    .locals 2

    .prologue
    .line 245
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Acceptable Length only available on get request messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget v0, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    return v0
.end method

.method public getField()B
    .locals 1

    .prologue
    .line 233
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/nfc/snep/SnepMessage;->mLength:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 237
    iget-byte v0, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    return v0
.end method

.method public toByteArray()[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 187
    iget-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    if-eqz v4, :cond_3

    .line 188
    sget-boolean v4, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    if-eqz v4, :cond_2

    .line 189
    sget v4, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    sget v4, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 205
    .local v1, "bytes":[B
    :goto_0
    :try_start_0
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    if-ne v4, v6, :cond_4

    .line 206
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 211
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    .local v3, "output":Ljava/io/DataOutputStream;
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mVersion:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 213
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 214
    iget-byte v4, p0, Lcom/android/nfc/snep/SnepMessage;->mField:B

    if-ne v4, v6, :cond_5

    .line 215
    array-length v4, v1

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 216
    iget v4, p0, Lcom/android/nfc/snep/SnepMessage;->mAcceptableLength:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    :goto_3
    return-object v4

    .line 192
    .end local v1    # "bytes":[B
    :cond_1
    const/16 v4, 0x25

    new-array v1, v4, [B

    fill-array-data v1, :array_0

    .restart local v1    # "bytes":[B
    goto :goto_0

    .line 197
    .end local v1    # "bytes":[B
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/snep/SnepMessage;->mNdefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .restart local v1    # "bytes":[B
    goto :goto_0

    .line 200
    .end local v1    # "bytes":[B
    :cond_3
    const/4 v4, 0x0

    new-array v1, v4, [B

    .restart local v1    # "bytes":[B
    goto :goto_0

    .line 208
    :cond_4
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 218
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    :cond_5
    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 221
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_3

    .line 192
    nop

    :array_0
    .array-data 1
        -0x3ft
        0x1t
        0x0t
        0x0t
        0x0t
        0x1et
        0x54t
        0x2t
        0x6ct
        0x61t
        0x4ct
        0x6ft
        0x72t
        0x65t
        0x6dt
        0x20t
        0x69t
        0x70t
        0x73t
        0x75t
        0x6dt
        0x20t
        0x64t
        0x6ft
        0x6ct
        0x6ft
        0x72t
        0x20t
        0x73t
        0x69t
        0x74t
        0x20t
        0x61t
        0x6dt
        0x65t
        0x74t
        0x2et
    .end array-data
.end method
