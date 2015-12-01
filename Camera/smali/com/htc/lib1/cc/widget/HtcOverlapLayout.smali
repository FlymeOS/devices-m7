.class public Lcom/htc/lib1/cc/widget/HtcOverlapLayout;
.super Landroid/view/ViewGroup;
.source "HtcOverlapLayout.java"


# static fields
.field static final attrs:[I


# instance fields
.field private mActionBarHeight:I

.field private mBottomSystemWindow:I

.field private mGetSysWinListener:Lcom/htc/lib1/cc/widget/ae;

.field private mInsetActionBar:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "CommonControl"
        prefix = "HtcOverlapLayout"
    .end annotation
.end field

.field private mInsetBottomSystemWindow:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "CommonControl"
        prefix = "HtcOverlapLayout"
    .end annotation
.end field

.field private mInsetRightSystemWindow:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "CommonControl"
        prefix = "HtcOverlapLayout"
    .end annotation
.end field

.field private mInsetStatusBar:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "CommonControl"
        prefix = "HtcOverlapLayout"
    .end annotation
.end field

.field private mRightSystemWindow:I

.field private mStatusBarHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "CommonControl"
        prefix = "HtcOverlapLayout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102eb

    aput v2, v0, v1

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->attrs:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mStatusBarHeight:I

    .line 28
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetActionBar:Z

    .line 30
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetStatusBar:Z

    .line 32
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetBottomSystemWindow:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetRightSystemWindow:Z

    .line 37
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mBottomSystemWindow:I

    .line 38
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mRightSystemWindow:I

    .line 154
    return-void
.end method

.method private adjustSelfLayoutParameter()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 336
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 337
    if-nez v0, :cond_0

    .line 338
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 342
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 343
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 346
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 348
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 350
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 352
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetStatusBar:Z

    if-eqz v2, :cond_2

    .line 353
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mStatusBarHeight:I

    if-lez v3, :cond_1

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mStatusBarHeight:I

    :cond_1
    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 355
    :cond_2
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetActionBar:Z

    if-eqz v1, :cond_3

    .line 356
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 363
    :cond_3
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetRightSystemWindow:Z

    if-eqz v1, :cond_4

    .line 364
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mRightSystemWindow:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 366
    :cond_4
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetBottomSystemWindow:Z

    if-eqz v1, :cond_5

    .line 367
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mBottomSystemWindow:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 370
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->requestLayout()V

    .line 373
    return-void
.end method

.method private getActionBarHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->attrs:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mActionBarHeight:I

    .line 410
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mActionBarHeight:I

    return v0
.end method

.method private isHorizontal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 65
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getActionBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 66
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 67
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 73
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mStatusBarHeight:I

    if-nez v3, :cond_0

    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mStatusBarHeight:I

    if-eq v0, v3, :cond_0

    .line 75
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mStatusBarHeight:I

    .line 78
    :cond_0
    if-ltz v1, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mBottomSystemWindow:I

    if-eq v1, v0, :cond_1

    .line 79
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mBottomSystemWindow:I

    .line 81
    :cond_1
    if-ltz v2, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mRightSystemWindow:I

    if-eq v2, v0, :cond_2

    .line 82
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mRightSystemWindow:I

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->adjustSelfLayoutParameter()V

    .line 86
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mGetSysWinListener:Lcom/htc/lib1/cc/widget/ae;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mGetSysWinListener:Lcom/htc/lib1/cc/widget/ae;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/ae;->a(Landroid/graphics/Rect;)V

    .line 90
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getChildCount()I

    move-result v4

    .line 250
    sub-int v5, p4, p2

    .line 253
    sub-int v6, p5, p3

    .line 255
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_4

    .line 256
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 257
    const/16 v0, 0x8

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 255
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 263
    const/4 v2, 0x0

    .line 264
    const/4 v0, 0x0

    .line 266
    instance-of v9, v1, Lcom/htc/lib1/cc/widget/HtcFooter;

    if-eqz v9, :cond_2

    move-object v0, v1

    .line 267
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcFooter;

    .line 269
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getDisplayMode()I

    move-result v9

    if-eq v2, v9, :cond_1

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getDisplayMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 271
    :cond_1
    sub-int v2, v5, v7

    .line 272
    const/4 v0, 0x0

    .line 279
    :cond_2
    :goto_2
    add-int/2addr v7, v2

    add-int/2addr v8, v0

    invoke-virtual {v1, v2, v0, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 274
    :cond_3
    const/4 v2, 0x0

    .line 275
    sub-int v0, v6, v8

    goto :goto_2

    .line 281
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x0

    .line 178
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 184
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getChildCount()I

    move-result v4

    .line 186
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 187
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 188
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 189
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 192
    const/4 v1, 0x0

    move v3, v2

    .line 193
    :goto_0
    if-ge v3, v4, :cond_8

    .line 194
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    instance-of v9, v0, Lcom/htc/lib1/cc/widget/HtcFooter;

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v10, v9, :cond_1

    .line 196
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcFooter;

    move-object v3, v0

    .line 202
    :goto_1
    if-nez v3, :cond_3

    .line 203
    :goto_2
    if-ge v2, v4, :cond_2

    .line 204
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v10, v1, :cond_0

    .line 206
    invoke-virtual {p0, v0, v7, v8}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->measureChild(Landroid/view/View;II)V

    .line 203
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->setMeasuredDimension(II)V

    .line 236
    :goto_3
    return-void

    .line 214
    :cond_3
    invoke-virtual {v3, v7, v8}, Lcom/htc/lib1/cc/widget/HtcFooter;->measure(II)V

    .line 215
    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcFooter;->getMeasuredHeight()I

    move-result v0

    .line 216
    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcFooter;->getMeasuredWidth()I

    move-result v1

    .line 219
    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcFooter;->getDisplayMode()I

    move-result v8

    if-eq v7, v8, :cond_4

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcFooter;->getDisplayMode()I

    move-result v7

    if-nez v7, :cond_5

    .line 221
    :cond_4
    sub-int v0, v5, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 222
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 229
    :goto_4
    if-ge v2, v4, :cond_7

    .line 230
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 231
    if-ne v5, v3, :cond_6

    .line 229
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 224
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 225
    sub-int v0, v6, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_4

    .line 233
    :cond_6
    invoke-virtual {p0, v5, v1, v0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_5

    .line 235
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_8
    move-object v3, v1

    goto/16 :goto_1
.end method

.method public requestLayout()V
    .locals 4

    .prologue
    .line 299
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 301
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getChildCount()I

    move-result v1

    .line 302
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 303
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 304
    instance-of v3, v2, Lcom/htc/lib1/cc/widget/HtcFooter;

    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 309
    :cond_0
    return-void

    .line 302
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final setInsetBottomSystemWindow(Z)V
    .locals 0

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetBottomSystemWindow:Z

    .line 384
    return-void
.end method

.method public final setInsetRightSystemWindow(Z)V
    .locals 0

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetRightSystemWindow:Z

    .line 395
    return-void
.end method

.method public setInsetStatusBar(Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mInsetStatusBar:Z

    .line 47
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->adjustSelfLayoutParameter()V

    .line 48
    return-void
.end method

.method public setOnGetSysWinListener(Lcom/htc/lib1/cc/widget/ae;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcOverlapLayout;->mGetSysWinListener:Lcom/htc/lib1/cc/widget/ae;

    .line 328
    return-void
.end method
