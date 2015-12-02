.class final Lcom/htc/lib1/cc/view/viewpager/a;
.super Ljava/lang/Object;
.source "HtcViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;)I
    .locals 2

    .prologue
    .line 109
    iget v0, p1, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 106
    check-cast p1, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;

    check-cast p2, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/a;->a(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
