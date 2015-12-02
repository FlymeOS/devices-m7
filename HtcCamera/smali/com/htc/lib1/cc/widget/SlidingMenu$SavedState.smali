.class public Lcom/htc/lib1/cc/widget/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingMenu.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/cc/widget/SlidingMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 880
    new-instance v0, Lcom/htc/lib1/cc/widget/az;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/az;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 864
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingMenu$SavedState;->mItem:I

    .line 866
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/cc/widget/SlidingMenu$1;)V
    .locals 0

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 860
    iput p2, p0, Lcom/htc/lib1/cc/widget/SlidingMenu$SavedState;->mItem:I

    .line 861
    return-void
.end method


# virtual methods
.method public getItem()I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingMenu$SavedState;->mItem:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 876
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 877
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingMenu$SavedState;->mItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    return-void
.end method
