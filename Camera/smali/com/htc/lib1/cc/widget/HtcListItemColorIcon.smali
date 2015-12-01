.class public Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;
.super Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;
.source "HtcListItemColorIcon.java"


# instance fields
.field private M2:I

.field private mActionButtonWidth:I

.field private mBadge:Landroid/widget/ImageView;

.field private mBadgeSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 30
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    .line 53
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 30
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    .line 67
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 30
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    .line 85
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    .line 35
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->htc_list_item_color_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    .line 36
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM2()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->M2:I

    .line 38
    const/16 v0, 0x7d0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getActionButtonWidth(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    .line 41
    invoke-super {p0, v4, v4, v4, v4}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setPadding(IIII)V

    .line 42
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getColorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mIsAutomotiveMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    :goto_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentHeight:I

    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 110
    invoke-super {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 111
    goto :goto_0

    .line 108
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->M2:I

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public bridge synthetic notifyItemMode(I)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->notifyItemMode(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mIsAutomotiveMode:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentHeight:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentHeight:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 151
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->onLayout(ZIIII)V

    .line 152
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->M2:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentHeight:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentWidth:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->M2:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentHeight:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadgeSize:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->measureChild(Landroid/view/View;II)V

    .line 128
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->onMeasure(II)V

    .line 129
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mIsAutomotiveMode:Z

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->setMeasuredDimension(II)V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentWidth:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->M2:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public bridge synthetic setAutoMotiveMode(Z)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setAutoMotiveMode(Z)V

    return-void
.end method

.method public setColorIconImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    return-void
.end method

.method public setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method public setColorIconImageResource(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mIsAutomotiveMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mActionButtonWidth:I

    :goto_0
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void

    .line 94
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mComponentWidth:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->M2:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    return-void
.end method
