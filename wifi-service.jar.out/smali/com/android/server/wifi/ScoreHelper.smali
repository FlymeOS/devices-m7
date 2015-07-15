.class public Lcom/android/server/wifi/ScoreHelper;
.super Ljava/lang/Object;
.source "ScoreHelper.java"


# static fields
.field public static final CONFIG_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi_scoreap.conf"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ScoreHelper"

.field public static final TYPE_ACTIVEUSE:I = 0x4

.field public static final TYPE_DISCONNECTION:I = 0x3

.field public static final TYPE_FREQUENCY:I = 0x2

.field public static final TYPE_RSSI:I = 0x0

.field public static final TYPE_TX:I = 0x1


# instance fields
.field private CONFIGS:[Ljava/lang/String;

.field private WEIGHTS:[I

.field public m_APRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/APRecords;",
            ">;"
        }
    .end annotation
.end field

.field public m_ApChannelList:Landroid/util/SparseIntArray;

.field public m_ApScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public m_ScoreResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private m_WifiConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public scoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScoreChart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/APRecords;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "scanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .local p2, "apRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/APRecords;>;"
    const/4 v4, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    .line 39
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v7

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, ""

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    .line 41
    iput-object v6, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    .line 42
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    .line 43
    iput-object v6, p0, Lcom/android/server/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    .line 44
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    .line 76
    iput-object v6, p0, Lcom/android/server/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    .line 93
    iput-object p1, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    .line 94
    iput-object p2, p0, Lcom/android/server/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    .line 96
    iget-object v3, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 97
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget v3, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v3}, Lcom/android/server/wifi/ScoreConstants;->getWifiChannelNumber(I)I

    move-result v0

    .line 98
    .local v0, "channel":I
    iget-object v3, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 117
    .end local v0    # "channel":I
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0xf
        0xf
        0xa
        0x32
        0xa
    .end array-data
.end method

.method private computeScoreActiveUse(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 228
    new-instance v0, Lcom/android/server/wifi/ScoreActiveUse;

    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/ScoreActiveUse;-><init>(ILjava/lang/String;)V

    .line 229
    .local v0, "score":Lcom/android/server/wifi/ScoreActiveUse;
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/ScoreActiveUse;->m_APRecords:Ljava/util/List;

    .line 231
    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/ScoreActiveUse;->Score(Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    return v1
.end method

.method private computeScoreDisconnection(Ljava/lang/String;)I
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 235
    new-instance v0, Lcom/android/server/wifi/ScoreDisconnection;

    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/ScoreDisconnection;-><init>(ILjava/lang/String;)V

    .line 236
    .local v0, "score":Lcom/android/server/wifi/ScoreDisconnection;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/ScoreDisconnection;->m_APRecords:Ljava/util/List;

    .line 238
    invoke-virtual {v0}, Lcom/android/server/wifi/ScoreDisconnection;->Score()I

    move-result v1

    return v1
.end method

.method private computeScoreFrequencyBand(Ljava/lang/String;I)I
    .locals 9
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "freq"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 254
    invoke-static {p2}, Lcom/android/server/wifi/ScoreConstants;->getWifiChannelNumber(I)I

    move-result v1

    .line 256
    .local v1, "channel":I
    iget-object v4, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int v3, v4, v5

    .line 257
    .local v3, "upper":I
    iget-object v4, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int v2, v4, v5

    .line 258
    .local v2, "lower":I
    iget-object v4, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApChannelList:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 259
    .local v0, "center":I
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 263
    :cond_0
    new-instance v4, Lcom/android/server/wifi/ScoreFrequencyBand;

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-direct {v4, v5, v6}, Lcom/android/server/wifi/ScoreFrequencyBand;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v0, v5, v7

    const/4 v6, 0x1

    aput v2, v5, v6

    aput v3, v5, v8

    invoke-virtual {v4, p2, v5}, Lcom/android/server/wifi/ScoreFrequencyBand;->Score(I[I)I

    move-result v4

    return v4
.end method

.method private computeScoreRssi(II)I
    .locals 4
    .param p1, "freq"    # I
    .param p2, "rssi"    # I

    .prologue
    const/4 v3, 0x0

    .line 242
    new-instance v0, Lcom/android/server/wifi/ScoreRSSI;

    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/ScoreRSSI;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/ScoreRSSI;->Score(II)I

    move-result v0

    return v0
.end method

.method private computeScoreTx(Ljava/lang/String;I)I
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "rssi"    # I

    .prologue
    const/4 v3, 0x1

    .line 246
    new-instance v0, Lcom/android/server/wifi/ScoreTx;

    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/ScoreTx;-><init>(ILjava/lang/String;)V

    .line 247
    .local v0, "score":Lcom/android/server/wifi/ScoreTx;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScoreHelper;->getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/ScoreTx;->m_APRecords:Ljava/util/List;

    .line 249
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/ScoreTx;->Score(I)I

    move-result v1

    return v1
.end method

.method private readConfigFile()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 306
    const-string v9, "ScoreHelper"

    const-string v10, " + readConfigFile"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v6, 0x0

    .line 308
    .local v6, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 309
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 310
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 313
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v9, "/data/misc/wifi_scoreap.conf"

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 315
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 316
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + config line read: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v9, "\\="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 320
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + config line length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    array-length v9, v6

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    .line 323
    const-string v9, "ScoreHelper"

    const-string v10, " + Invalid config line. Moving on..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 338
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v9, "ScoreHelper"

    const-string v10, " + Not found ScoreAP config file"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 342
    if-eqz v1, :cond_0

    .line 343
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 346
    :cond_0
    if-eqz v4, :cond_1

    .line 347
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    move v7, v8

    .line 351
    :goto_3
    return v7

    .line 326
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const/4 v9, 0x0

    :try_start_6
    aget-object v9, v6, v9

    const-string v10, "WEIGHT_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 327
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/ScoreHelper;->readConfigWeight(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 340
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_4
    :try_start_7
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 342
    if-eqz v1, :cond_3

    .line 343
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 346
    :cond_3
    if-eqz v4, :cond_1

    .line 347
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 348
    :catch_2
    move-exception v0

    goto :goto_3

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    const/4 v9, 0x0

    :try_start_a
    aget-object v9, v6, v9

    const-string v10, "CONFIG_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 330
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/ScoreHelper;->readConfigs(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 342
    :catchall_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v1, :cond_5

    .line 343
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 346
    :cond_5
    if-eqz v4, :cond_6

    .line 347
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 348
    :cond_6
    throw v8

    .line 333
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :try_start_d
    const-string v9, "ScoreHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " + Invalid config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 342
    :cond_8
    if-eqz v2, :cond_9

    .line 343
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 346
    :cond_9
    if-eqz v5, :cond_a

    .line 347
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 348
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 344
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 344
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 348
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 344
    :catch_7
    move-exception v0

    goto/16 :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_5

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 339
    :catch_a
    move-exception v0

    goto/16 :goto_4

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_b
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 337
    :catch_c
    move-exception v0

    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_a
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private readConfigWeight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v1, "WEIGHT_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    .line 286
    .local v0, "ret":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 290
    :goto_1
    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 292
    const-string v1, "WEIGHT_RSSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    goto :goto_0

    .line 294
    :cond_2
    const-string v1, "WEIGHT_TX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    goto :goto_0

    .line 296
    :cond_3
    const-string v1, "WEIGHT_FREQUENCY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    goto :goto_0

    .line 298
    :cond_4
    const-string v1, "WEIGHT_DISCONNECTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 299
    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x3

    aput v0, v1, v2

    goto :goto_0

    .line 300
    :cond_5
    const-string v1, "WEIGHT_ACTIVEUSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v2, 0x4

    aput v0, v1, v2

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private readConfigs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "CONFIG_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v0, "CONFIG_RSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    .line 271
    :cond_2
    const-string v0, "CONFIG_TX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    .line 273
    :cond_3
    const-string v0, "CONFIG_FREQUENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    .line 275
    :cond_4
    const-string v0, "CONFIG_DISCONNECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    iget-object v0, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 277
    :cond_5
    const-string v0, "CONFIG_ACTIVEUSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/ScoreHelper;->CONFIGS:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p2, v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public computeScore()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 156
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    if-nez v5, :cond_0

    move-object v5, v6

    .line 224
    :goto_0
    return-object v5

    .line 157
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_0

    .line 159
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 161
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 163
    .local v3, "result":Landroid/net/wifi/ScanResult;
    new-instance v4, Lcom/android/server/wifi/ScoreChart;

    invoke-direct {v4}, Lcom/android/server/wifi/ScoreChart;-><init>()V

    .line 164
    .local v4, "score":Lcom/android/server/wifi/ScoreChart;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/wifi/ScoreChart;->ssid:Ljava/lang/String;

    .line 165
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/wifi/ScoreChart;->bssid:Ljava/lang/String;

    .line 166
    iget v5, v3, Landroid/net/wifi/ScanResult;->frequency:I

    iget v7, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/ScoreHelper;->computeScoreRssi(II)I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/ScoreChart;->score_rssi:I

    .line 167
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v7, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/ScoreHelper;->computeScoreTx(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/ScoreChart;->score_tx:I

    .line 168
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v7, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/ScoreHelper;->computeScoreFrequencyBand(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/ScoreChart;->score_frequency:I

    .line 169
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->WEIGHTS:[I

    const/4 v7, 0x3

    aget v5, v5, v7

    iput v5, v4, Lcom/android/server/wifi/ScoreChart;->score_disconnect:I

    .line 170
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v7, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/ScoreHelper;->computeScoreActiveUse(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/ScoreChart;->score_activeuse:I

    .line 172
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 175
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "score":Lcom/android/server/wifi/ScoreChart;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    new-instance v7, Lcom/android/server/wifi/ScoreHelper$2;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/ScoreHelper$2;-><init>(Lcom/android/server/wifi/ScoreHelper;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    const/16 v2, 0xa

    .line 201
    .local v2, "numberOfLogPrint":I
    :try_start_0
    const-string v5, "ScoreHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only print Top "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in ApScanList"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 203
    .restart local v3    # "result":Landroid/net/wifi/ScanResult;
    const-string v7, "ScoreHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " + ScoreResult: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%3s"

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScoreChart;

    invoke-virtual {v5}, Lcom/android/server/wifi/ScoreChart;->Score()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", AP: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%32s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Rssi: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%2s"

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScoreChart;

    iget v5, v5, Lcom/android/server/wifi/ScoreChart;->score_rssi:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Tx: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%2s"

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScoreChart;

    iget v5, v5, Lcom/android/server/wifi/ScoreChart;->score_tx:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Freq: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%2s"

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScoreChart;

    iget v5, v5, Lcom/android/server/wifi/ScoreChart;->score_frequency:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Disconn: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%2s"

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScoreChart;

    iget v5, v5, Lcom/android/server/wifi/ScoreChart;->score_disconnect:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Last Used: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%2s"

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->scoreMap:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScoreChart;

    iget v5, v5, Lcom/android/server/wifi/ScoreChart;->score_activeuse:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_4

    .line 221
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    .line 222
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    iget-object v5, p0, Lcom/android/server/wifi/ScoreHelper;->m_ApScanList:Ljava/util/List;

    goto/16 :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "ScoreHelper"

    const-string v7, " + computeScore got IndexOutOfBoundsException"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 218
    goto/16 :goto_0
.end method

.method public computeScore(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "securityType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v4, p0, Lcom/android/server/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    if-nez v4, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wifi/ScoreHelper;->computeScore()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 148
    :goto_0
    return-object v2

    .line 124
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v4, p0, Lcom/android/server/wifi/ScoreHelper;->m_ScoreResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 126
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "isFind":Z
    const-string v4, "WPA"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "WPA-PSK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "WPA2-PSK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    :cond_2
    const/4 v1, 0x1

    .line 141
    :cond_3
    :goto_2
    if-eqz v1, :cond_9

    .line 142
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_4
    const-string v4, "OPEN"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 132
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[ESS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[WPS][ESS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 134
    :cond_6
    const-string v4, "WPA-EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 135
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "WPA-EAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "WPA2-EAP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 138
    :cond_8
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    const/4 v1, 0x1

    goto :goto_2

    .line 143
    :cond_9
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, "ScoreHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ScoreAP] + Not found securityType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in scan_ssid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",scan_ssid_security:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 147
    .end local v1    # "isFind":Z
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_a
    const-string v4, "ScoreHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " + computeScore("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getMatchingAPRecords(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/APRecords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/APRecords;>;"
    iget-object v3, p0, Lcom/android/server/wifi/ScoreHelper;->m_APRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/APRecords;

    .line 82
    .local v2, "record":Lcom/android/server/wifi/APRecords;
    invoke-virtual {v2}, Lcom/android/server/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v2    # "record":Lcom/android/server/wifi/APRecords;
    :cond_1
    return-object v1
.end method

.method public setWifiConfigurationList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/ScoreHelper;->m_WifiConfigList:Ljava/util/List;

    new-instance v1, Lcom/android/server/wifi/ScoreHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/ScoreHelper$1;-><init>(Lcom/android/server/wifi/ScoreHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
