.class public final Lcom/htc/camera/imaging/a;
.super Ljava/lang/Object;
.source "ExifUtility.java"


# direct methods
.method public static a([BILcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x49

    const/16 v5, 0x2a

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    if-eqz p2, :cond_0

    .line 24
    iput-object v2, p2, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 25
    :cond_0
    if-eqz p3, :cond_1

    .line 26
    iput-object v2, p3, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 27
    :cond_1
    array-length v2, p0

    add-int/lit8 v3, v2, -0x3

    :goto_0
    if-ge p1, v3, :cond_9

    .line 29
    aget-byte v2, p0, p1

    .line 30
    const/16 v4, 0x4d

    if-eq v2, v4, :cond_2

    if-ne v2, v6, :cond_8

    .line 32
    :cond_2
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_8

    .line 34
    if-ne v2, v6, :cond_7

    move v2, v0

    .line 35
    :goto_1
    if-eqz v2, :cond_3

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    if-eqz v4, :cond_4

    :cond_3
    if-nez v2, :cond_8

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    if-nez v4, :cond_8

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    if-ne v4, v5, :cond_8

    .line 38
    :cond_4
    if-eqz p2, :cond_5

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p2, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 40
    :cond_5
    if-eqz p3, :cond_6

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 47
    :cond_6
    :goto_2
    return v0

    :cond_7
    move v2, v1

    .line 34
    goto :goto_1

    .line 27
    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    move v0, v1

    .line 47
    goto :goto_2
.end method

.method public static a([BLcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/htc/camera/imaging/a;->a([BILcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    return v0
.end method
