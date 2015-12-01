.class public Lcom/htc/lib0/media/zoe/HtcZoeMetadata;
.super Ljava/lang/Object;
.source "HtcZoeMetadata.java"


# static fields
.field private static final dataKey:[Ljava/lang/String;

.field private static final keyReadOnly:[Ljava/lang/String;

.field private static final metaDataKeyForInt:[Ljava/lang/String;

.field private static final metaDataKeyForString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ZJPG"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->dataKey:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ZCVR"

    aput-object v1, v0, v3

    const-string v1, "ZSHT"

    aput-object v1, v0, v4

    const-string v1, "ZPTW"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "ZPTH"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DLen"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SLMT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CamD"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->metaDataKeyForInt:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "HMTT"

    aput-object v1, v0, v3

    const-string v1, "KLOC"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->metaDataKeyForString:[Ljava/lang/String;

    .line 104
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SLMT"

    aput-object v1, v0, v3

    const-string v1, "KLOC"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->keyReadOnly:[Ljava/lang/String;

    return-void
.end method

.method public static isDataKeyValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 114
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 117
    :goto_0
    sget-object v2, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->dataKey:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 118
    sget-object v2, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->dataKey:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 119
    const/4 v1, 0x1

    .line 122
    :cond_2
    return v1

    .line 117
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isKeyReadOnly(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 169
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 172
    :goto_0
    sget-object v2, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->keyReadOnly:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 173
    sget-object v2, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->keyReadOnly:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 174
    const/4 v1, 0x1

    .line 177
    :cond_2
    return v1

    .line 172
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isMetadataKeyValidForInt(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 132
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 135
    :goto_0
    sget-object v2, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->metaDataKeyForInt:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 136
    sget-object v2, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->metaDataKeyForInt:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 137
    const/4 v1, 0x1

    .line 141
    :cond_2
    return v1

    .line 135
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isMetadataKeyValidForString(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 154
    :goto_0
    sget-object v2, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->metaDataKeyForString:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 155
    sget-object v2, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->metaDataKeyForString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 156
    const/4 v1, 0x1

    .line 159
    :cond_2
    return v1

    .line 154
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
