.class public Lcom/htc/lib1/cc/widget/CrabWalkView;
.super Lcom/htc/lib1/cc/widget/AbsCrabWalkView;
.source "CrabWalkView.java"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private mArrowScrollFocusResult:Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mChoiceMode:I

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field mDividerWidth:I

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/i;",
            ">;"
        }
    .end annotation
.end field

.field mFooterViewWithoutDivider:Landroid/view/View;

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/i;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCanFocus:Z

.field private mLastPosition:I

.field mSeperatorDiver:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 4404
    add-int/lit8 v2, p2, -0x1

    .line 4405
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 4409
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4410
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    sub-int v3, v0, v3

    .line 4411
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    move-object v0, p0

    move v6, v4

    move v7, v4

    .line 4417
    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4419
    return-object v1

    .line 4413
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    sub-int v3, v0, v3

    .line 4414
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 4423
    add-int/lit8 v2, p2, 0x1

    .line 4424
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 4428
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4429
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    sub-int v3, v0, v3

    .line 4430
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 4436
    :goto_0
    const/4 v4, 0x1

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4438
    return-object v1

    .line 4432
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    sub-int v3, v0, v3

    .line 4433
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v2

    .line 262
    if-lez v2, :cond_2

    .line 265
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeftBoundary()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeftBorderWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 273
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-eqz v2, :cond_0

    .line 276
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    sub-int/2addr v1, v2

    .line 289
    :cond_0
    :goto_0
    if-gez v1, :cond_6

    .line 321
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 331
    :cond_2
    return-void

    .line 280
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopBoundary()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopBorderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 282
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-eqz v2, :cond_0

    .line 285
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 295
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 297
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRightBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRightBorderWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 299
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ge v2, v3, :cond_5

    .line 302
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    add-int/2addr v1, v2

    .line 316
    :cond_5
    :goto_2
    if-gtz v1, :cond_1

    :cond_6
    move v0, v1

    goto :goto_1

    .line 306
    :cond_7
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomBorderHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 309
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ge v2, v3, :cond_5

    .line 312
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    add-int/2addr v1, v2

    goto :goto_2
.end method

.method private amountToScroll(II)I
    .locals 8

    .prologue
    const/16 v7, 0x82

    const/16 v5, 0x42

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 3784
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v4

    .line 3789
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    :cond_0
    if-ne p1, v5, :cond_c

    .line 3790
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v2

    .line 3791
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 3792
    if-ne p1, v5, :cond_8

    .line 3793
    add-int/lit8 v0, v4, -0x1

    .line 3794
    if-eq p2, v6, :cond_2

    .line 3795
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int v0, p2, v0

    .line 3798
    :cond_2
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v2, v0

    .line 3799
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3802
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_4

    .line 3803
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    sub-int v0, v3, v0

    .line 3810
    :goto_0
    if-eq p2, v6, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getMaxScrollAmount()I

    move-result v6

    if-lt v2, v6, :cond_5

    .line 3941
    :cond_3
    :goto_1
    return v1

    .line 3805
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v0

    if-le v0, v3, :cond_3

    move v0, v3

    goto :goto_0

    .line 3816
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 3817
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    .line 3822
    :goto_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v1, v4

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ne v1, v2, :cond_6

    .line 3824
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v1, v3

    .line 3825
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3941
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 3820
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_2

    .line 3831
    :cond_8
    if-eq p2, v6, :cond_18

    .line 3832
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int v0, p2, v0

    .line 3834
    :goto_4
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v3, v0

    .line 3835
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3837
    if-lez v3, :cond_a

    .line 3838
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v2

    .line 3845
    :goto_5
    if-eq p2, v6, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getMaxScrollAmount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 3851
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ne v3, v0, :cond_b

    .line 3852
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    .line 3857
    :goto_6
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-nez v3, :cond_6

    .line 3859
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v2, v1

    .line 3860
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 3840
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, v2, :cond_3

    move v0, v2

    goto :goto_5

    .line 3855
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_6

    .line 3865
    :cond_c
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v2

    .line 3866
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 3867
    const/16 v0, 0x21

    if-eq p1, v0, :cond_d

    if-ne p1, v7, :cond_17

    .line 3868
    :cond_d
    if-ne p1, v7, :cond_12

    .line 3869
    add-int/lit8 v0, v4, -0x1

    .line 3870
    if-eq p2, v6, :cond_e

    .line 3871
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int v0, p2, v0

    .line 3874
    :cond_e
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v2, v0

    .line 3875
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3879
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_10

    .line 3880
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    sub-int v0, v3, v0

    .line 3888
    :goto_7
    if-eq p2, v6, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getMaxScrollAmount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 3894
    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ne v1, v0, :cond_11

    .line 3895
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    .line 3899
    :goto_8
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v1, v4

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ne v1, v2, :cond_6

    .line 3901
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v3

    .line 3902
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_3

    .line 3883
    :cond_10
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v3, :cond_3

    move v0, v3

    goto :goto_7

    .line 3897
    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_8

    .line 3908
    :cond_12
    if-eq p2, v6, :cond_16

    .line 3909
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int v0, p2, v0

    .line 3911
    :goto_9
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v3, v0

    .line 3912
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3914
    if-lez v3, :cond_14

    .line 3915
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v2

    .line 3922
    :goto_a
    if-eq p2, v6, :cond_13

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getMaxScrollAmount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 3928
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v0, :cond_15

    .line 3929
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    .line 3933
    :goto_b
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-nez v3, :cond_6

    .line 3935
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v2, v1

    .line 3936
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_3

    .line 3917
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v2, :cond_3

    move v0, v2

    goto :goto_a

    .line 3931
    :cond_15
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_b

    :cond_16
    move v0, v1

    goto :goto_9

    :cond_17
    move v0, v1

    goto/16 :goto_3

    :cond_18
    move v0, v1

    goto/16 :goto_4
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 3

    .prologue
    .line 4167
    const/4 v0, 0x0

    .line 4168
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4169
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4170
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    .line 4171
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_0

    .line 4172
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 4173
    if-lez p3, :cond_0

    .line 4174
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 4201
    :cond_0
    :goto_0
    return v0

    .line 4177
    :cond_1
    const/16 v1, 0x11

    if-ne p1, v1, :cond_2

    .line 4178
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_0

    .line 4179
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 4180
    if-lez p3, :cond_0

    .line 4181
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 4184
    :cond_2
    const/16 v1, 0x42

    if-ne p1, v1, :cond_3

    .line 4185
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 4186
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    .line 4187
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 4188
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 4189
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 4193
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 4194
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 4195
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 4196
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 4197
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;
    .locals 8

    .prologue
    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4040
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 4042
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4043
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4044
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4088
    :goto_0
    if-eqz v0, :cond_16

    .line 4089
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v1

    .line 4093
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-eq v2, v5, :cond_14

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-eq v1, v2, :cond_14

    .line 4094
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePositionOnScreen(I)I

    move-result v2

    .line 4095
    if-eq v2, v5, :cond_14

    const/16 v3, 0x82

    if-eq p1, v3, :cond_0

    if-ne p1, v7, :cond_1

    :cond_0
    if-lt v2, v1, :cond_3

    :cond_1
    const/16 v3, 0x21

    if-eq p1, v3, :cond_2

    if-ne p1, v6, :cond_14

    :cond_2
    if-le v2, v1, :cond_14

    .line 4098
    :cond_3
    const/4 v0, 0x0

    .line 4120
    :goto_1
    return-object v0

    .line 4046
    :cond_4
    const/16 v3, 0x82

    if-ne p1, v3, :cond_8

    .line 4047
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-lez v3, :cond_6

    .line 4048
    :goto_2
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 4050
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v3, v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 4054
    :cond_5
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4085
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4047
    goto :goto_2

    :cond_7
    move v0, v1

    .line 4048
    goto :goto_3

    .line 4055
    :cond_8
    if-ne p1, v7, :cond_c

    .line 4056
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-lez v3, :cond_a

    .line 4057
    :goto_5
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 4059
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v0, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4063
    :cond_9
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_a
    move v0, v1

    .line 4056
    goto :goto_5

    :cond_b
    move v0, v1

    .line 4057
    goto :goto_6

    .line 4064
    :cond_c
    if-ne p1, v6, :cond_10

    .line 4065
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ge v3, v4, :cond_e

    .line 4067
    :goto_7
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_8
    sub-int v0, v3, v0

    .line 4069
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v3, v0, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    .line 4073
    :cond_d
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_e
    move v0, v1

    .line 4065
    goto :goto_7

    :cond_f
    move v0, v1

    .line 4067
    goto :goto_8

    .line 4075
    :cond_10
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ge v3, v4, :cond_12

    .line 4077
    :goto_9
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_a
    sub-int v0, v3, v0

    .line 4079
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v3, v0, :cond_11

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 4083
    :cond_11
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_4

    :cond_12
    move v0, v1

    .line 4075
    goto :goto_9

    :cond_13
    move v0, v1

    .line 4077
    goto :goto_a

    .line 4102
    :cond_14
    invoke-direct {p0, p1, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    .line 4104
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getMaxScrollAmount()I

    move-result v3

    .line 4105
    if-ge v2, v3, :cond_15

    .line 4107
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 4108
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mArrowScrollFocusResult:Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;->populate(II)V

    .line 4109
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mArrowScrollFocusResult:Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 4110
    :cond_15
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->distanceToView(Landroid/view/View;)I

    move-result v2

    if-ge v2, v3, :cond_16

    .line 4115
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 4116
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mArrowScrollFocusResult:Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;

    invoke-virtual {v0, v1, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;->populate(II)V

    .line 4117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mArrowScrollFocusResult:Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 4120
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3465
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3551
    :cond_0
    :goto_0
    return v2

    .line 3469
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 3471
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePositionOnScreen(I)I

    move-result v0

    .line 3472
    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->amountToScroll(II)I

    move-result v3

    .line 3475
    iget-boolean v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemsCanFocus:Z

    if-eqz v6, :cond_7

    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->arrowScrollFocused(I)Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;

    move-result-object v6

    move-object v7, v6

    .line 3476
    :goto_1
    if-eqz v7, :cond_f

    .line 3477
    invoke-virtual {v7}, Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v0

    .line 3478
    invoke-virtual {v7}, Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v3

    move v6, v0

    .line 3481
    :goto_2
    if-eqz v7, :cond_8

    move v0, v1

    .line 3482
    :goto_3
    if-eq v6, v8, :cond_3

    .line 3483
    if-eqz v7, :cond_9

    move v0, v1

    :goto_4
    invoke-direct {p0, v5, p1, v6, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3484
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectedPositionInt(I)V

    .line 3485
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setNextSelectedPositionInt(I)V

    .line 3486
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 3487
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemsCanFocus:Z

    if-eqz v0, :cond_2

    if-nez v7, :cond_2

    .line 3490
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3491
    if-eqz v0, :cond_2

    .line 3492
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3496
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->checkSelectionChanged()V

    move v0, v1

    .line 3499
    :cond_3
    if-lez v3, :cond_4

    .line 3501
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3502
    const/16 v0, 0x11

    if-ne p1, v0, :cond_a

    move v0, v3

    :goto_5
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->scrollListItemsBy(I)V

    :goto_6
    move v0, v1

    .line 3512
    :cond_4
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemsCanFocus:Z

    if-eqz v3, :cond_5

    if-nez v7, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3514
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 3515
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_5

    .line 3516
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 3521
    :cond_5
    if-ne v6, v8, :cond_e

    if-eqz v5, :cond_e

    invoke-direct {p0, v5, p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 3524
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->hideSelector()V

    .line 3528
    iput v8, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mResurrectToPosition:I

    move-object v3, v4

    .line 3531
    :goto_7
    if-eqz v0, :cond_0

    .line 3533
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3534
    if-eqz v3, :cond_6

    .line 3535
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->positionSelector(Landroid/view/View;)V

    .line 3536
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedLeft:I

    .line 3546
    :cond_6
    :goto_8
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invalidate()V

    .line 3547
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V

    move v2, v1

    .line 3548
    goto/16 :goto_0

    :cond_7
    move-object v7, v4

    .line 3475
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 3481
    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 3483
    goto :goto_4

    .line 3502
    :cond_a
    neg-int v0, v3

    goto :goto_5

    .line 3504
    :cond_b
    const/16 v0, 0x21

    if-ne p1, v0, :cond_c

    :goto_9
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->scrollListItemsBy(I)V

    goto :goto_6

    :cond_c
    neg-int v3, v3

    goto :goto_9

    .line 3539
    :cond_d
    if-eqz v3, :cond_6

    .line 3540
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->positionSelector(Landroid/view/View;)V

    .line 3541
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedTop:I

    goto :goto_8

    :cond_e
    move-object v3, v5

    goto :goto_7

    :cond_f
    move v6, v0

    goto/16 :goto_2
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x42

    const/16 v5, 0x21

    const/16 v4, 0x11

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3063
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    .line 3201
    :goto_0
    return v0

    .line 3067
    :cond_0
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 3068
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->layoutChildren()V

    .line 3072
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 3074
    if-eq v3, v1, :cond_3

    .line 3075
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 3076
    sparse-switch p1, :sswitch_data_0

    .line 3087
    :cond_2
    sparse-switch p1, :sswitch_data_1

    :cond_3
    move v2, v0

    .line 3183
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 3184
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3187
    :cond_5
    if-eqz v2, :cond_13

    move v0, v1

    .line 3188
    goto :goto_0

    .line 3082
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->resurrectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 3083
    goto :goto_0

    .line 3091
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    .line 3093
    goto :goto_1

    .line 3095
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v0

    .line 3096
    :goto_2
    if-lez p2, :cond_4

    .line 3097
    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->arrowScroll(I)Z

    move-result v2

    .line 3098
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 3101
    :cond_7
    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fullScroll(I)Z

    move-result v2

    goto :goto_1

    .line 3109
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 3111
    goto :goto_1

    .line 3113
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v0

    .line 3114
    :goto_3
    if-lez p2, :cond_9

    .line 3115
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->arrowScroll(I)Z

    move-result v2

    .line 3116
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 3118
    :cond_9
    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 3119
    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLastPosition:I

    if-eq v5, v4, :cond_4

    .line 3120
    iput v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLastPosition:I

    .line 3121
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->layoutChildren()V

    goto :goto_1

    .line 3124
    :cond_a
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fullScroll(I)Z

    move-result v2

    goto :goto_1

    .line 3131
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3132
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v0

    .line 3133
    :goto_4
    if-lez p2, :cond_4

    .line 3134
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/CrabWalkView;->arrowScroll(I)Z

    move-result v2

    .line 3135
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 3138
    :cond_b
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fullScroll(I)Z

    move-result v2

    goto :goto_1

    .line 3141
    :cond_c
    invoke-direct {p0, v4}, Lcom/htc/lib1/cc/widget/CrabWalkView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 3145
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3146
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v0

    .line 3147
    :goto_5
    if-lez p2, :cond_4

    .line 3148
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->arrowScroll(I)Z

    move-result v2

    .line 3149
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 3152
    :cond_d
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fullScroll(I)Z

    move-result v2

    goto/16 :goto_1

    .line 3155
    :cond_e
    invoke-direct {p0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 3162
    :sswitch_5
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-lez v2, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_10

    .line 3163
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->keyPressed()V

    :cond_f
    :goto_6
    move v2, v1

    .line 3168
    goto/16 :goto_1

    .line 3164
    :cond_10
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3165
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->unPressedUnSelectChildren(Landroid/view/View;)V

    goto :goto_6

    .line 3171
    :sswitch_6
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3172
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3173
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->pageScroll(I)Z

    :goto_7
    move v2, v1

    .line 3177
    goto/16 :goto_1

    .line 3175
    :cond_12
    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->pageScroll(I)Z

    goto :goto_7

    .line 3190
    :cond_13
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 3192
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 3195
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 3198
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 3076
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 3087
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 3190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2133
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 2134
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 2137
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2140
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2142
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2145
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRightBoundary()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRightBorderWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2149
    sub-int v0, v1, v0

    .line 2150
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2151
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2155
    if-lez v0, :cond_2

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_2

    .line 2156
    :cond_0
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-nez v3, :cond_1

    .line 2158
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2161
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 2162
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-lez v0, :cond_2

    .line 2165
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    .line 2167
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 2204
    :cond_2
    :goto_0
    return-void

    .line 2173
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2176
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomBoundary()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomBorderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2180
    sub-int v0, v1, v0

    .line 2181
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2182
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2186
    if-lez v0, :cond_2

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-gtz v3, :cond_4

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    .line 2187
    :cond_4
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-nez v3, :cond_5

    .line 2189
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 2193
    :cond_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-lez v0, :cond_2

    .line 2196
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    .line 2198
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private correctTooLow(I)V
    .locals 6

    .prologue
    .line 2217
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 2220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2223
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2225
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2228
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeftBoundary()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeftBorderWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 2231
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRightBorderWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2235
    sub-int/2addr v0, v1

    .line 2236
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2237
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2238
    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 2242
    if-lez v0, :cond_2

    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_0

    if-le v3, v2, :cond_2

    .line 2243
    :cond_0
    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    .line 2245
    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2248
    :cond_1
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 2249
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2

    .line 2252
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 2254
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 2294
    :cond_2
    :goto_0
    return-void

    .line 2259
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2262
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopBoundary()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopBorderHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 2265
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomBorderHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2269
    sub-int/2addr v0, v1

    .line 2270
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2271
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2272
    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 2276
    if-lez v0, :cond_2

    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_4

    if-le v3, v2, :cond_2

    .line 2277
    :cond_4
    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_5

    .line 2279
    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 2283
    :cond_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2

    .line 2286
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 2288
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 4213
    const/4 v0, 0x0

    .line 4214
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4215
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4218
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4219
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 4220
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 4221
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 4234
    :cond_0
    :goto_0
    return v0

    .line 4222
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    .line 4223
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4226
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 4227
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    .line 4228
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4229
    :cond_3
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 4230
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    .line 1104
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 1105
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    .line 1106
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 1107
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 1125
    :goto_0
    return-void

    .line 1109
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 1110
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 1111
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1114
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    .line 1115
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 1116
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    .line 1117
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 1118
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 1120
    :cond_2
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 1121
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 1122
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 1052
    sub-int v6, p2, p1

    .line 1055
    sub-int v7, p2, p1

    .line 1058
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->reconcileSelectedPosition()I

    move-result v1

    .line 1060
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    move-object v0, p0

    move v2, p1

    move v5, v3

    .line 1062
    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1064
    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 1067
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1068
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1069
    if-gt v2, v7, :cond_0

    .line 1070
    sub-int v2, v7, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1080
    :cond_0
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1082
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_3

    .line 1083
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooHigh(I)V

    .line 1088
    :goto_2
    return-object v0

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1073
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1074
    if-gt v2, v6, :cond_0

    .line 1075
    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 1085
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooLow(I)V

    goto :goto_2
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 1141
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 1142
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    .line 1146
    invoke-direct {p0, p2, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopSelectionPixel(III)I

    move-result v6

    .line 1148
    invoke-direct {p0, p3, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 1152
    invoke-direct {p0, p2, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopSelectionPixel(III)I

    move-result v8

    .line 1154
    invoke-direct {p0, p3, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomSelectionPixel(III)I

    move-result v9

    .line 1158
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    move-object v0, p0

    move v2, p1

    move v5, v3

    .line 1160
    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1163
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1165
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v9, :cond_2

    .line 1168
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v8

    .line 1172
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v9

    .line 1173
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1176
    neg-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1221
    :cond_0
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1223
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_5

    .line 1224
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooHigh(I)V

    .line 1229
    :goto_2
    return-object v0

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1177
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v8, :cond_0

    .line 1180
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v8, v2

    .line 1184
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v9, v3

    .line 1185
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1188
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1192
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v7, :cond_4

    .line 1195
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v6

    .line 1199
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v7

    .line 1200
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1203
    neg-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 1204
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 1207
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v6, v2

    .line 1211
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v3, v7, v3

    .line 1212
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1215
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 1226
    :cond_5
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooLow(I)V

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1031
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 1032
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 1033
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1034
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 1036
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 2048
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 2051
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2052
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 2059
    :goto_1
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 2065
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2066
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    .line 2067
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_4

    .line 2068
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 2070
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 2071
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 2072
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v3

    .line 2073
    if-lez v3, :cond_0

    .line 2074
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooHigh(I)V

    :cond_0
    :goto_2
    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    .line 2113
    :cond_1
    :goto_3
    if-eqz v5, :cond_7

    .line 2118
    :goto_4
    return-object v0

    .line 2048
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 2055
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2077
    :cond_4
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 2079
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 2080
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v3, v4, v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .line 2081
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v3

    .line 2082
    if-lez v3, :cond_0

    .line 2083
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooLow(I)V

    goto :goto_2

    .line 2087
    :cond_5
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    .line 2088
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_6

    .line 2089
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 2091
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 2092
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    move-result-object v2

    .line 2093
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v3

    .line 2094
    if-lez v3, :cond_1

    .line 2095
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooHigh(I)V

    goto :goto_3

    .line 2098
    :cond_6
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    move-result-object v2

    .line 2100
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 2101
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v3, v4, v3

    invoke-virtual {p0, v1, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 2102
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v3

    .line 2103
    if-lez v3, :cond_1

    .line 2104
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooLow(I)V

    goto/16 :goto_3

    .line 2115
    :cond_7
    if-eqz v1, :cond_8

    move-object v0, v1

    .line 2116
    goto/16 :goto_4

    :cond_8
    move-object v0, v2

    .line 2118
    goto/16 :goto_4
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 3753
    .line 3754
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3755
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3762
    :goto_0
    return v0

    .line 3758
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 1

    .prologue
    .line 1245
    .line 1246
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1247
    sub-int/2addr p1, p2

    .line 1249
    :cond_0
    return p1
.end method

.method private getLeftSelectionPixel(III)I
    .locals 0

    .prologue
    .line 1308
    .line 1309
    if-lez p3, :cond_0

    .line 1310
    add-int/2addr p1, p2

    .line 1312
    :cond_0
    return p1
.end method

.method private getRightSelectionPixel(III)I
    .locals 1

    .prologue
    .line 1287
    .line 1288
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1289
    sub-int/2addr p1, p2

    .line 1291
    :cond_0
    return p1
.end method

.method private getTopSelectionPixel(III)I
    .locals 0

    .prologue
    .line 1266
    .line 1267
    if-lez p3, :cond_0

    .line 1268
    add-int/2addr p1, p2

    .line 1270
    :cond_0
    return p1
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 3

    .prologue
    .line 3344
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 3345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3348
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    .line 3349
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemsCanFocus:Z

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3350
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3351
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3352
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3353
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3357
    if-eqz v0, :cond_1

    .line 3359
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3360
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3361
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3362
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3363
    const/4 v0, 0x1

    .line 3380
    :goto_0
    return v0

    .line 3370
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3375
    if-eqz v0, :cond_2

    .line 3376
    invoke-direct {p0, v0, p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 3380
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3574
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 3575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3583
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3588
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int/2addr v0, v3

    .line 3589
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int v3, p3, v3

    .line 3590
    const/16 v4, 0x11

    if-ne p2, v4, :cond_3

    .line 3593
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    move v3, v0

    move v0, v1

    .line 3603
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v6

    .line 3606
    if-eqz v4, :cond_1

    .line 3607
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 3608
    invoke-direct {p0, v4, v3, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3612
    :cond_1
    if-eqz p1, :cond_2

    .line 3613
    if-nez p4, :cond_5

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3614
    invoke-direct {p0, p1, v3, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3651
    :cond_2
    :goto_3
    return-void

    .line 3600
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v4, p1

    move-object p1, v0

    move v0, v2

    goto :goto_0

    :cond_4
    move v5, v2

    .line 3607
    goto :goto_1

    :cond_5
    move v1, v2

    .line 3613
    goto :goto_2

    .line 3621
    :cond_6
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int/2addr v0, v3

    .line 3622
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int v3, p3, v3

    .line 3623
    const/16 v4, 0x21

    if-ne p2, v4, :cond_8

    .line 3626
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v1

    .line 3636
    :goto_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v7

    .line 3639
    if-eqz v5, :cond_7

    .line 3640
    if-nez p4, :cond_9

    if-eqz v0, :cond_9

    move v6, v1

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 3641
    invoke-direct {p0, v5, v4, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3645
    :cond_7
    if-eqz p1, :cond_2

    .line 3646
    if-nez p4, :cond_a

    if-nez v0, :cond_a

    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3647
    invoke-direct {p0, p1, v3, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureAndAdjustDown(Landroid/view/View;II)V

    goto :goto_3

    .line 3633
    :cond_8
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, p1

    move-object p1, v4

    move v4, v0

    move v0, v2

    goto :goto_4

    :cond_9
    move v6, v2

    .line 3640
    goto :goto_5

    :cond_a
    move v1, v2

    .line 3646
    goto :goto_6
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2637
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2638
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 2639
    :goto_0
    if-ge v3, v5, :cond_1

    .line 2640
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/i;->a:Landroid/view/View;

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 2651
    :goto_1
    return v0

    .line 2639
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 2644
    :cond_1
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2645
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 2646
    :goto_2
    if-ge v3, v5, :cond_3

    .line 2647
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/i;->a:Landroid/view/View;

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 2648
    goto :goto_1

    .line 2646
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 2651
    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4144
    if-ne p1, p2, :cond_0

    .line 4149
    :goto_0
    return v1

    .line 4148
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4149
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 3988
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 3989
    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_6

    .line 3990
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    .line 3992
    :goto_0
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_3

    move v0, v3

    .line 4026
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 3990
    goto :goto_0

    .line 3995
    :cond_3
    if-ge v0, v1, :cond_4

    move v0, v1

    .line 3999
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLastVisiblePosition()I

    move-result v2

    .line 4000
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 4001
    :goto_2
    if-gt v0, v2, :cond_a

    .line 4002
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    sub-int v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 4001
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4008
    :cond_6
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 4009
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x1

    .line 4011
    :goto_3
    if-gez v2, :cond_8

    move v0, v3

    .line 4012
    goto :goto_1

    .line 4009
    :cond_7
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 4014
    :cond_8
    if-le v2, v0, :cond_b

    .line 4018
    :goto_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 4019
    :goto_5
    if-lt v0, v1, :cond_a

    .line 4020
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_9

    sub-int v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4019
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_a
    move v0, v3

    .line 4026
    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_4
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 2677
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2680
    if-eqz v1, :cond_0

    .line 2688
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2700
    :goto_0
    return-object v1

    .line 2695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2698
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setupChild(Landroid/view/View;IIZIZZ)V

    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 3666
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3667
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureItem(Landroid/view/View;)V

    .line 3668
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3670
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3673
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3674
    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    .line 3675
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3679
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v4, 0x0

    .line 3688
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3693
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3694
    if-nez v0, :cond_0

    .line 3695
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3700
    :cond_0
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeightMeasureSpec:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3702
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3703
    if-lez v0, :cond_1

    .line 3704
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3728
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 3729
    return-void

    .line 3707
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 3711
    :cond_2
    if-nez v0, :cond_3

    .line 3712
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3717
    :cond_3
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mWidthMeasureSpec:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3719
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3720
    if-lez v0, :cond_4

    .line 3721
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    .line 3724
    :cond_4
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 1780
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    .line 1781
    if-nez v0, :cond_0

    .line 1782
    new-instance v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;-><init>(III)V

    .line 1784
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1786
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    .line 1789
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1790
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1792
    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->width:I

    .line 1794
    if-lez v0, :cond_1

    .line 1795
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1799
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1813
    :goto_1
    return-void

    .line 1797
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 1801
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1803
    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->height:I

    .line 1805
    if-lez v0, :cond_3

    .line 1806
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1810
    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 1808
    :cond_3
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 11

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1424
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 1425
    iget v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    .line 1427
    invoke-direct {p0, p4, v0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeftSelectionPixel(III)I

    move-result v7

    .line 1429
    invoke-direct {p0, p4, v0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRightSelectionPixel(III)I

    move-result v8

    .line 1432
    if-lez p3, :cond_2

    .line 1454
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v9

    .line 1457
    iget v10, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    .line 1460
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v2, v0, v10

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1464
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v8, :cond_0

    .line 1467
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    .line 1470
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v8

    .line 1473
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 1474
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1475
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1478
    neg-int v2, v1

    invoke-virtual {v9, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1480
    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1484
    :cond_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 1485
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    .line 1486
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 1487
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 1714
    :goto_0
    return-object v0

    .line 1489
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 1490
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 1491
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1493
    :cond_2
    if-gez p3, :cond_5

    .line 1514
    if-eqz p2, :cond_4

    .line 1516
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1526
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v7, :cond_3

    .line 1528
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v7, v1

    .line 1531
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v2, v8, v2

    .line 1534
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 1535
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1536
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1539
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1543
    :cond_3
    invoke-direct {p0, v0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1521
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1546
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1554
    if-ge v7, p4, :cond_6

    .line 1557
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1558
    add-int/lit8 v2, p4, 0x14

    if-ge v1, v2, :cond_6

    .line 1560
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1565
    :cond_6
    invoke-direct {p0, v0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1568
    :cond_7
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 1569
    iget v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    .line 1571
    invoke-direct {p0, p4, v0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopSelectionPixel(III)I

    move-result v7

    .line 1573
    invoke-direct {p0, p4, v0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1576
    if-lez p3, :cond_a

    .line 1598
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v9

    .line 1601
    iget v10, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    .line 1604
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v2, v0, v10

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1608
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v8, :cond_8

    .line 1611
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v7

    .line 1614
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v8

    .line 1617
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 1618
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1619
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1622
    neg-int v2, v1

    invoke-virtual {v9, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1624
    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1628
    :cond_8
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_9

    .line 1629
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    .line 1630
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 1631
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    goto/16 :goto_0

    .line 1633
    :cond_9
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 1634
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    .line 1635
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_0

    .line 1637
    :cond_a
    if-gez p3, :cond_d

    .line 1658
    if-eqz p2, :cond_c

    .line 1660
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1670
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v7, :cond_b

    .line 1672
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v7, v1

    .line 1675
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v8, v2

    .line 1678
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 1679
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1680
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1683
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1687
    :cond_b
    invoke-direct {p0, v0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1665
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 1690
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1695
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1698
    if-ge v2, p4, :cond_e

    .line 1701
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1702
    add-int/lit8 v2, p4, 0x14

    if-ge v1, v2, :cond_e

    .line 1704
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1709
    :cond_e
    invoke-direct {p0, v0, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 4129
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    .line 4130
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4131
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4132
    invoke-direct {p0, p1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4133
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v1

    return v0

    .line 4130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 3739
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3740
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3741
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 3742
    add-int/2addr v0, v2

    .line 3743
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3744
    add-int/2addr v1, v3

    .line 3745
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 3746
    return-void
.end method

.method private scrollListItemsBy(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4247
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4248
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 4250
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v1

    .line 4251
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 4252
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    .line 4254
    if-gez p1, :cond_3

    .line 4258
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    .line 4259
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4260
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_0

    .line 4261
    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    .line 4262
    iget v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 4263
    invoke-direct {p0, v0, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4264
    add-int/lit8 v1, v1, 0x1

    .line 4268
    goto :goto_0

    .line 4273
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 4274
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 4278
    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 4279
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge v0, v2, :cond_f

    .line 4280
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    .line 4281
    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4282
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->removeViewInLayout(Landroid/view/View;)V

    .line 4283
    invoke-virtual {v4, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4287
    :goto_2
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4288
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    move-object v1, v0

    .line 4289
    goto :goto_1

    .line 4285
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_2

    .line 4292
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4295
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-lez v1, :cond_4

    .line 4296
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4297
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    goto :goto_3

    .line 4302
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v2, :cond_5

    .line 4303
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 4306
    :cond_5
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 4307
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 4310
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v3, :cond_f

    .line 4311
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    .line 4312
    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4313
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->removeViewInLayout(Landroid/view/View;)V

    .line 4314
    invoke-virtual {v4, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4318
    :goto_5
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 4319
    goto :goto_4

    .line 4316
    :cond_6
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_5

    .line 4324
    :cond_7
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v1

    .line 4325
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 4326
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    .line 4328
    if-gez p1, :cond_b

    .line 4332
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    .line 4333
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4334
    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v3, :cond_8

    .line 4335
    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    .line 4336
    iget v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_8

    .line 4337
    invoke-direct {p0, v0, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4338
    add-int/lit8 v1, v1, 0x1

    .line 4342
    goto :goto_6

    .line 4347
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge v0, v3, :cond_9

    .line 4352
    :cond_9
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 4353
    :goto_7
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge v0, v2, :cond_f

    .line 4354
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    .line 4355
    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4356
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->removeViewInLayout(Landroid/view/View;)V

    .line 4357
    invoke-virtual {v4, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4361
    :goto_8
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4362
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    move-object v1, v0

    .line 4363
    goto :goto_7

    .line 4359
    :cond_a
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_8

    .line 4366
    :cond_b
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4369
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v2, :cond_c

    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-lez v1, :cond_c

    .line 4370
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4371
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    goto :goto_9

    .line 4376
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-le v0, v2, :cond_d

    .line 4380
    :cond_d
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 4381
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 4384
    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    if-le v0, v3, :cond_f

    .line 4385
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    .line 4386
    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4387
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->removeViewInLayout(Landroid/view/View;)V

    .line 4388
    invoke-virtual {v4, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4392
    :goto_b
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 4393
    goto :goto_a

    .line 4390
    :cond_e
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_b

    .line 4401
    :cond_f
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 7

    .prologue
    .line 2727
    if-nez p1, :cond_1

    .line 2825
    :cond_0
    :goto_0
    return-void

    .line 2730
    :cond_1
    if-eqz p6, :cond_6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v1, v0

    .line 2731
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v1, v0, :cond_7

    const/4 v0, 0x1

    move v4, v0

    .line 2732
    :goto_2
    if-eqz p7, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    const/4 v0, 0x1

    move v2, v0

    .line 2736
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    .line 2737
    if-nez v0, :cond_16

    .line 2738
    new-instance v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v0, v3, v5, v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;-><init>(III)V

    move-object v3, v0

    .line 2741
    :goto_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    iput v0, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    .line 2743
    if-nez p7, :cond_3

    iget-boolean v0, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v0, :cond_a

    iget v0, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_a

    .line 2745
    :cond_3
    if-eqz p4, :cond_9

    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p0, p1, v0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2753
    :goto_6
    if-eqz v4, :cond_4

    .line 2754
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2757
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mChoiceMode:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_5

    .line 2758
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 2759
    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2763
    :cond_5
    if-eqz v2, :cond_10

    .line 2765
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2766
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeightMeasureSpec:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    iget v4, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->height:I

    invoke-static {v0, v1, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2768
    iget v0, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->width:I

    .line 2770
    if-lez v0, :cond_d

    .line 2771
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2775
    :goto_7
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 2793
    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2794
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2797
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2798
    if-eqz p4, :cond_11

    .line 2800
    :goto_9
    if-eqz v2, :cond_12

    .line 2801
    add-int/2addr v1, p5

    .line 2802
    add-int/2addr v0, p3

    .line 2803
    invoke-virtual {p1, p3, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2822
    :goto_a
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2823
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    .line 2730
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    .line 2731
    :cond_7
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_2

    .line 2732
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_3

    .line 2745
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 2747
    :cond_a
    iget v0, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_b

    .line 2748
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->recycledHeaderFooter:Z

    .line 2750
    :cond_b
    if-eqz p4, :cond_c

    const/4 v0, -0x1

    :goto_b
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v0, v3, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 2773
    :cond_d
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_7

    .line 2777
    :cond_e
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mWidthMeasureSpec:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    iget v4, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->width:I

    invoke-static {v0, v1, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2779
    iget v0, v3, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->height:I

    .line 2781
    if-lez v0, :cond_f

    .line 2782
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2786
    :goto_c
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 2784
    :cond_f
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_c

    .line 2790
    :cond_10
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_8

    .line 2798
    :cond_11
    sub-int/2addr p3, v0

    goto :goto_9

    .line 2805
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2806
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_a

    .line 2809
    :cond_13
    if-eqz p4, :cond_14

    .line 2811
    :goto_d
    if-eqz v2, :cond_15

    .line 2812
    add-int/2addr v0, p5

    .line 2813
    add-int/2addr v1, p3

    .line 2814
    invoke-virtual {p1, p5, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    .line 2809
    :cond_14
    sub-int/2addr p3, v1

    goto :goto_d

    .line 2816
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2817
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    :cond_16
    move-object v3, v0

    goto/16 :goto_4
.end method

.method private showingBottomFadingEdge()Z
    .locals 4

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    .line 673
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 674
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 676
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 678
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_0

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showingLeftFadingEdge()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 688
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private showingRightFadingEdge()Z
    .locals 4

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    .line 696
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 697
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 699
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 701
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_0

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 665
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 388
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot support header view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method arrowScroll(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3444
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mInLayout:Z

    .line 3445
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->arrowScrollImpl(I)Z

    move-result v0

    .line 3446
    if-eqz v0, :cond_0

    .line 3447
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3451
    :cond_0
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mInLayout:Z

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2833
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 4479
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4480
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    .line 4482
    if-lez v1, :cond_f

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 4484
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    .line 4485
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 4486
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 4488
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v3

    .line 4489
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4490
    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 4491
    iget-boolean v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderDividersEnabled:Z

    .line 4492
    iget-boolean v7, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterDividersEnabled:Z

    .line 4493
    iget v8, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 4495
    iget-boolean v9, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v9, :cond_3

    .line 4497
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    .line 4499
    :goto_0
    if-ge v0, v3, :cond_f

    .line 4500
    if-nez v6, :cond_0

    add-int v10, v8, v0

    if-lt v10, v4, :cond_2

    :cond_0
    if-nez v7, :cond_1

    add-int v10, v8, v0

    if-ge v10, v5, :cond_2

    .line 4502
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4503
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v11

    .line 4504
    if-ge v11, v9, :cond_2

    .line 4505
    iput v11, v2, Landroid/graphics/Rect;->left:I

    .line 4506
    add-int/2addr v11, v1

    iput v11, v2, Landroid/graphics/Rect;->right:I

    .line 4510
    iget-object v11, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewWithoutDivider:Landroid/view/View;

    if-eq v11, v10, :cond_2

    .line 4512
    invoke-virtual {p0, p1, v2, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4499
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4522
    :cond_3
    iget-object v9, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 4524
    :goto_1
    if-ge v0, v3, :cond_f

    .line 4525
    if-nez v6, :cond_4

    add-int v10, v8, v0

    if-lt v10, v4, :cond_6

    :cond_4
    if-nez v7, :cond_5

    add-int v10, v8, v0

    if-ge v10, v5, :cond_6

    .line 4527
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4528
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 4529
    if-le v11, v9, :cond_6

    .line 4530
    sub-int v12, v11, v1

    iput v12, v2, Landroid/graphics/Rect;->left:I

    .line 4531
    iput v11, v2, Landroid/graphics/Rect;->right:I

    .line 4539
    iget-object v11, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewWithoutDivider:Landroid/view/View;

    if-eq v11, v10, :cond_6

    .line 4541
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, p1, v2, v10}, Lcom/htc/lib1/cc/widget/CrabWalkView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4524
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4552
    :cond_7
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    .line 4554
    if-lez v1, :cond_f

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 4556
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    .line 4557
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 4558
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 4560
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v3

    .line 4561
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4562
    iget v5, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 4563
    iget-boolean v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderDividersEnabled:Z

    .line 4564
    iget-boolean v7, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterDividersEnabled:Z

    .line 4565
    iget v8, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 4567
    iget-boolean v9, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v9, :cond_b

    .line 4569
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 4571
    :goto_2
    if-ge v0, v3, :cond_f

    .line 4572
    if-nez v6, :cond_8

    add-int v10, v8, v0

    if-lt v10, v4, :cond_a

    :cond_8
    if-nez v7, :cond_9

    add-int v10, v8, v0

    if-ge v10, v5, :cond_a

    .line 4574
    :cond_9
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4575
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 4576
    if-ge v11, v9, :cond_a

    .line 4577
    iput v11, v2, Landroid/graphics/Rect;->top:I

    .line 4578
    add-int/2addr v11, v1

    iput v11, v2, Landroid/graphics/Rect;->bottom:I

    .line 4582
    iget-object v11, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewWithoutDivider:Landroid/view/View;

    if-eq v11, v10, :cond_a

    .line 4584
    invoke-virtual {p0, p1, v2, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4571
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4594
    :cond_b
    iget-object v9, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 4596
    :goto_3
    if-ge v0, v3, :cond_f

    .line 4597
    if-nez v6, :cond_c

    add-int v10, v8, v0

    if-lt v10, v4, :cond_e

    :cond_c
    if-nez v7, :cond_d

    add-int v10, v8, v0

    if-ge v10, v5, :cond_e

    .line 4599
    :cond_d
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4600
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 4601
    if-le v11, v9, :cond_e

    .line 4602
    sub-int v12, v11, v1

    iput v12, v2, Landroid/graphics/Rect;->top:I

    .line 4603
    iput v11, v2, Landroid/graphics/Rect;->bottom:I

    .line 4611
    iget-object v11, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewWithoutDivider:Landroid/view/View;

    if-eq v11, v10, :cond_e

    .line 4613
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, p1, v2, v10}, Lcom/htc/lib1/cc/widget/CrabWalkView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4596
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4627
    :cond_f
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4628
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 3022
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 3023
    if-nez v0, :cond_0

    .line 3025
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 3026
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 3029
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3032
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4

    .prologue
    .line 4643
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 4644
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4645
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mClipDivider:Z

    .line 4647
    if-nez v2, :cond_1

    .line 4648
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4649
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4654
    :goto_0
    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v3, p3

    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->shouldDrawSeperatorDivider(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4655
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4660
    :goto_1
    if-eqz v2, :cond_0

    .line 4661
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4663
    :cond_0
    return-void

    .line 4651
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4652
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 4657
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 925
    const/4 v6, 0x0

    .line 928
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 929
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, v1

    move v2, p2

    move v1, p1

    .line 931
    :goto_0
    if-ge v2, v8, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ge v1, v0, :cond_0

    .line 933
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-ne v1, v0, :cond_1

    move v5, v3

    .line 934
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 937
    if-nez v0, :cond_2

    .line 964
    :cond_0
    return-object v6

    :cond_1
    move v5, v7

    .line 933
    goto :goto_1

    .line 939
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    add-int/2addr v2, v4

    .line 940
    if-eqz v5, :cond_6

    .line 943
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v6, v0

    .line 944
    goto :goto_0

    .line 946
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v0, v1

    move v2, p2

    move v1, p1

    .line 948
    :goto_3
    if-ge v2, v8, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ge v1, v0, :cond_0

    .line 950
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-ne v1, v0, :cond_4

    move v5, v3

    .line 951
    :goto_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    add-int/2addr v2, v4

    .line 957
    if-eqz v5, :cond_5

    .line 960
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object v6, v0

    .line 961
    goto :goto_3

    :cond_4
    move v5, v7

    .line 950
    goto :goto_4

    :cond_5
    move-object v0, v6

    goto :goto_5

    :cond_6
    move-object v0, v6

    goto :goto_2
.end method

.method fillGap(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    .line 873
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    if-eqz p1, :cond_1

    .line 875
    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    add-int/2addr v0, v2

    .line 878
    :goto_0
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 879
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooHigh(I)V

    .line 904
    :goto_1
    return-void

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getListPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 881
    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    sub-int/2addr v0, v1

    .line 883
    :goto_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    .line 884
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooLow(I)V

    goto :goto_1

    .line 881
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getListPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    .line 887
    :cond_3
    if-eqz p1, :cond_5

    .line 888
    if-lez v1, :cond_4

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    add-int/2addr v0, v2

    .line 891
    :goto_3
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillDown(II)Landroid/view/View;

    .line 892
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooHigh(I)V

    goto :goto_1

    .line 888
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getListPaddingTop()I

    move-result v0

    goto :goto_3

    .line 894
    :cond_5
    if-lez v1, :cond_6

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    sub-int/2addr v0, v1

    .line 896
    :goto_4
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    .line 897
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->correctTooLow(I)V

    goto :goto_1

    .line 894
    :cond_6
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getListPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_4
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 985
    const/4 v6, 0x0

    .line 988
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move v2, p2

    move v1, p1

    .line 991
    :goto_0
    if-le v2, v8, :cond_3

    if-ltz v1, :cond_3

    .line 993
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-ne v1, v0, :cond_0

    move v5, v7

    .line 994
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    sub-int/2addr v2, v4

    .line 996
    if-eqz v5, :cond_5

    .line 999
    :goto_2
    add-int/lit8 v1, v1, -0x1

    move-object v6, v0

    .line 1000
    goto :goto_0

    :cond_0
    move v5, v3

    .line 993
    goto :goto_1

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move v2, p2

    move v1, p1

    .line 1004
    :goto_3
    if-le v2, v8, :cond_3

    if-ltz v1, :cond_3

    .line 1006
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-ne v1, v0, :cond_2

    move v5, v7

    .line 1007
    :goto_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1008
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    sub-int/2addr v2, v4

    .line 1009
    if-eqz v5, :cond_4

    .line 1012
    :goto_5
    add-int/lit8 v1, v1, -0x1

    move-object v6, v0

    .line 1013
    goto :goto_3

    :cond_2
    move v5, v3

    .line 1006
    goto :goto_4

    .line 1017
    :cond_3
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 1019
    return-object v6

    :cond_4
    move-object v0, v6

    goto :goto_5

    :cond_5
    move-object v0, v6

    goto :goto_2
.end method

.method findMotionColumn(I)I
    .locals 3

    .prologue
    .line 2005
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    .line 2006
    if-lez v1, :cond_1

    .line 2007
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2008
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2009
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 2010
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v1

    .line 2014
    :goto_1
    return v0

    .line 2007
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2014
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findMotionRow(I)I
    .locals 3

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    .line 2022
    if-lez v1, :cond_2

    .line 2023
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2024
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2025
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 2026
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v1

    .line 2031
    :goto_1
    return v0

    .line 2023
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2029
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2031
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3275
    .line 3278
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3279
    const/16 v2, 0x11

    if-ne p1, v2, :cond_2

    .line 3280
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-eqz v2, :cond_5

    .line 3281
    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3282
    if-ltz v1, :cond_0

    .line 3283
    const/4 v2, 0x7

    iput v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 3284
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectionInt(I)V

    .line 3285
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V

    .line 3327
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3328
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invalidate()V

    .line 3331
    :cond_1
    return v0

    .line 3289
    :cond_2
    const/16 v2, 0x42

    if-ne p1, v2, :cond_5

    .line 3290
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 3291
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3293
    if-ltz v1, :cond_0

    .line 3294
    const/16 v2, 0x8

    iput v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 3295
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectionInt(I)V

    .line 3296
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V

    goto :goto_0

    .line 3302
    :cond_3
    const/16 v2, 0x21

    if-ne p1, v2, :cond_4

    .line 3303
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-eqz v2, :cond_5

    .line 3304
    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3305
    if-ltz v1, :cond_0

    .line 3306
    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 3307
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectionInt(I)V

    .line 3308
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V

    goto :goto_0

    .line 3312
    :cond_4
    const/16 v2, 0x82

    if-ne p1, v2, :cond_5

    .line 3313
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    .line 3314
    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3316
    if-ltz v1, :cond_0

    .line 3317
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 3318
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectionInt(I)V

    .line 3319
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5028
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5030
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 5033
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 5048
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 5049
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5051
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 4896
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 4725
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 4755
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 4468
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemsCanFocus:Z

    return v0
.end method

.method public getListBottom()I
    .locals 2

    .prologue
    .line 5187
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    const v2, 0x3ea8f5c3    # 0.33f

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 249
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method isInBouncing()Z
    .locals 1

    .prologue
    .line 5193
    const/4 v0, 0x0

    return v0
.end method

.method protected layoutChildren()V
    .locals 18

    .prologue
    .line 2302
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mBlockLayoutRequests:Z

    .line 2303
    if-nez v12, :cond_0

    .line 2304
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mBlockLayoutRequests:Z

    .line 2310
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->layoutChildren()V

    .line 2312
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invalidate()V

    .line 2314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 2315
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->resetList()V

    .line 2316
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2624
    if-nez v12, :cond_0

    .line 2625
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mBlockLayoutRequests:Z

    .line 2628
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopBorderHeight()I

    move-result v2

    add-int v7, v1, v2

    .line 2321
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottom()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getBottomBorderHeight()I

    move-result v2

    sub-int v13, v1, v2

    .line 2324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeftBorderWidth()I

    move-result v2

    add-int v5, v1, v2

    .line 2325
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getRightBorderWidth()I

    move-result v2

    sub-int v6, v1, v2

    .line 2328
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v14

    .line 2330
    const/4 v8, 0x0

    .line 2332
    const/4 v1, 0x0

    .line 2333
    const/4 v4, 0x0

    .line 2334
    const/4 v2, 0x0

    .line 2335
    const/4 v3, 0x0

    .line 2337
    const/4 v9, 0x0

    .line 2340
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    packed-switch v10, :pswitch_data_0

    .line 2357
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int v3, v2, v3

    .line 2358
    if-ltz v3, :cond_2

    if-ge v3, v14, :cond_2

    .line 2359
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2363
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2365
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mNextSelectedPosition:I

    if-ltz v10, :cond_3

    .line 2366
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    sub-int/2addr v8, v10

    .line 2370
    :cond_3
    add-int/2addr v3, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v2

    move-object v2, v4

    move v4, v8

    .line 2374
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataChanged:Z

    .line 2375
    if-eqz v15, :cond_4

    .line 2376
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->handleDataChanged()V

    .line 2381
    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-nez v8, :cond_5

    .line 2382
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->resetList()V

    .line 2383
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2624
    if-nez v12, :cond_0

    .line 2625
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2342
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    sub-int/2addr v10, v11

    .line 2343
    if-ltz v10, :cond_2a

    if-ge v10, v14, :cond_2a

    .line 2344
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v2

    move-object v2, v4

    move v4, v8

    goto :goto_1

    :pswitch_2
    move-object v11, v2

    move-object v2, v4

    move v4, v8

    .line 2353
    goto :goto_1

    .line 2387
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectedPositionInt(I)V

    .line 2391
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    move-object/from16 v16, v0

    .line 2395
    const/4 v8, 0x0

    .line 2400
    if-eqz v15, :cond_6

    .line 2401
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_7

    .line 2402
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2401
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2409
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v10}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->fillActiveViews(II)V

    .line 2416
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    .line 2417
    if-eqz v10, :cond_b

    .line 2422
    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2425
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 2426
    if-eqz v9, :cond_9

    .line 2428
    invoke-virtual {v9}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_9
    move-object v8, v10

    .line 2431
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestFocus()Z

    .line 2436
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->detachAllViewsFromParent()V

    .line 2438
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    packed-switch v10, :pswitch_data_1

    .line 2499
    if-nez v14, :cond_1a

    .line 2500
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-nez v1, :cond_18

    .line 2501
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2502
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectedPositionInt(I)V

    .line 2504
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2505
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    :goto_3
    move-object v2, v1

    .line 2559
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->scrapActiveViews()V

    .line 2561
    if-eqz v2, :cond_28

    .line 2564
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemsCanFocus:Z

    if-eqz v1, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_27

    .line 2565
    if-ne v2, v8, :cond_c

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_d
    const/4 v1, 0x1

    .line 2567
    :goto_5
    if-nez v1, :cond_25

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2572
    if-eqz v1, :cond_e

    .line 2573
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2575
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->positionSelector(Landroid/view/View;)V

    .line 2583
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedTop:I

    .line 2586
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedTop:I

    .line 2606
    :cond_f
    :goto_7
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 2608
    invoke-virtual {v9}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2611
    :cond_10
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 2612
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataChanged:Z

    .line 2613
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mNeedSync:Z

    .line 2614
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setNextSelectedPositionInt(I)V

    .line 2616
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->updateScrollIndicators()V

    .line 2618
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-lez v1, :cond_11

    .line 2619
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->checkSelectionChanged()V

    .line 2622
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2624
    if-nez v12, :cond_0

    .line 2625
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2441
    :pswitch_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2442
    if-eqz v3, :cond_12

    .line 2443
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 2445
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 2448
    :cond_13
    if-eqz v3, :cond_14

    .line 2449
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7, v13}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 2451
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 2454
    goto/16 :goto_4

    .line 2456
    :pswitch_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 2457
    goto/16 :goto_4

    .line 2459
    :pswitch_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 2460
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    move-object v2, v1

    .line 2461
    goto/16 :goto_4

    .line 2463
    :pswitch_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 2464
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    .line 2465
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    move-object v2, v1

    .line 2466
    goto/16 :goto_4

    .line 2469
    :pswitch_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 2470
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    move-object v2, v1

    .line 2471
    goto/16 :goto_4

    .line 2473
    :pswitch_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 2474
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    .line 2475
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->adjustViewsUpOrDown()V

    move-object v2, v1

    .line 2476
    goto/16 :goto_4

    .line 2480
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->reconcileSelectedPosition()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSpecificLeft:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 2483
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->reconcileSelectedPosition()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 2486
    goto/16 :goto_4

    .line 2489
    :pswitch_a
    if-eqz v2, :cond_29

    .line 2490
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v1, p0

    .line 2491
    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_16
    move-object/from16 v1, p0

    move v5, v7

    move v6, v13

    .line 2493
    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 2507
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_3

    .line 2511
    :cond_18
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2512
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectedPositionInt(I)V

    .line 2514
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2515
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    :goto_8
    move-object v2, v1

    .line 2520
    goto/16 :goto_4

    .line 2517
    :cond_19
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    goto :goto_8

    .line 2522
    :cond_1a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-ltz v1, :cond_1e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ge v1, v3, :cond_1e

    .line 2525
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2526
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-nez v2, :cond_1b

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_9

    .line 2529
    :cond_1c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-nez v2, :cond_1d

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_a

    .line 2533
    :cond_1e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-ge v1, v2, :cond_22

    .line 2536
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2537
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-nez v11, :cond_1f

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_1f
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_b

    .line 2540
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    if-nez v11, :cond_21

    move v1, v7

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_21
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_c

    .line 2547
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2548
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 2550
    :cond_23
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 2565
    :cond_24
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 2577
    :cond_25
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    .line 2624
    :catchall_0
    move-exception v1

    if-nez v12, :cond_26

    .line 2625
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mBlockLayoutRequests:Z

    :cond_26
    throw v1

    .line 2581
    :cond_27
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_6

    .line 2589
    :cond_28
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedTop:I

    .line 2592
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedLeft:I

    .line 2595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2599
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v9, :cond_f

    .line 2600
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    :cond_29
    move-object v2, v1

    goto/16 :goto_4

    :cond_2a
    move-object v11, v2

    move-object v2, v4

    move v4, v8

    goto/16 :goto_1

    .line 2340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2438
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 2960
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2961
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v0

    .line 2987
    :cond_1
    :goto_0
    return p1

    .line 2965
    :cond_2
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2966
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_6

    .line 2967
    if-eqz p2, :cond_3

    .line 2968
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2969
    :goto_1
    if-ge p1, v2, :cond_4

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2970
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2973
    :cond_3
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2974
    :goto_2
    if-ltz p1, :cond_4

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2975
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2979
    :cond_4
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_1

    :cond_5
    move p1, v0

    .line 2980
    goto :goto_0

    .line 2984
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_1

    :cond_7
    move p1, v0

    .line 2985
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1856
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1857
    if-nez v3, :cond_1

    .line 1858
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int p4, v0, v1

    .line 1910
    :cond_0
    :goto_0
    return p4

    .line 1862
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 1863
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    .line 1871
    :goto_1
    const/4 v4, -0x1

    if-ne p3, v4, :cond_2

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 p3, v3, -0x1

    .line 1872
    :cond_2
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    .line 1873
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->recycleOnMeasure()Z

    move-result v4

    .line 1875
    :goto_2
    if-gt p2, p3, :cond_8

    .line 1876
    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->obtainView(I)Landroid/view/View;

    move-result-object v5

    .line 1878
    invoke-direct {p0, v5, p2, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureScrapChild(Landroid/view/View;II)V

    .line 1880
    if-lez p2, :cond_3

    .line 1882
    add-int/2addr v1, v2

    .line 1886
    :cond_3
    if-eqz v4, :cond_4

    .line 1887
    invoke-virtual {v3, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1890
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    .line 1892
    if-lt v1, p4, :cond_6

    .line 1895
    if-ltz p5, :cond_0

    if-le p2, p5, :cond_0

    if-lez v0, :cond_0

    if-eq v1, p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_5
    move v2, v0

    .line 1863
    goto :goto_1

    .line 1903
    :cond_6
    if-ltz p5, :cond_7

    if-lt p2, p5, :cond_7

    move v0, v1

    .line 1875
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    move p4, v1

    .line 1910
    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1946
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1947
    if-nez v3, :cond_1

    .line 1948
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int p4, v0, v1

    .line 2000
    :cond_0
    :goto_0
    return p4

    .line 1952
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 1953
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    .line 1961
    :goto_1
    const/4 v4, -0x1

    if-ne p3, v4, :cond_2

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 p3, v3, -0x1

    .line 1962
    :cond_2
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    .line 1963
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->recycleOnMeasure()Z

    move-result v4

    .line 1965
    :goto_2
    if-gt p2, p3, :cond_8

    .line 1966
    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->obtainView(I)Landroid/view/View;

    move-result-object v5

    .line 1968
    invoke-direct {p0, v5, p2, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureScrapChild(Landroid/view/View;II)V

    .line 1970
    if-lez p2, :cond_3

    .line 1972
    add-int/2addr v1, v2

    .line 1976
    :cond_3
    if-eqz v4, :cond_4

    .line 1977
    invoke-virtual {v3, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1980
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v1, v5

    .line 1982
    if-lt v1, p4, :cond_6

    .line 1985
    if-ltz p5, :cond_0

    if-le p2, p5, :cond_0

    if-lez v0, :cond_0

    if-eq v1, p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_5
    move v2, v0

    .line 1953
    goto :goto_1

    .line 1993
    :cond_6
    if-ltz p5, :cond_7

    if-lt p2, p5, :cond_7

    move v0, v1

    .line 1965
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    move p4, v1

    .line 2000
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 4871
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onFinishInflate()V

    .line 4873
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    .line 4874
    if-lez v1, :cond_1

    .line 4875
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4876
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->addHeaderView(Landroid/view/View;)V

    .line 4875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4878
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->removeAllViews()V

    .line 4880
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 4819
    invoke-super {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4821
    const/4 v2, -0x1

    .line 4822
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 4823
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getScrollY()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4827
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mTempRect:Landroid/graphics/Rect;

    .line 4828
    const v0, 0x7fffffff

    .line 4829
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v5

    .line 4830
    iget v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    .line 4831
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4833
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    .line 4835
    add-int v1, v6, v3

    invoke-interface {v7, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 4833
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    .line 4839
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4840
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4841
    invoke-virtual {p0, v1, v4}, Lcom/htc/lib1/cc/widget/CrabWalkView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4842
    invoke-static {p3, v4, p2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    .line 4844
    if-ge v1, v0, :cond_3

    move v0, v1

    move v1, v3

    .line 4846
    goto :goto_1

    .line 4851
    :cond_1
    if-ltz v2, :cond_2

    .line 4852
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelection(I)V

    .line 4856
    :goto_2
    return-void

    .line 4854
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestLayout()V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 3041
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 3050
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 3059
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/high16 v10, -0x80000000

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1724
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onMeasure(II)V

    .line 1726
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1727
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1728
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1729
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1734
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    .line 1735
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-lez v0, :cond_7

    if-eqz v8, :cond_0

    if-nez v5, :cond_7

    .line 1737
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->obtainView(I)Landroid/view/View;

    move-result-object v7

    .line 1739
    invoke-direct {p0, v7, v2, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureScrapChild(Landroid/view/View;II)V

    .line 1741
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1742
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1744
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->recycleOnMeasure()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1745
    iget-object v9, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v9, v7}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1749
    :cond_1
    :goto_1
    if-nez v8, :cond_2

    .line 1750
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getVerticalScrollbarWidth()I

    move-result v6

    add-int/2addr v6, v1

    .line 1754
    :cond_2
    if-nez v5, :cond_3

    .line 1755
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1759
    :cond_3
    if-ne v5, v10, :cond_6

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1761
    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureHeightOfChildren(IIIII)I

    move-result v4

    move v7, v4

    .line 1765
    :goto_2
    if-ne v8, v10, :cond_5

    move-object v0, p0

    move v1, p2

    move v4, v6

    move v5, v3

    .line 1767
    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/CrabWalkView;->measureWidthOfChildren(IIIII)I

    move-result v0

    .line 1771
    :goto_3
    invoke-virtual {p0, v0, v7}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setMeasuredDimension(II)V

    .line 1772
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mWidthMeasureSpec:I

    .line 1775
    iput p2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeightMeasureSpec:I

    .line 1777
    return-void

    .line 1734
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_3

    :cond_6
    move v7, v4

    goto :goto_2

    :cond_7
    move v0, v2

    move v1, v2

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 5139
    check-cast p1, Lcom/htc/lib1/cc/widget/CrabWalkView$SavedState;

    .line 5141
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/CrabWalkView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5143
    iget-object v0, p1, Lcom/htc/lib1/cc/widget/CrabWalkView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 5144
    iget-object v0, p1, Lcom/htc/lib1/cc/widget/CrabWalkView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5147
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 5129
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5130
    new-instance v1, Lcom/htc/lib1/cc/widget/CrabWalkView$SavedState;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;)V

    return-object v1
.end method

.method pageScroll(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3214
    const/4 v2, -0x1

    .line 3217
    const/16 v3, 0x21

    if-ne p1, v3, :cond_2

    .line 3218
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    move v2, v1

    .line 3224
    :goto_0
    if-ltz v3, :cond_5

    .line 3225
    invoke-virtual {p0, v3, v2}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 3226
    if-ltz v3, :cond_5

    .line 3227
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 3230
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3231
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSpecificLeft:I

    .line 3233
    if-eqz v2, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v3, v1, :cond_0

    .line 3234
    const/16 v1, 0x8

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 3237
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 3238
    const/4 v1, 0x7

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 3253
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectionInt(I)V

    .line 3254
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invokeOnItemScrollListener()V

    .line 3255
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invalidate()V

    .line 3261
    :goto_2
    return v0

    .line 3219
    :cond_2
    const/16 v3, 0x82

    if-ne p1, v3, :cond_6

    .line 3220
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    move v2, v0

    .line 3221
    goto :goto_0

    .line 3241
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSpecificTop:I

    .line 3243
    if-eqz v2, :cond_4

    iget v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v3, v1, :cond_4

    .line 3244
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 3247
    :cond_4
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 3248
    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    goto :goto_1

    :cond_5
    move v0, v1

    .line 3261
    goto :goto_2

    :cond_6
    move v3, v2

    move v2, v1

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4928
    .line 4930
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mChoiceMode:I

    if-eqz v2, :cond_3

    .line 4933
    iget v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 4934
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 4935
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4944
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataChanged:Z

    .line 4945
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->rememberSyncState()V

    .line 4946
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestLayout()V

    .line 4949
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v0, v1

    .line 4951
    return v0

    .line 4937
    :cond_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 4938
    if-nez v0, :cond_1

    .line 4939
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4940
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 1821
    const/4 v0, 0x1

    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 719
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 721
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 722
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 723
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getWidth()I

    move-result v4

    .line 724
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getScrollX()I

    move-result v0

    .line 725
    add-int v5, v0, v4

    .line 726
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v6

    .line 728
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->showingLeftFadingEdge()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 730
    iget v7, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-gtz v7, :cond_0

    if-le v1, v6, :cond_1

    .line 731
    :cond_0
    add-int/2addr v0, v6

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v1

    .line 736
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 738
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->showingRightFadingEdge()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 740
    iget v7, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_2

    iget v7, p2, Landroid/graphics/Rect;->right:I

    sub-int v8, v1, v6

    if-ge v7, v8, :cond_3

    .line 742
    :cond_2
    sub-int/2addr v1, v6

    .line 748
    :cond_3
    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-le v6, v5, :cond_6

    iget v6, p2, Landroid/graphics/Rect;->left:I

    if-le v6, v0, :cond_6

    .line 753
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v4, :cond_5

    .line 755
    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    add-int/2addr v0, v3

    .line 762
    :goto_0
    sub-int/2addr v1, v5

    .line 763
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 783
    :goto_1
    if-eqz v1, :cond_8

    move v0, v2

    .line 784
    :goto_2
    if-eqz v0, :cond_4

    .line 785
    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->scrollListItemsBy(I)V

    .line 786
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->positionSelector(Landroid/view/View;)V

    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedLeft:I

    .line 788
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invalidate()V

    .line 862
    :cond_4
    :goto_3
    return v0

    .line 758
    :cond_5
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v5

    add-int/2addr v0, v3

    goto :goto_0

    .line 764
    :cond_6
    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ge v1, v0, :cond_13

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v1, v5, :cond_13

    .line 769
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v1, v4, :cond_7

    .line 771
    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v1

    sub-int v1, v3, v1

    .line 778
    :goto_4
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 779
    sub-int v0, v4, v0

    .line 780
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 774
    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    sub-int v1, v3, v1

    goto :goto_4

    :cond_8
    move v0, v3

    .line 783
    goto :goto_2

    .line 791
    :cond_9
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 793
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getHeight()I

    move-result v5

    .line 794
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getScrollY()I

    move-result v0

    .line 795
    add-int v1, v0, v5

    .line 796
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 798
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->showingTopFadingEdge()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 800
    iget v7, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    if-gtz v7, :cond_a

    if-le v4, v6, :cond_b

    .line 801
    :cond_a
    add-int/2addr v0, v6

    .line 805
    :cond_b
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildCount()I

    move-result v4

    .line 806
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 808
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->showingBottomFadingEdge()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 810
    iget v7, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedPosition:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_c

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v4, v6

    if-ge v7, v8, :cond_d

    .line 812
    :cond_c
    sub-int/2addr v1, v6

    .line 818
    :cond_d
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-le v6, v1, :cond_f

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-le v6, v0, :cond_f

    .line 823
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v6, v5, :cond_e

    .line 825
    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v5, v0

    add-int/2addr v0, v3

    .line 832
    :goto_5
    sub-int v1, v4, v1

    .line 833
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 853
    :goto_6
    if-eqz v1, :cond_11

    move v0, v2

    .line 854
    :goto_7
    if-eqz v0, :cond_4

    .line 855
    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->scrollListItemsBy(I)V

    .line 856
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->positionSelector(Landroid/view/View;)V

    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSelectedTop:I

    .line 858
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invalidate()V

    goto/16 :goto_3

    .line 828
    :cond_e
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_5

    .line 834
    :cond_f
    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ge v4, v0, :cond_12

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_12

    .line 839
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v5, :cond_10

    .line 841
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    sub-int v1, v3, v1

    .line 848
    :goto_8
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 849
    sub-int v0, v4, v0

    .line 850
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_6

    .line 844
    :cond_10
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    sub-int v1, v3, v1

    goto :goto_8

    :cond_11
    move v0, v3

    .line 853
    goto :goto_7

    :cond_12
    move v1, v3

    goto :goto_6

    :cond_13
    move v1, v3

    goto/16 :goto_1
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 656
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->resetList()V

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 658
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 594
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataSetObserver:Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataSetObserver:Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->resetList()V

    .line 599
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->clear()V

    .line 601
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 602
    :cond_1
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 604
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    .line 610
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mOldSelectedPosition:I

    .line 611
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mOldSelectedRowId:J

    .line 612
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    .line 613
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAreAllItemsSelectable:Z

    .line 614
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mOldItemCount:I

    .line 615
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    .line 616
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->checkFocus()V

    .line 618
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;-><init>(Lcom/htc/lib1/cc/widget/HtcAdapterView2;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataSetObserver:Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;

    .line 619
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDataSetObserver:Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 621
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->setViewTypeCount(I)V

    .line 624
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mStackFromBottom:Z

    if-eqz v0, :cond_5

    .line 625
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 629
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectedPositionInt(I)V

    .line 630
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setNextSelectedPositionInt(I)V

    .line 632
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemCount:I

    if-nez v0, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->checkSelectionChanged()V

    .line 644
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    .line 645
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestLayout()V

    .line 649
    return-void

    .line 607
    :cond_4
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 627
    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_1

    .line 638
    :cond_6
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAreAllItemsSelectable:Z

    .line 639
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->checkFocus()V

    .line 641
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setChoiceMode(I)V
    .locals 1

    .prologue
    .line 4916
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mChoiceMode:I

    .line 4917
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 4918
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4920
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4692
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4693
    if-eqz p1, :cond_1

    .line 4694
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    .line 4695
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mClipDivider:Z

    .line 4710
    :goto_0
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4711
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 4712
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 4713
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestLayoutIfNecessary()V

    .line 4714
    return-void

    .line 4697
    :cond_1
    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    .line 4698
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mClipDivider:Z

    goto :goto_0

    .line 4701
    :cond_2
    if-eqz p1, :cond_3

    .line 4702
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    .line 4703
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mClipDivider:Z

    goto :goto_0

    .line 4705
    :cond_3
    iput v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    .line 4706
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mClipDivider:Z

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0

    .prologue
    .line 4741
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerHeight:I

    .line 4742
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestLayoutIfNecessary()V

    .line 4743
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    .prologue
    .line 4771
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mDividerWidth:I

    .line 4772
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestLayoutIfNecessary()V

    .line 4773
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    .prologue
    .line 4809
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mFooterDividersEnabled:Z

    .line 4810
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invalidate()V

    .line 4811
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    .prologue
    .line 4791
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mHeaderDividersEnabled:Z

    .line 4792
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->invalidate()V

    .line 4793
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1

    .prologue
    .line 4453
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mItemsCanFocus:Z

    .line 4454
    if-nez p1, :cond_0

    .line 4455
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setDescendantFocusability(I)V

    .line 4457
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2848
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2849
    invoke-virtual {p0, p1, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectionFromLeft(II)V

    .line 2854
    :goto_0
    return-void

    .line 2851
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public setSelectionFromLeft(II)V
    .locals 2

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2935
    :cond_0
    :goto_0
    return-void

    .line 2915
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2916
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2917
    if-ltz p1, :cond_2

    .line 2918
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setNextSelectedPositionInt(I)V

    .line 2924
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2925
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 2926
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getLeftBorderWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSpecificLeft:I

    .line 2928
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2929
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSyncPosition:I

    .line 2930
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSyncColumnId:J

    .line 2933
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestLayout()V

    goto :goto_0

    .line 2921
    :cond_4
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2896
    :cond_0
    :goto_0
    return-void

    .line 2876
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2877
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2878
    if-ltz p1, :cond_2

    .line 2879
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setNextSelectedPositionInt(I)V

    .line 2885
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2886
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mLayoutMode:I

    .line 2887
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->getTopBorderHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSpecificTop:I

    .line 2889
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2890
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSyncPosition:I

    .line 2891
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSyncRowId:J

    .line 2894
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->requestLayout()V

    goto :goto_0

    .line 2882
    :cond_4
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 0

    .prologue
    .line 2946
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/CrabWalkView;->setNextSelectedPositionInt(I)V

    .line 2947
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/CrabWalkView;->layoutChildren()V

    .line 2948
    return-void
.end method

.method public setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 5179
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 5180
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 1

    .prologue
    .line 5165
    const/4 v0, 0x1

    return v0
.end method
