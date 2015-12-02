.class final Lcom/htc/lib1/HtcEasPim/hux/a;
.super Ljava/lang/Object;
.source "HuxProvResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;

    invoke-direct {v0, p1}, Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;
    .locals 1

    .prologue
    .line 137
    new-array v0, p1, [Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/htc/lib1/HtcEasPim/hux/a;->a(Landroid/os/Parcel;)Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/htc/lib1/HtcEasPim/hux/a;->a(I)[Lcom/htc/lib1/HtcEasPim/hux/HuxProvResult;

    move-result-object v0

    return-object v0
.end method
