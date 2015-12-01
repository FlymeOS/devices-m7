.class final Lcom/htc/lib1/mediamanager/h;
.super Ljava/lang/Object;
.source "CoverImage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/lib1/mediamanager/CoverImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/lib1/mediamanager/CoverImage;Lcom/htc/lib1/mediamanager/CoverImage;)I
    .locals 5

    .prologue
    .line 274
    iget-wide v0, p1, Lcom/htc/lib1/mediamanager/CoverImage;->mDateModified:J

    .line 275
    iget-wide v2, p2, Lcom/htc/lib1/mediamanager/CoverImage;->mDateModified:J

    .line 276
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 278
    iget-object v0, p1, Lcom/htc/lib1/mediamanager/CoverImage;->mDataPath:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/lib1/mediamanager/CoverImage;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 283
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 270
    check-cast p1, Lcom/htc/lib1/mediamanager/CoverImage;

    check-cast p2, Lcom/htc/lib1/mediamanager/CoverImage;

    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/mediamanager/h;->a(Lcom/htc/lib1/mediamanager/CoverImage;Lcom/htc/lib1/mediamanager/CoverImage;)I

    move-result v0

    return v0
.end method
