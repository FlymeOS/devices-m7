.class final Lcom/htc/lib1/cc/widget/ah;
.super Ljava/lang/Object;
.source "HtcSeekBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;
    .locals 2

    .prologue
    .line 434
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;-><init>(Landroid/os/Parcel;Lcom/htc/lib1/cc/widget/ag;)V

    return-object v0
.end method

.method public a(I)[Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;
    .locals 1

    .prologue
    .line 438
    new-array v0, p1, [Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/ah;->a(Landroid/os/Parcel;)Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/ah;->a(I)[Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;

    move-result-object v0

    return-object v0
.end method
