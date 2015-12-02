.class final Lcom/htc/lib1/mediamanager/j;
.super Ljava/lang/Object;
.source "MediaObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/mediamanager/MediaObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/MediaObject;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/htc/lib1/mediamanager/MediaObject;

    invoke-direct {v0, p1}, Lcom/htc/lib1/mediamanager/MediaObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/mediamanager/MediaObject;
    .locals 1

    .prologue
    .line 373
    new-array v0, p1, [Lcom/htc/lib1/mediamanager/MediaObject;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/j;->a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/j;->a(I)[Lcom/htc/lib1/mediamanager/MediaObject;

    move-result-object v0

    return-object v0
.end method
