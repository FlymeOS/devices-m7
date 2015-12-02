.class Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HtcSeekBar.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDisplayThumb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/htc/lib1/cc/widget/ah;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ah;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;->mDisplayThumb:I

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/cc/widget/ag;)V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 415
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 427
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 428
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;->mDisplayThumb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    return-void
.end method
