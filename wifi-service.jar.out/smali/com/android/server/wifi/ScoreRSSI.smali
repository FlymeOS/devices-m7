.class public Lcom/android/server/wifi/ScoreRSSI;
.super Lcom/android/server/wifi/ScoreBase;
.source "ScoreRSSI.java"


# instance fields
.field public RSSI:I

.field private ScoreTable:[[I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 7
    .param p1, "weight"    # I
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Lcom/android/server/wifi/ScoreBase;-><init>()V

    .line 14
    new-array v0, v5, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    .line 19
    iput v2, p0, Lcom/android/server/wifi/ScoreRSSI;->RSSI:I

    .line 22
    if-le p1, v6, :cond_0

    iput v6, p0, Lcom/android/server/wifi/ScoreRSSI;->WEIGHT:I

    .line 26
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ScoreRSSI;->loadConfig(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 35
    :goto_1
    return-void

    .line 23
    :cond_0
    if-gez p1, :cond_1

    iput v2, p0, Lcom/android/server/wifi/ScoreRSSI;->WEIGHT:I

    goto :goto_0

    .line 24
    :cond_1
    iput p1, p0, Lcom/android/server/wifi/ScoreRSSI;->WEIGHT:I

    goto :goto_0

    .line 32
    :cond_2
    new-array v0, v5, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    goto :goto_1

    .line 14
    :array_0
    .array-data 4
        0x64
        0x5a
        0x50
        0x37
        0x28
        0x1e
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x50
        0x32
        0x14
        0x0
        0x0
        0x0
    .end array-data

    .line 32
    :array_2
    .array-data 4
        0x64
        0x5a
        0x50
        0x37
        0x28
        0x1e
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x64
        0x50
        0x32
        0x14
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 13
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p1, :cond_1

    .line 61
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 41
    const-string v11, "\\;"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 42
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

    .line 43
    .local v1, "conf":Ljava/lang/String;
    const-string v11, "\\:"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "data":[Ljava/lang/String;
    array-length v11, v3

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 42
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 46
    :cond_3
    const/4 v11, 0x1

    aget-object v11, v3, v11

    const-string v12, "\\,"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "values":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x1

    if-lt v11, v12, :cond_2

    .line 49
    const/4 v5, 0x0

    .line 51
    .local v5, "err":Z
    array-length v11, v10

    new-array v9, v11, [I

    .line 52
    .local v9, "ret":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v11, v10

    if-ge v6, v11, :cond_4

    .line 54
    :try_start_0
    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 55
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x1

    .line 57
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    if-nez v5, :cond_2

    .line 58
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "ScoreTable2.4G"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    const/4 v12, 0x0

    aput-object v9, v11, v12

    goto :goto_1

    .line 59
    :cond_5
    const/4 v11, 0x0

    aget-object v11, v3, v11

    const-string v12, "ScoreTable5G"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    const/4 v12, 0x1

    aput-object v9, v11, v12

    goto :goto_1
.end method


# virtual methods
.method public Score(II)I
    .locals 5
    .param p1, "frequency"    # I
    .param p2, "rssi"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    const/16 v4, 0x1388

    if-ge p1, v4, :cond_0

    move v0, v2

    .line 67
    .local v0, "band":I
    :goto_0
    const/4 v1, 0x0

    .line 69
    .local v1, "ret":F
    const/16 v4, -0x5a

    if-gt p2, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    int-to-float v1, v3

    .line 77
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v3, v3, v0

    aget v2, v3, v2

    int-to-float v2, v2

    div-float v2, v1, v2

    iget v3, p0, Lcom/android/server/wifi/ScoreRSSI;->WEIGHT:I

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 79
    float-to-int v2, v1

    return v2

    .end local v0    # "band":I
    .end local v1    # "ret":F
    :cond_0
    move v0, v3

    .line 65
    goto :goto_0

    .line 70
    .restart local v0    # "band":I
    .restart local v1    # "ret":F
    :cond_1
    const/16 v4, -0x55

    if-gt p2, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x5

    aget v3, v3, v4

    int-to-float v1, v3

    goto :goto_1

    .line 71
    :cond_2
    const/16 v4, -0x50

    if-gt p2, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x4

    aget v3, v3, v4

    int-to-float v1, v3

    goto :goto_1

    .line 72
    :cond_3
    const/16 v4, -0x4b

    if-gt p2, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v1, v3

    goto :goto_1

    .line 73
    :cond_4
    const/16 v4, -0x46

    if-gt p2, v4, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v1, v3

    goto :goto_1

    .line 74
    :cond_5
    const/16 v4, -0x41

    if-gt p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v4, v4, v0

    aget v3, v4, v3

    int-to-float v1, v3

    goto :goto_1

    .line 75
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/ScoreRSSI;->ScoreTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v2

    int-to-float v1, v3

    goto :goto_1
.end method
