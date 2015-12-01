.class public final Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"


# instance fields
.field public final activity:Landroid/content/ComponentName;

.field public final time:J

.field public final weight:F


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JF)V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 983
    iput-wide p2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->time:J

    .line 984
    iput p4, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    .line 985
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JF)V
    .locals 1

    .prologue
    .line 971
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 972
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 999
    if-ne p0, p1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return v0

    .line 1002
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1003
    goto :goto_0

    .line 1005
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1006
    goto :goto_0

    .line 1008
    :cond_3
    check-cast p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;

    .line 1009
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v2, :cond_4

    .line 1010
    iget-object v2, p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-eqz v2, :cond_5

    move v0, v1

    .line 1011
    goto :goto_0

    .line 1013
    :cond_4
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 1014
    goto :goto_0

    .line 1016
    :cond_5
    iget-wide v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->time:J

    iget-wide v4, p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->time:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    .line 1017
    goto :goto_0

    .line 1019
    :cond_6
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 1020
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 989
    .line 991
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 992
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->time:J

    iget-wide v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->time:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 993
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 994
    return v0

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v1, "; activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v1, "; time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1031
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
