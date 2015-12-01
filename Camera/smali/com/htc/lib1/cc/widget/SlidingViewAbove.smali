.class Lcom/htc/lib1/cc/widget/SlidingViewAbove;
.super Landroid/view/ViewGroup;
.source "SlidingViewAbove.java"


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActivePointerId:I

.field private mClosedListener:Lcom/htc/lib1/cc/widget/aw;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

.field private mOpenedListener:Lcom/htc/lib1/cc/widget/ay;

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/htc/lib1/cc/widget/ba;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ba;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private completeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 533
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrolling:Z

    .line 534
    if-eqz v0, :cond_2

    .line 536
    invoke-direct {p0, v4}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setScrollingCacheEnabled(Z)V

    .line 537
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 538
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollX()I

    move-result v0

    .line 539
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollY()I

    move-result v1

    .line 540
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 541
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 542
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 543
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->scrollTo(II)V

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOpenedListener:Lcom/htc/lib1/cc/widget/ay;

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOpenedListener:Lcom/htc/lib1/cc/widget/ay;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ay;->a()V

    .line 553
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrolling:Z

    .line 554
    return-void

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mClosedListener:Lcom/htc/lib1/cc/widget/aw;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mClosedListener:Lcom/htc/lib1/cc/widget/aw;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/aw;->a()V

    goto :goto_0
.end method

.method private determineDrag(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    .line 790
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    .line 791
    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 792
    if-ne v0, v2, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    if-ne v1, v2, :cond_2

    .line 795
    const-string v0, "CustomViewAbove"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in determineDrag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 799
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    sub-float v3, v2, v0

    .line 800
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 801
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 802
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionY:F

    sub-float v0, v1, v0

    .line 803
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 806
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    cmpl-float v0, v4, v5

    if-lez v0, :cond_4

    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->thisSlideAllowed(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 807
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->startDrag()V

    .line 808
    iput v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    .line 809
    iput v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionY:F

    .line 810
    invoke-direct {p0, v6}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 806
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mTouchSlop:I

    goto :goto_1

    .line 812
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    .line 813
    iput-boolean v6, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsUnableToDrag:Z

    goto :goto_0
.end method

.method private determineTargetPage(FII)I
    .locals 3

    .prologue
    .line 827
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    .line 828
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_2

    .line 829
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 830
    add-int/lit8 v0, v0, -0x1

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 831
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 878
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mQuickReturn:Z

    .line 879
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    .line 880
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsUnableToDrag:Z

    .line 881
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    .line 883
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 887
    :cond_0
    return-void
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 596
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 597
    if-ne v0, v1, :cond_0

    .line 598
    iput v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    .line 599
    :cond_0
    return v0
.end method

.method private getRightBound()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 329
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 330
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 859
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 860
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 863
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 864
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    .line 865
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    .line 866
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 870
    :cond_0
    return-void

    .line 863
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)V
    .locals 4

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getWidth()I

    move-result v0

    .line 504
    div-int v1, p1, v0

    .line 505
    rem-int v2, p1, v0

    .line 506
    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 508
    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->onPageScrolled(IFI)V

    .line 509
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 891
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrollingCacheEnabled:Z

    .line 902
    :cond_0
    return-void
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mQuickReturn:Z

    .line 875
    return-void
.end method

.method private thisSlideAllowed(F)Z
    .locals 1

    .prologue
    .line 584
    .line 585
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    .line 592
    :goto_0
    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    goto :goto_0
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrollX:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 568
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 569
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v0

    .line 580
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 571
    :cond_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 577
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    .line 573
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public arrowScroll(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 977
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 978
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 980
    :cond_0
    const/4 v1, 0x0

    .line 982
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 984
    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    .line 985
    if-ne p1, v3, :cond_2

    .line 986
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 1003
    :goto_0
    if-eqz v0, :cond_1

    .line 1004
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->playSoundEffect(I)V

    .line 1006
    :cond_1
    return v0

    .line 987
    :cond_2
    if-ne p1, v4, :cond_8

    .line 990
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 991
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->pageRight()Z

    move-result v0

    goto :goto_0

    .line 993
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 996
    :cond_4
    if-eq p1, v3, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 998
    :cond_5
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->pageLeft()Z

    move-result v0

    goto :goto_0

    .line 999
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1001
    :cond_7
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->pageRight()Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollX()I

    move-result v0

    .line 483
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollY()I

    move-result v1

    .line 484
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 485
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 487
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 488
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->scrollTo(II)V

    .line 489
    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->pageScrolled(I)V

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->invalidate()V

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_2
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->completeScroll()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 846
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 848
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 849
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 850
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 851
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 940
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 296
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 297
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 298
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 952
    const/4 v0, 0x0

    .line 953
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 954
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 973
    :cond_0
    :goto_0
    return v0

    .line 956
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 959
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 965
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 954
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_0

    .line 309
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 305
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 841
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mTouchMode:I

    return v0
.end method

.method public isMenuOpen()Z
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 607
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mEnabled:Z

    if-nez v2, :cond_1

    .line 658
    :cond_0
    :goto_0
    return v0

    .line 610
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 616
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    if-eq v2, v1, :cond_2

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsUnableToDrag:Z

    if-eqz v3, :cond_3

    .line 618
    :cond_2
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->endDrag()V

    goto :goto_0

    .line 622
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 652
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    if-nez v2, :cond_6

    .line 653
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_5

    .line 654
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 656
    :cond_5
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 658
    :cond_6
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mQuickReturn:Z

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 624
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 627
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 628
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    .line 629
    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    if-eq v3, v4, :cond_4

    .line 631
    if-ne v2, v4, :cond_8

    .line 632
    const-string v3, "CustomViewAbove"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in onInterceptTouchEvent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 635
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mInitialMotionX:F

    iput v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    .line 636
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionY:F

    .line 637
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 638
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    .line 639
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsUnableToDrag:Z

    .line 640
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrollX:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 641
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mQuickReturn:Z

    goto/16 :goto_1

    .line 644
    :cond_9
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 648
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 622
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    sub-int v0, p4, p2

    .line 466
    sub-int v1, p5, p3

    .line 467
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 468
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-static {v2, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getDefaultSize(II)I

    move-result v0

    .line 446
    invoke-static {v2, p2}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getDefaultSize(II)I

    move-result v1

    .line 447
    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setMeasuredDimension(II)V

    .line 449
    invoke-static {p1, v2, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 450
    invoke-static {p2, v2, v1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 451
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 452
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOnPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOnPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/bb;->onPageScrolled(IFI)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mInternalPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mInternalPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/bb;->onPageScrolled(IFI)V

    .line 530
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 461
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 665
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mEnabled:Z

    if-nez v1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v0

    .line 668
    :cond_1
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 676
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 677
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 679
    :cond_3
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 681
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v0, v3

    .line 786
    goto :goto_0

    .line 687
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->completeScroll()V

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 691
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mInitialMotionX:F

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    goto :goto_1

    .line 695
    :pswitch_2
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    if-nez v1, :cond_5

    .line 696
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->determineDrag(Landroid/view/MotionEvent;)V

    .line 697
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsUnableToDrag:Z

    if-nez v1, :cond_0

    .line 700
    :cond_5
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 702
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 703
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    if-eq v1, v6, :cond_4

    .line 705
    if-ne v0, v6, :cond_6

    .line 706
    const-string v1, "CustomViewAbove"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in onTouchEvent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 709
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 710
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    sub-float/2addr v1, v0

    .line 711
    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    .line 712
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 713
    add-float v2, v0, v1

    .line 714
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getLeftBound()I

    move-result v0

    int-to-float v0, v0

    .line 715
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getRightBound()I

    move-result v1

    int-to-float v1, v1

    .line 716
    cmpg-float v4, v2, v0

    if-gez v4, :cond_7

    .line 722
    :goto_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    .line 723
    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->scrollTo(II)V

    .line 724
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .line 718
    :cond_7
    cmpl-float v0, v2, v1

    if-lez v0, :cond_d

    move v0, v1

    .line 719
    goto :goto_2

    .line 728
    :pswitch_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    if-eqz v0, :cond_a

    .line 729
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 730
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 731
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 732
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollX()I

    move-result v1

    .line 736
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getDestScrollX(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getBehindWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 737
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    invoke-direct {p0, p1, v2}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 738
    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    if-eq v4, v6, :cond_8

    if-eq v2, v6, :cond_8

    .line 739
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 740
    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mInitialMotionX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 741
    invoke-direct {p0, v1, v0, v2}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->determineTargetPage(FII)I

    move-result v1

    .line 742
    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItemInternal(IZZI)V

    .line 749
    :goto_3
    iput v6, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    .line 750
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 744
    :cond_8
    if-ne v2, v6, :cond_9

    .line 745
    const-string v1, "CustomViewAbove"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in onTouchEvent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_9
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_3

    .line 751
    :cond_a
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mQuickReturn:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrollX:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 753
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItem(I)V

    .line 754
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 758
    :pswitch_4
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 759
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItemInternal(IZZ)V

    .line 760
    iput v6, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    .line 761
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 765
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 766
    if-ne v0, v6, :cond_b

    .line 767
    const-string v1, "CustomViewAbove"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in onTouchEvent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 770
    :cond_b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    .line 771
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    goto/16 :goto_1

    .line 775
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 776
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 777
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mActivePointerId:I

    if-eq v1, v6, :cond_4

    .line 779
    if-ne v0, v6, :cond_c

    .line 780
    const-string v1, "CustomViewAbove"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in onTouchEvent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 783
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mLastMotionX:F

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto/16 :goto_2

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1010
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    if-lez v1, :cond_0

    .line 1011
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItem(IZ)V

    .line 1014
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1018
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    if-ge v1, v0, :cond_0

    .line 1019
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItem(IZ)V

    .line 1022
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 819
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 820
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrollX:F

    .line 821
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/SlidingMenu;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getPercentOpen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/SlidingMenu;->manageLayers(F)V

    .line 824
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 475
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->removeView(Landroid/view/View;)V

    .line 430
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    .line 431
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->addView(Landroid/view/View;)V

    .line 432
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItemInternal(IZZ)V

    .line 191
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mIsBeingDragged:Z

    .line 202
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mQuickReturn:Z

    .line 203
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItemInternal(IZZ)V

    .line 204
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setCurrentItemInternal(IZZI)V

    .line 212
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 215
    if-nez p3, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    if-ne v0, p1, :cond_0

    .line 216
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setScrollingCacheEnabled(Z)V

    .line 237
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getMenuPage(I)I

    move-result v2

    .line 222
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    .line 223
    :goto_1
    iput v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    .line 224
    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getDestScrollX(I)I

    move-result v3

    .line 225
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOnPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOnPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

    invoke-interface {v4, v2}, Lcom/htc/lib1/cc/widget/bb;->onPageSelected(I)V

    .line 228
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mInternalPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mInternalPageChangeListener:Lcom/htc/lib1/cc/widget/bb;

    invoke-interface {v0, v2}, Lcom/htc/lib1/cc/widget/bb;->onPageSelected(I)V

    .line 231
    :cond_2
    if-eqz p2, :cond_4

    .line 232
    invoke-virtual {p0, v3, v1, p4}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->smoothScrollTo(III)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 222
    goto :goto_1

    .line 234
    :cond_4
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->completeScroll()V

    .line 235
    invoke-virtual {p0, v3, v1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCustomViewBehind(Lcom/htc/lib1/cc/widget/SlidingViewBehind;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mViewBehind:Lcom/htc/lib1/cc/widget/SlidingViewBehind;

    .line 440
    return-void
.end method

.method public setOnClosedListener(Lcom/htc/lib1/cc/widget/aw;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mClosedListener:Lcom/htc/lib1/cc/widget/aw;

    .line 263
    return-void
.end method

.method public setOnOpenedListener(Lcom/htc/lib1/cc/widget/ay;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOpenedListener:Lcom/htc/lib1/cc/widget/ay;

    .line 259
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mEnabled:Z

    .line 362
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0

    .prologue
    .line 559
    iput p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mTouchMode:I

    .line 560
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 10

    .prologue
    const/16 v5, 0x258

    const/4 v6, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 382
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setScrollingCacheEnabled(Z)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollX()I

    move-result v1

    .line 388
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getScrollY()I

    move-result v2

    .line 389
    sub-int v3, p1, v1

    .line 390
    sub-int v4, p2, v2

    .line 391
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 392
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->completeScroll()V

    .line 393
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOpenedListener:Lcom/htc/lib1/cc/widget/ay;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mOpenedListener:Lcom/htc/lib1/cc/widget/ay;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ay;->a()V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mClosedListener:Lcom/htc/lib1/cc/widget/aw;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mClosedListener:Lcom/htc/lib1/cc/widget/aw;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/aw;->a()V

    goto :goto_0

    .line 403
    :cond_3
    invoke-direct {p0, v6}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->setScrollingCacheEnabled(Z)V

    .line 404
    iput-boolean v6, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScrolling:Z

    .line 406
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getBehindWidth()I

    move-result v0

    .line 407
    div-int/lit8 v6, v0, 0x2

    .line 408
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 409
    int-to-float v8, v6

    int-to-float v6, v6

    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    .line 413
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 414
    if-lez v7, :cond_4

    .line 415
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 421
    :goto_1
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 423
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 424
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->invalidate()V

    goto :goto_0

    .line 417
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v0, v0

    div-float v0, v6, v0

    .line 418
    add-float/2addr v0, v9

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    float-to-int v0, v0

    move v0, v5

    .line 419
    goto :goto_1
.end method
