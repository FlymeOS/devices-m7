.class public Lcom/android/internal/app/ProcessStats$DurationsTable;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationsTable"
.end annotation


# instance fields
.field public mDurationsTable:[I

.field public mDurationsTableSize:I

.field public final mName:Ljava/lang/String;

.field public final mStats:Lcom/android/internal/app/ProcessStats;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V
    .locals 0
    .param p1, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2810
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 2811
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    .line 2812
    return-void
.end method


# virtual methods
.method addDuration(IJ)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "dur"    # J

    .prologue
    .line 2867
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iget v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-static {v4, v5, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v1

    .line 2869
    .local v1, "idx":I
    if-ltz v1, :cond_0

    .line 2870
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v3, v4, v1

    .line 2881
    .local v3, "off":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v5, v3, v5

    sget v6, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2889
    .local v2, "longs":[J
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v4, v3, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v4, v5

    aget-wide v6, v2, v4

    add-long/2addr v6, p2

    aput-wide v6, v2, v4

    .line 2890
    .end local v2    # "longs":[J
    :goto_1
    return-void

    .line 2872
    .end local v3    # "off":I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iput-object v5, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2873
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    iput v5, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2874
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    xor-int/lit8 v5, v1, -0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p1, v6}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v3

    .line 2875
    .restart local v3    # "off":I
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    .line 2876
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    goto :goto_0

    .line 2882
    :catch_0
    move-exception v0

    .line 2883
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ProcessStats"

    const-string v5, "Encounter IndexOutOfBoundsException!!! Ignoring duration data adding..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V
    .locals 6
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$DurationsTable;

    .prologue
    .line 2834
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v1, v3, :cond_0

    .line 2835
    iget-object v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v0, v3, v1

    .line 2836
    .local v0, "ent":I
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v3, v0, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v2, v3, v4

    .line 2839
    .local v2, "state":I
    iget-object v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 2834
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2841
    .end local v0    # "ent":I
    .end local v2    # "state":I
    :cond_0
    return-void
.end method

.method copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V
    .locals 9
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$DurationsTable;

    .prologue
    const/4 v8, 0x0

    .line 2815
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    if-eqz v4, :cond_1

    .line 2816
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2817
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iput v8, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v0, v4, :cond_0

    .line 2819
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v2, v4, v0

    .line 2820
    .local v2, "origEnt":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v4, v2, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    .line 2821
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v1

    .line 2822
    .local v1, "newOff":I
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v5, v1, v3

    aput v5, v4, v0

    .line 2823
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v5, v2, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    invoke-virtual {v4, v1, v8, v6, v7}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    .line 2818
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2825
    .end local v1    # "newOff":I
    .end local v2    # "origEnt":I
    .end local v3    # "type":I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v4, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    .line 2826
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v4, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    .line 2831
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 2828
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    .line 2829
    iput v8, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    goto :goto_1
.end method

.method getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 2893
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 2894
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method readDurationsFromParcel(Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 2858
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    const-string v3, "durations"

    # invokes: Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    .line 2859
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    sget-object v2, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-ne v1, v2, :cond_0

    .line 2863
    :goto_0
    return v0

    .line 2862
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    array-length v0, v0

    :cond_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    .line 2863
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resetDurationsSafely()V
    .locals 1

    .prologue
    .line 2844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    .line 2845
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    .line 2846
    return-void
.end method

.method writeDurationsToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 2849
    iget v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2850
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v0, v1, :cond_0

    .line 2853
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2855
    :cond_0
    return-void
.end method
