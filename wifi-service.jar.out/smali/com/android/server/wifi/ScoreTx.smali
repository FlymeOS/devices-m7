.class public Lcom/android/server/wifi/ScoreTx;
.super Lcom/android/server/wifi/ScoreBase;
.source "ScoreTx.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_TX_RATE:I = 0x36

.field private static final TAG:Ljava/lang/String; = "ScoreTx"

.field private static final THRESHOLD_DELTA_RSSI:I = 0x5


# instance fields
.field private PerScoreTable:[F

.field private ScoreTable:[I

.field private TxRateTable:[I

.field private score_refTxPER:F


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "weight"    # I
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x64

    const/4 v3, 0x6

    const/16 v2, 0xb

    .line 28
    invoke-direct {p0}, Lcom/android/server/wifi/ScoreBase;-><init>()V

    .line 19
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    .line 20
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/wifi/ScoreTx;->ScoreTable:[I

    .line 21
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/wifi/ScoreTx;->PerScoreTable:[F

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wifi/ScoreTx;->score_refTxPER:F

    .line 29
    if-le p1, v1, :cond_0

    iput v1, p0, Lcom/android/server/wifi/ScoreTx;->WEIGHT:I

    .line 33
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ScoreTx;->loadConfig(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/ScoreTx;->ScoreTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/ScoreTx;->PerScoreTable:[F

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/wifi/ScoreTx;->ScoreTable:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 42
    :goto_1
    return-void

    .line 30
    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ScoreTx;->WEIGHT:I

    goto :goto_0

    .line 31
    :cond_1
    iput p1, p0, Lcom/android/server/wifi/ScoreTx;->WEIGHT:I

    goto :goto_0

    .line 39
    :cond_2
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    .line 40
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/server/wifi/ScoreTx;->ScoreTable:[I

    .line 41
    new-array v0, v3, [F

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/server/wifi/ScoreTx;->PerScoreTable:[F

    goto :goto_1

    .line 19
    :array_0
    .array-data 4
        0x1
        0x6
        0x9
        0xc
        0x12
        0x18
        0x24
        0x30
        0x36
        0x41
        0x48
    .end array-data

    .line 20
    :array_1
    .array-data 4
        0x1
        0x5
        0x14
        0x23
        0x32
        0x41
        0x4b
        0x55
        0x5a
        0x5f
        0x64
    .end array-data

    .line 21
    :array_2
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 39
    :array_3
    .array-data 4
        0x1
        0x6
        0x9
        0xc
        0x12
        0x18
        0x24
        0x30
        0x36
        0x41
        0x48
    .end array-data

    .line 40
    :array_4
    .array-data 4
        0x1
        0x5
        0x14
        0x23
        0x32
        0x41
        0x4b
        0x55
        0x5a
        0x5f
        0x64
    .end array-data

    .line 41
    :array_5
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getAttenuation(I)F
    .locals 6
    .param p1, "rssi"    # I

    .prologue
    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "ret":F
    const/16 v3, -0x3c

    if-le p1, v3, :cond_0

    .line 144
    add-int/lit8 v3, p1, 0x3c

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    add-float v0, v5, v3

    move v1, v0

    .line 163
    .end local v0    # "ret":F
    .local v1, "ret":F
    :goto_0
    return v1

    .line 149
    .end local v1    # "ret":F
    .restart local v0    # "ret":F
    :cond_0
    const/4 v2, 0x0

    .line 151
    .local v2, "step":F
    const/16 v3, -0x41

    if-lt p1, v3, :cond_1

    const/4 v2, 0x0

    .line 160
    :goto_1
    div-float v3, v2, v4

    div-float v4, v2, v4

    mul-float/2addr v3, v4

    sub-float v0, v5, v3

    move v1, v0

    .line 163
    .end local v0    # "ret":F
    .restart local v1    # "ret":F
    goto :goto_0

    .line 152
    .end local v1    # "ret":F
    .restart local v0    # "ret":F
    :cond_1
    const/16 v3, -0x46

    if-lt p1, v3, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 153
    :cond_2
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    .line 154
    :cond_3
    const/16 v3, -0x50

    if-lt p1, v3, :cond_4

    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_1

    .line 155
    :cond_4
    const/16 v3, -0x55

    if-lt p1, v3, :cond_5

    const/high16 v2, 0x40800000    # 4.0f

    goto :goto_1

    .line 156
    :cond_5
    const/high16 v2, 0x40a00000    # 5.0f

    goto :goto_1
.end method

.method private getPerScore(I)F
    .locals 2
    .param p1, "per"    # I

    .prologue
    .line 169
    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScoreTx;->PerScoreTable:[F

    iget-object v1, p0, Lcom/android/server/wifi/ScoreTx;->PerScoreTable:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 170
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/ScoreTx;->PerScoreTable:[F

    div-int/lit8 v1, p1, 0x5

    rsub-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getPropulatedTxRate(I)I
    .locals 13
    .param p1, "rssi"    # I

    .prologue
    const/16 v12, -0x4b

    const/16 v8, 0x36

    const/16 v11, -0xff

    .line 84
    const/16 v5, -0xff

    .line 85
    .local v5, "refRssi":I
    const/4 v6, 0x0

    .line 86
    .local v6, "refTxPER":I
    const/16 v7, -0xff

    .line 87
    .local v7, "refTxRate":I
    const/16 v4, 0xff

    .line 89
    .local v4, "refDelta":I
    iget-object v9, p0, Lcom/android/server/wifi/ScoreTx;->m_APRecords:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v8

    .line 91
    :cond_1
    const/4 v3, 0x0

    .line 92
    .local v3, "refAPRecord":Lcom/android/server/wifi/APRecords;
    iget-object v9, p0, Lcom/android/server/wifi/ScoreTx;->m_APRecords:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/APRecords;

    .line 93
    .local v2, "record":Lcom/android/server/wifi/APRecords;
    invoke-virtual {v2}, Lcom/android/server/wifi/APRecords;->getRSSI()I

    move-result v9

    const/4 v10, -0x1

    if-gt v9, v10, :cond_2

    .line 94
    if-lt p1, v12, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 95
    :cond_3
    if-ge p1, v12, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wifi/APRecords;->getBSSID()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 96
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wifi/APRecords;->getRSSI()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 97
    .local v0, "delta":I
    if-ge v0, v4, :cond_2

    .line 98
    invoke-virtual {v2}, Lcom/android/server/wifi/APRecords;->getRSSI()I

    move-result v5

    .line 99
    invoke-virtual {v2}, Lcom/android/server/wifi/APRecords;->getTXRATE()I

    move-result v7

    .line 101
    move v4, v0

    .line 102
    move-object v3, v2

    goto :goto_1

    .line 106
    .end local v0    # "delta":I
    .end local v2    # "record":Lcom/android/server/wifi/APRecords;
    :cond_5
    if-eqz v3, :cond_0

    .line 110
    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 113
    if-eq v5, v11, :cond_0

    if-eq v6, v11, :cond_0

    if-eq v4, v11, :cond_0

    if-eq v7, v11, :cond_0

    .line 116
    const/4 v9, 0x5

    if-ge v4, v9, :cond_6

    move v8, v7

    goto :goto_0

    .line 120
    :cond_6
    invoke-direct {p0, p1, v5, v7, v6}, Lcom/android/server/wifi/ScoreTx;->propagateTxRate(IIII)I

    move-result v8

    .line 122
    .local v8, "ret":I
    goto :goto_0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 13
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p1, :cond_1

    .line 78
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 48
    const-string v11, "\\;"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "configs":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v0, v7

    .line 50
    .local v1, "conf":Ljava/lang/String;
    const-string v11, "\\:"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "data":[Ljava/lang/String;
    array-length v11, v3

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 53
    :cond_3
    const/4 v11, 0x1

    aget-object v11, v3, v11

    const-string v12, "\\,"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 54
    .local v10, "values":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x1

    if-lt v11, v12, :cond_2

    .line 56
    const/4 v5, 0x0

    .line 58
    .local v5, "err":Z
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "TxPERTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 59
    array-length v11, v10

    new-array v9, v11, [F

    .line 60
    .local v9, "ret":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v11, v10

    if-ge v6, v11, :cond_4

    .line 62
    :try_start_0
    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v9, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 63
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    .line 65
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    if-nez v5, :cond_2

    iput-object v9, p0, Lcom/android/server/wifi/ScoreTx;->PerScoreTable:[F

    goto :goto_1

    .line 67
    .end local v6    # "i":I
    .end local v9    # "ret":[F
    :cond_5
    array-length v11, v10

    new-array v9, v11, [I

    .line 68
    .local v9, "ret":[I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    array-length v11, v10

    if-ge v6, v11, :cond_6

    .line 70
    :try_start_1
    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 71
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    .line 73
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    if-nez v5, :cond_2

    .line 74
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "TxRateTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    iput-object v9, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    goto :goto_1

    .line 75
    :cond_7
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "TxScoreTable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    iput-object v9, p0, Lcom/android/server/wifi/ScoreTx;->ScoreTable:[I

    goto :goto_1
.end method

.method private propagateTxRate(IIII)I
    .locals 6
    .param p1, "rssi"    # I
    .param p2, "rssiRef"    # I
    .param p3, "txRateRef"    # I
    .param p4, "txPERRef"    # I

    .prologue
    .line 129
    int-to-float v2, p3

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, p4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 132
    .local v1, "txRef":I
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoreTx;->getAttenuation(I)F

    move-result v2

    int-to-float v3, v1

    invoke-direct {p0, p2}, Lcom/android/server/wifi/ScoreTx;->getAttenuation(I)F

    move-result v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 134
    .local v0, "ret":I
    return v0
.end method


# virtual methods
.method public Score(I)I
    .locals 4
    .param p1, "rssi"    # I

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/wifi/ScoreTx;->getPropulatedTxRate(I)I

    move-result v1

    .line 179
    .local v1, "txRateRef":I
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/ScoreTx;->getTxScore(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wifi/ScoreTx;->score_refTxPER:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 183
    .local v0, "ret":I
    return v0
.end method

.method public getTxScore(I)I
    .locals 4
    .param p1, "txRate"    # I

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "ret":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    aget v2, v2, v0

    if-gt p1, v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/android/server/wifi/ScoreTx;->ScoreTable:[I

    aget v2, v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/wifi/ScoreTx;->WEIGHT:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    iget-object v3, p0, Lcom/android/server/wifi/ScoreTx;->TxRateTable:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-lt p1, v2, :cond_1

    iget v2, p0, Lcom/android/server/wifi/ScoreTx;->WEIGHT:I

    int-to-float v1, v2

    .line 208
    :cond_1
    float-to-int v2, v1

    return v2

    .line 190
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
