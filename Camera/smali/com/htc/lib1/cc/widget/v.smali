.class final Lcom/htc/lib1/cc/widget/v;
.super Ljava/lang/Object;
.source "HtcCompoundButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;
    .locals 2

    .prologue
    .line 1111
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;-><init>(Landroid/os/Parcel;Lcom/htc/lib1/cc/widget/t;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;
    .locals 1

    .prologue
    .line 1115
    new-array v0, p1, [Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/v;->a(Landroid/os/Parcel;)Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/v;->a(I)[Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;

    move-result-object v0

    return-object v0
.end method
