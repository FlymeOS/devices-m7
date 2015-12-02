.class public Lcom/htc/lib1/cc/widget/ShadowLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ShadowLinearLayout.java"


# instance fields
.field private mDM:Landroid/util/DisplayMetrics;

.field private mFixedWidth:Z

.field private mForcePortraitWidth:Z

.field private mMarginPortrait:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mFixedWidth:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mForcePortraitWidth:Z

    .line 52
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mFixedWidth:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mForcePortraitWidth:Z

    .line 57
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mFixedWidth:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mForcePortraitWidth:Z

    .line 62
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->init()V

    .line 63
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    .line 68
    sget v1, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mMarginPortrait:I

    .line 69
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 146
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const v4, 0x3e570a3d    # 0.21f

    const/high16 v2, 0x40000000    # 2.0f

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 97
    if-eq v2, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v3, :cond_4

    .line 101
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mMarginPortrait:I

    sub-int/2addr v0, v3

    .line 111
    :goto_0
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mFixedWidth:Z

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 115
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 116
    if-eq v2, v1, :cond_3

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 118
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 119
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 120
    :goto_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_7

    .line 122
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 123
    sub-int/2addr v0, v2

    .line 128
    :goto_2
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mFixedWidth:Z

    if-eqz v2, :cond_2

    const/high16 v1, -0x80000000

    :cond_2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 131
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 132
    return-void

    .line 104
    :cond_4
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mForcePortraitWidth:Z

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mMarginPortrait:I

    sub-int/2addr v0, v3

    goto :goto_0

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 108
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mDM:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v0, v3, v0

    goto :goto_0

    .line 119
    :cond_6
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    goto :goto_1

    .line 126
    :cond_7
    iget v2, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mMarginPortrait:I

    sub-int/2addr v0, v2

    goto :goto_2
.end method

.method public setFixedWidth(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mFixedWidth:Z

    .line 79
    return-void
.end method

.method public setForcePortraitWidth(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->mForcePortraitWidth:Z

    .line 88
    return-void
.end method
