.class final Lcom/htc/lib1/mediamanager/f;
.super Ljava/lang/Object;
.source "CoverImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/mediamanager/CoverImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/CoverImage;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/htc/lib1/mediamanager/CoverImage;

    invoke-direct {v0, p1}, Lcom/htc/lib1/mediamanager/CoverImage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/mediamanager/CoverImage;
    .locals 1

    .prologue
    .line 193
    new-array v0, p1, [Lcom/htc/lib1/mediamanager/CoverImage;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/f;->a(Landroid/os/Parcel;)Lcom/htc/lib1/mediamanager/CoverImage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/htc/lib1/mediamanager/f;->a(I)[Lcom/htc/lib1/mediamanager/CoverImage;

    move-result-object v0

    return-object v0
.end method
