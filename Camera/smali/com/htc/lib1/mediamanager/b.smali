.class final Lcom/htc/lib1/mediamanager/b;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/lib1/mediamanager/Collection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/lib1/mediamanager/Collection;Lcom/htc/lib1/mediamanager/Collection;)I
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/htc/lib1/mediamanager/Collection;->getTime()J

    move-result-wide v0

    .line 87
    invoke-virtual {p2}, Lcom/htc/lib1/mediamanager/Collection;->getTime()J

    move-result-wide v2

    .line 88
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/htc/lib1/mediamanager/Collection;

    check-cast p2, Lcom/htc/lib1/mediamanager/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/mediamanager/b;->a(Lcom/htc/lib1/mediamanager/Collection;Lcom/htc/lib1/mediamanager/Collection;)I

    move-result v0

    return v0
.end method
