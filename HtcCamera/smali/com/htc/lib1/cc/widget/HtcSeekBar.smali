.class public Lcom/htc/lib1/cc/widget/HtcSeekBar;
.super Landroid/widget/SeekBar;
.source "HtcSeekBar.java"


# instance fields
.field private isClicked:Z

.field mBlackDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlackResId:I

.field mDisplayMode:I

.field mDisplayThumb:Z

.field private mDrawFocusIndicator:Z

.field private mFocusIndicator:Landroid/graphics/drawable/Drawable;

.field mMinDrawableHeight:I

.field mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field mPressedThumb:Landroid/graphics/drawable/Drawable;

.field mProgressHeight:I

.field private mWhiteResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/htc/lib1/cc/b;->htcSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-boolean v8, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDisplayThumb:Z

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mMinDrawableHeight:I

    .line 62
    iput v7, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mWhiteResId:I

    .line 63
    iput v7, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackResId:I

    .line 65
    iput v7, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDisplayMode:I

    .line 68
    iput-boolean v7, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDrawFocusIndicator:Z

    .line 69
    iput-boolean v7, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->isClicked:Z

    .line 100
    const/4 v0, 0x6

    new-array v0, v0, [I

    const v1, 0x10100b2

    aput v1, v0, v7

    const v1, 0x10100d6

    aput v1, v0, v8

    const v1, 0x10100d8

    aput v1, v0, v5

    const v1, 0x1010142

    aput v1, v0, v6

    const v1, 0x1010143

    aput v1, v0, v9

    const/4 v1, 0x5

    sget v2, Lcom/htc/lib1/cc/b;->seek_bar_display_mode:I

    aput v2, v0, v1

    .line 109
    sget v1, Lcom/htc/lib1/cc/k;->HTCSeekBarStyle:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 110
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 111
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v3, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 112
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingRight()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 113
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v0

    invoke-virtual {v3, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 115
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 116
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/htc/lib1/cc/d;->htc_progressbar_height:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mProgressHeight:I

    .line 121
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setThumbOffset(I)V

    .line 123
    if-le v0, v2, :cond_0

    move v2, v0

    .line 124
    :cond_0
    if-le v0, v1, :cond_2

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setPadding(IIII)V

    .line 128
    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mWhiteResId:I

    .line 131
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackResId:I

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 138
    return-void

    :cond_2
    move v0, v1

    .line 124
    goto :goto_0
.end method

.method private declared-synchronized doForceRefreshProgress(IIZ)V
    .locals 5

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getMax()I

    move-result v1

    if-lez v1, :cond_2

    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v3, v1

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_3

    .line 173
    const/4 v1, 0x0

    .line 175
    instance-of v4, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_0

    .line 176
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    :cond_0
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 180
    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_1
    monitor-exit p0

    return-void

    .line 170
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .line 182
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    .line 592
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 593
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/htc/lib1/cc/c;->overlay_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 596
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 598
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 599
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 601
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 602
    return-void
.end method

.method private getDisplayModeThumb(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 342
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->htcthumb_b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->htcthumb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getSkinDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 243
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 244
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mMinDrawableHeight:I

    if-ge v1, v0, :cond_2

    .line 245
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mMinDrawableHeight:I

    .line 249
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 251
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mMinDrawableHeight:I

    if-ge v1, v0, :cond_0

    .line 252
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mMinDrawableHeight:I

    goto :goto_0
.end method

.method private setSeekBarDrawableBundary(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 190
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mProgressHeight:I

    .line 191
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getHeight()I

    move-result v1

    .line 192
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 193
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 195
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 196
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 197
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 198
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 200
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 201
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 202
    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 203
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 204
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 205
    const/high16 v0, 0x1020000

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 207
    :cond_2
    const v0, 0x102000f

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    :cond_3
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDisplayMode:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 548
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 549
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 512
    invoke-super {p0}, Landroid/widget/SeekBar;->onDetachedFromWindow()V

    .line 513
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 585
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDrawFocusIndicator:Z

    if-eqz v0, :cond_0

    .line 586
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 587
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDrawFocusIndicator:Z

    .line 574
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SeekBar;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 575
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 292
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 296
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getMeasuredWidth()I

    move-result v2

    .line 297
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getMeasuredHeight()I

    move-result v3

    .line 298
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    move v1, v0

    .line 299
    :goto_0
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 302
    and-int/lit8 v3, v0, 0x1

    if-ne v5, v3, :cond_0

    .line 303
    add-int/lit8 v0, v0, 0x1

    .line 306
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 307
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 308
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 309
    and-int/lit8 v4, v1, 0x1

    if-ne v5, v4, :cond_1

    .line 310
    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 313
    :cond_1
    invoke-static {v2, p1}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 298
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 469
    check-cast p1, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;

    .line 470
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 472
    iget v0, p1, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;->mDisplayThumb:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setThumbVisible(Z)V

    .line 473
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 453
    invoke-super {p0}, Landroid/widget/SeekBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 454
    new-instance v1, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;

    invoke-direct {v1, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 456
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDisplayThumb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/htc/lib1/cc/widget/HtcSeekBar$SavedState;->mDisplayThumb:I

    .line 458
    return-object v1

    .line 456
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 226
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 228
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setSeekBarDrawableBundary(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 233
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setSeekBarDrawableBundary(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 501
    :cond_0
    :goto_0
    return v2

    .line 485
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->isClicked:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getMax()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getMax()I

    move-result v3

    div-int/2addr v0, v3

    .line 487
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 488
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->isClicked:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 486
    goto :goto_1

    .line 493
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->isClicked:Z

    goto :goto_0

    .line 498
    :pswitch_2
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->isClicked:Z

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setDisplayMode(I)V
    .locals 2

    .prologue
    .line 322
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 324
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackResId:I

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getSkinDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDisplayMode:I

    .line 335
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getDisplayModeThumb(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    .line 336
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 338
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setThumbOffset(I)V

    .line 339
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 330
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mWhiteResId:I

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getSkinDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDisplayMode:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 536
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 537
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 561
    return-void
.end method

.method public setPadding(IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result p1

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result p3

    .line 394
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 396
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 397
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 399
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 405
    :cond_3
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    const v0, 0x102000d

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->doForceRefreshProgress(IIZ)V

    .line 269
    const v0, 0x102000f

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getSecondaryProgress()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->doForceRefreshProgress(IIZ)V

    .line 270
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 367
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    .line 369
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingLeft()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setPadding(IIII)V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingRight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->setPadding(IIII)V

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->invalidate()V

    .line 374
    return-void
.end method

.method public setThumbVisible(Z)V
    .locals 2

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mDisplayThumb:Z

    .line 355
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcSeekBar;->invalidate()V

    .line 358
    return-void

    .line 356
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 525
    return-void
.end method
