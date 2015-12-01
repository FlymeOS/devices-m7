.class Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "CrabWalkView.java"


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 3974
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 3966
    iget v0, p0, Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0

    .prologue
    .line 3957
    iput p1, p0, Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 3958
    iput p2, p0, Lcom/htc/lib1/cc/widget/CrabWalkView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 3959
    return-void
.end method
