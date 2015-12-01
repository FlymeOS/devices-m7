.class final Lcom/htc/lib1/mediamanager/a;
.super Ljava/lang/Object;
.source "CloudTagCollectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;-><init>(Landroid/os/Parcel;Lcom/htc/lib1/mediamanager/a;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/a;->a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/a;->a(I)[Lcom/htc/lib1/mediamanager/CloudTagCollectionInfo;

    move-result-object v0

    return-object v0
.end method
