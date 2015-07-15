.class public Lcom/android/server/wifi/ScoreActiveUse;
.super Lcom/android/server/wifi/ScoreBase;
.source "ScoreActiveUse.java"


# instance fields
.field private ScoreTable:[F


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "weight"    # I
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x4

    .line 20
    invoke-direct {p0}, Lcom/android/server/wifi/ScoreBase;-><init>()V

    .line 18
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/ScoreActiveUse;->ScoreTable:[F

    .line 21
    if-le p1, v2, :cond_0

    iput v2, p0, Lcom/android/server/wifi/ScoreActiveUse;->WEIGHT:I

    .line 25
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/ScoreActiveUse;->loadConfig(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/server/wifi/ScoreActiveUse;->ScoreTable:[F

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/ScoreActiveUse;->ScoreTable:[F

    array-length v0, v0

    if-lez v0, :cond_2

    .line 32
    :goto_1
    return-void

    .line 22
    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ScoreActiveUse;->WEIGHT:I

    goto :goto_0

    .line 23
    :cond_1
    iput p1, p0, Lcom/android/server/wifi/ScoreActiveUse;->WEIGHT:I

    goto :goto_0

    .line 31
    :cond_2
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/wifi/ScoreActiveUse;->ScoreTable:[F

    goto :goto_1

    .line 18
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    .line 31
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 6
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 35
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    const-string v4, "\\,"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "values":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 41
    array-length v4, v3

    new-array v2, v4, [F

    .line 42
    .local v2, "ret":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 44
    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iput-object v2, p0, Lcom/android/server/wifi/ScoreActiveUse;->ScoreTable:[F

    goto :goto_0
.end method


# virtual methods
.method public Score(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v2, p0, Lcom/android/server/wifi/ScoreActiveUse;->ScoreTable:[F

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 55
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/ScoreActiveUse;->ScoreTable:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 56
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_1

    .line 60
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/ScoreActiveUse;->ScoreTable:[F

    aget v2, v2, v1

    iget v3, p0, Lcom/android/server/wifi/ScoreActiveUse;->WEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 62
    return v1

    .line 57
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
