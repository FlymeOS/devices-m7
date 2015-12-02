.class final Lcom/htc/lib1/mediamanager/l;
.super Ljava/lang/Object;
.source "MediaObject.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/lib1/mediamanager/MediaObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/lib1/mediamanager/MediaObject;Lcom/htc/lib1/mediamanager/MediaObject;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 492
    invoke-virtual {p1}, Lcom/htc/lib1/mediamanager/MediaObject;->getDateTime()J

    move-result-wide v2

    .line 493
    invoke-virtual {p2}, Lcom/htc/lib1/mediamanager/MediaObject;->getDateTime()J

    move-result-wide v4

    .line 494
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 496
    invoke-virtual {p1}, Lcom/htc/lib1/mediamanager/MediaObject;->getServiceType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/lib1/mediamanager/MediaObject;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_0
    invoke-virtual {p2}, Lcom/htc/lib1/mediamanager/MediaObject;->getServiceType()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p2}, Lcom/htc/lib1/mediamanager/MediaObject;->getDataPath()Ljava/lang/String;

    move-result-object v1

    .line 498
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 505
    :goto_2
    return v0

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/htc/lib1/mediamanager/MediaObject;->getDocId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p2}, Lcom/htc/lib1/mediamanager/MediaObject;->getDocId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 502
    :cond_2
    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    move v0, v1

    .line 503
    goto :goto_2

    .line 505
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 488
    check-cast p1, Lcom/htc/lib1/mediamanager/MediaObject;

    check-cast p2, Lcom/htc/lib1/mediamanager/MediaObject;

    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/mediamanager/l;->a(Lcom/htc/lib1/mediamanager/MediaObject;Lcom/htc/lib1/mediamanager/MediaObject;)I

    move-result v0

    return v0
.end method
