.class final Lcom/htc/hfm/a;
.super Ljava/lang/Object;
.source "Speech.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/hfm/Speech;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/hfm/Speech;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/htc/hfm/Speech;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/hfm/Speech;-><init>(Lcom/htc/hfm/a;)V

    .line 106
    invoke-virtual {v0, p1}, Lcom/htc/hfm/Speech;->readFromParcel(Landroid/os/Parcel;)V

    .line 107
    return-object v0
.end method

.method public a(I)[Lcom/htc/hfm/Speech;
    .locals 1

    .prologue
    .line 112
    new-array v0, p1, [Lcom/htc/hfm/Speech;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/htc/hfm/a;->a(Landroid/os/Parcel;)Lcom/htc/hfm/Speech;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/htc/hfm/a;->a(I)[Lcom/htc/hfm/Speech;

    move-result-object v0

    return-object v0
.end method
