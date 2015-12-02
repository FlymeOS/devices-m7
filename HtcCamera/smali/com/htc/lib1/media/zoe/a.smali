.class public Lcom/htc/lib1/media/zoe/a;
.super Lcom/htc/lib0/media/zoe/HtcZoeMetadata;
.source "HtcZoeMetadata.java"


# direct methods
.method protected static a([C)I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 36
    .line 37
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eq v1, v4, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v0

    .line 42
    :goto_0
    if-ge v0, v4, :cond_2

    .line 43
    aget-char v2, p0, v0

    int-to-byte v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    rsub-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_2
    return v1
.end method
