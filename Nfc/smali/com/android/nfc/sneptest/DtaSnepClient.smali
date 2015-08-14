.class public final Lcom/android/nfc/sneptest/DtaSnepClient;
.super Ljava/lang/Object;
.source "DtaSnepClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x400

.field private static final DEFAULT_MIU:I = 0x80

.field private static final DEFAULT_PORT:I = 0x3f

.field private static final DEFAULT_RWSIZE:I = 0x1

.field private static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final DISCONNECTED:I = 0x0

.field private static final SNEP_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final TAG:Ljava/lang/String; = "DtaSnepClient"

.field public static mTestCaseId:I


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 62
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    .line 63
    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    .line 64
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    .line 66
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I

    .prologue
    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 71
    iput-object p1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    .line 73
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    .line 74
    iput v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    .line 75
    iput p2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    .line 76
    iput p3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    .line 77
    sput p4, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    .line 78
    return-void
.end method


# virtual methods
.method public DtaClientOperations()V
    .locals 3

    .prologue
    .line 82
    const-string v1, "DtaSnepClient"

    const-string v2, "Connecting remote server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    sget v1, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    packed-switch v1, :pswitch_data_0

    .line 226
    const-string v1, "DtaSnepClient"

    const-string v2, "Unknown test case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DtaSnepClient"

    const-string v2, "Error connecting remote server"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_0
    :try_start_1
    const-string v1, "DtaSnepClient"

    const-string v2, "PUT Small Ndef Data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    :goto_2
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto :goto_1

    .line 95
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_2
    const-string v1, "DtaSnepClient"

    const-string v2, "PUT Small Ndef Data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 117
    :goto_3
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto :goto_1

    .line 110
    :catch_3
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 113
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_2
    :try_start_3
    const-string v1, "DtaSnepClient"

    const-string v2, "PUT Small Ndef Data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 132
    :goto_4
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto :goto_1

    .line 125
    :catch_5
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 128
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_6
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_3
    :try_start_4
    const-string v1, "DtaSnepClient"

    const-string v2, "PUT Small Ndef Data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 147
    :goto_5
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto :goto_1

    .line 140
    :catch_7
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 143
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_8
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_4
    :try_start_5
    const-string v1, "DtaSnepClient"

    const-string v2, "PUT Large Ndef Data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 162
    :goto_6
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto/16 :goto_1

    .line 155
    :catch_9
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6

    .line 158
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_a
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_5
    :try_start_6
    const-string v1, "DtaSnepClient"

    const-string v2, "PUT Large Ndef Data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getLargeNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->put(Landroid/nfc/NdefMessage;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 177
    :goto_7
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto/16 :goto_1

    .line 170
    :catch_b
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_7

    .line 173
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_c
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_6
    :try_start_7
    const-string v1, "DtaSnepClient"

    const-string v2, "GET Ndef Message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    .line 192
    :goto_8
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto/16 :goto_1

    .line 185
    :catch_d
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_8

    .line 188
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_e
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_7
    :try_start_8
    const-string v1, "DtaSnepClient"

    const-string v2, "GET Ndef Message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10

    .line 207
    :goto_9
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto/16 :goto_1

    .line 200
    :catch_f
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_9

    .line 203
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_10
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_8
    :try_start_9
    const-string v1, "DtaSnepClient"

    const-string v2, "GET Ndef Message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcom/android/nfc/snep/SnepMessage;->getSmallNdef()Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/sneptest/DtaSnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12

    .line 222
    :goto_a
    invoke-virtual {p0}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    goto/16 :goto_1

    .line 215
    :catch_11
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_a

    .line 218
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_12
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public close()V
    .locals 2

    .prologue
    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 323
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 331
    :cond_0
    :goto_0
    monitor-exit p0

    .line 332
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 327
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 328
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

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

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    if-eqz v5, :cond_0

    .line 271
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Socket already in use."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 273
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    iput v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 274
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const/4 v4, 0x0

    .line 279
    .local v4, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_start_2
    const-string v5, "DtaSnepClient"

    const-string v6, "about to create socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMiu:I

    iget v8, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mRwSize:I

    const/16 v9, 0x400

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v4

    .line 282
    if-nez v4, :cond_1

    .line 283
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not connect to socket."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/android/nfc/LlcpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lcom/android/nfc/LlcpException;
    monitor-enter p0

    .line 297
    const/4 v5, 0x0

    :try_start_3
    iput v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 298
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 299
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not connect to socket"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 285
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    :cond_1
    :try_start_4
    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    if-ne v5, v10, :cond_2

    .line 286
    const-string v5, "DtaSnepClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "about to connect to service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mServiceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V

    .line 292
    :goto_0
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v3

    .line 293
    .local v3, "miu":I
    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    if-ne v5, v10, :cond_4

    move v1, v3

    .line 294
    .local v1, "fragmentLength":I
    :goto_1
    new-instance v2, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4, v1}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    :try_end_4
    .catch Lcom/android/nfc/LlcpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 313
    .local v2, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-enter p0

    .line 314
    :try_start_5
    iput-object v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 315
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 316
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 317
    return-void

    .line 289
    .end local v1    # "fragmentLength":I
    .end local v2    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local v3    # "miu":I
    :cond_2
    :try_start_6
    const-string v5, "DtaSnepClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "about to connect to port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mPort:I

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V
    :try_end_6
    .catch Lcom/android/nfc/LlcpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 300
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    if-eqz v4, :cond_3

    .line 303
    :try_start_7
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 307
    :cond_3
    :goto_2
    monitor-enter p0

    .line 308
    const/4 v5, 0x0

    :try_start_8
    iput v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    .line 309
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 310
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to connect to socket"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "miu":I
    :cond_4
    :try_start_9
    iget v5, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mFragmentLength:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v1

    goto :goto_1

    .line 298
    .end local v3    # "miu":I
    .local v0, "e":Lcom/android/nfc/LlcpException;
    :catchall_1
    move-exception v5

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v5

    .line 309
    .local v0, "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v5

    .line 316
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

    .line 304
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
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 253
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Socket not connected."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 255
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 256
    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    iget-object v3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    :try_start_2
    iget v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mAcceptableLength:I

    invoke-static {v2, p1}, Lcom/android/nfc/snep/SnepMessage;->getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 261
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_2
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    :try_start_3
    monitor-exit v3

    return-object v2

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 265
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
    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iget v2, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 234
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Socket not connected."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 236
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 237
    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    iget-object v3, p0, Lcom/android/nfc/sneptest/DtaSnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 241
    :try_start_2
    invoke-static {p1}, Lcom/android/nfc/snep/SnepMessage;->getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 242
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_2
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    :try_start_3
    monitor-exit v3

    .line 247
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 246
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
