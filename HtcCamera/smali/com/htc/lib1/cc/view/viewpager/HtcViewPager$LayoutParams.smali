.class public Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "HtcViewPager.java"


# instance fields
.field childIndex:I

.field decorTop:I

.field public gravity:I

.field public isDecor:Z

.field needsMeasure:Z

.field position:I

.field widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3658
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3633
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$LayoutParams;->widthFactor:F

    .line 3659
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 3662
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3633
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$LayoutParams;->widthFactor:F

    .line 3664
    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->LAYOUT_ATTRS:[I
    invoke-static {}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$600()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3665
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$LayoutParams;->gravity:I

    .line 3666
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3667
    return-void
.end method
