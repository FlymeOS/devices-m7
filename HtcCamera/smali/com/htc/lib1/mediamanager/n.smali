.class final Lcom/htc/lib1/mediamanager/n;
.super Ljava/lang/Object;
.source "Thumbnail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/mediamanager/Thumbnail;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/Thumbnail;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/htc/lib1/mediamanager/Thumbnail;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/lib1/mediamanager/Thumbnail;-><init>(Landroid/os/Parcel;Lcom/htc/lib1/mediamanager/n;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/mediamanager/Thumbnail;
    .locals 1

    .prologue
    .line 75
    new-array v0, p1, [Lcom/htc/lib1/mediamanager/Thumbnail;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/n;->a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/n;->a(I)[Lcom/htc/lib1/mediamanager/Thumbnail;

    move-result-object v0

    return-object v0
.end method
