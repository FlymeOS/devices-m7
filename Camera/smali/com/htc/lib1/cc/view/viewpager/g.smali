.class final Lcom/htc/lib1/cc/view/viewpager/g;
.super Ljava/lang/Object;
.source "HtcViewPager.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/viewpager/os/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/lib1/cc/view/viewpager/os/a",
        "<",
        "Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$SavedState;
    .locals 1

    .prologue
    .line 1478
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$SavedState;
    .locals 1

    .prologue
    .line 1482
    new-array v0, p1, [Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$SavedState;

    return-object v0
.end method

.method public synthetic b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1475
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/g;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/viewpager/g;->a(I)[Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method
