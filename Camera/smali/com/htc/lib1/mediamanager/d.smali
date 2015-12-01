.class final Lcom/htc/lib1/mediamanager/d;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/mediamanager/Collection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/Collection;
    .locals 2

    .prologue
    .line 663
    new-instance v0, Lcom/htc/lib1/mediamanager/Collection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/lib1/mediamanager/Collection;-><init>(Landroid/os/Parcel;Lcom/htc/lib1/mediamanager/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/mediamanager/Collection;
    .locals 1

    .prologue
    .line 668
    new-array v0, p1, [Lcom/htc/lib1/mediamanager/Collection;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/d;->a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/d;->a(I)[Lcom/htc/lib1/mediamanager/Collection;

    move-result-object v0

    return-object v0
.end method
