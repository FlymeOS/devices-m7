.class final Lcom/htc/lib1/HtcEasPim/eas/b;
.super Ljava/lang/Object;
.source "EASGalSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;-><init>(Landroid/os/Parcel;Lcom/htc/lib1/HtcEasPim/eas/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;
    .locals 1

    .prologue
    .line 199
    new-array v0, p1, [Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/b;->a(Landroid/os/Parcel;)Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/b;->a(I)[Lcom/htc/lib1/HtcEasPim/eas/EASGalSearchResult;

    move-result-object v0

    return-object v0
.end method
