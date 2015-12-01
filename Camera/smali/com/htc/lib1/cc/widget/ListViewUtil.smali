.class Lcom/htc/lib1/cc/widget/ListViewUtil;
.super Ljava/lang/Object;
.source "ListViewUtil.java"


# static fields
.field static MAX_OVERSCROLL_GAP:I

.field static PULL_DOWN_REFRESH_GAP:I


# instance fields
.field mAccumulativeDeltaY:I

.field mAutomotiveSectionDivider:Landroid/graphics/drawable/Drawable;

.field mAutomotiveSectionDividerMarginLeft:I

.field mBouncingAnimator:Landroid/animation/ObjectAnimator;

.field mBouncingInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mCallbacks:Lcom/htc/lib1/cc/widget/aq;

.field mCurrentMotionY:I

.field mCurrentScrollY:I

.field mDividerController:Lcom/htc/lib1/cc/widget/aj;

.field mDividerMargin:I

.field mEnabledAnimationType:I

.field mFastScrollEnabled:Z

.field private mFooterDividersEnabled:Z

.field private mHeaderDividersEnabled:Z

.field mHtcScrollEnabled:Z

.field mIsBeginFastScroll:Z

.field mIsBeginOverScroll:Z

.field mIsCancelRefresh:Z

.field private mIsClipToPadding:Z

.field mIsFlinging:Z

.field mIsInterceptMotionEvent:Z

.field private mIsPreventReLayout:Z

.field mIsScrollBarAtRight:Z

.field mLastMotionY:I

.field mListView:Landroid/widget/AbsListView;

.field mMotionDownY:I

.field mOnScrollListenerWrapper:Lcom/htc/lib1/cc/widget/ListViewUtil$OnScrollListenerWrapper;

.field private mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field private mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field mOverScrollSensitivity:F

.field mOverScrollStarted:Z

.field mOverScrollToBoundary:Z

.field mSectionDivider:Landroid/graphics/drawable/Drawable;

.field mSectionDividerMarginLeft:I

.field mTempRect:Landroid/graphics/Rect;

.field mTouchSlop:I

.field mUserOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xc0

    .line 35
    sput v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->PULL_DOWN_REFRESH_GAP:I

    .line 37
    sput v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->MAX_OVERSCROLL_GAP:I

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/high16 v0, -0x80000000

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mMotionDownY:I

    .line 41
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    .line 43
    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    .line 45
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mTouchSlop:I

    .line 47
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentScrollY:I

    .line 49
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAccumulativeDeltaY:I

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollSensitivity:F

    .line 53
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerMargin:I

    .line 55
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mSectionDividerMarginLeft:I

    .line 57
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAutomotiveSectionDividerMarginLeft:I

    .line 59
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsInterceptMotionEvent:Z

    .line 63
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsCancelRefresh:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollStarted:Z

    .line 67
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollToBoundary:Z

    .line 69
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsFlinging:Z

    .line 71
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsScrollBarAtRight:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mFastScrollEnabled:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginFastScroll:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mHtcScrollEnabled:Z

    .line 79
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mEnabledAnimationType:I

    .line 82
    iput-object v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mSectionDivider:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAutomotiveSectionDivider:Landroid/graphics/drawable/Drawable;

    .line 90
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 92
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil$OnScrollListenerWrapper;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/ListViewUtil$OnScrollListenerWrapper;-><init>(Lcom/htc/lib1/cc/widget/ListViewUtil;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOnScrollListenerWrapper:Lcom/htc/lib1/cc/widget/ListViewUtil$OnScrollListenerWrapper;

    .line 533
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mTempRect:Landroid/graphics/Rect;

    .line 535
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsPreventReLayout:Z

    .line 537
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsClipToPadding:Z

    .line 539
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mHeaderDividersEnabled:Z

    .line 541
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mFooterDividersEnabled:Z

    .line 547
    iput-object v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerController:Lcom/htc/lib1/cc/widget/aj;

    return-void
.end method

.method private computeDeltaYWithSensitivity(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 459
    .line 460
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    if-eqz v1, :cond_1

    if-gez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isReadyToOverScroll(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v1

    sget v2, Lcom/htc/lib1/cc/widget/ListViewUtil;->PULL_DOWN_REFRESH_GAP:I

    neg-int v2, v2

    if-gt v1, v2, :cond_2

    .line 463
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAccumulativeDeltaY:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAccumulativeDeltaY:I

    .line 464
    iget v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAccumulativeDeltaY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollSensitivity:F

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 465
    if-eqz p1, :cond_3

    .line 467
    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAccumulativeDeltaY:I

    .line 472
    :cond_2
    :goto_0
    return p1

    :cond_3
    move p1, v0

    .line 469
    goto :goto_0
.end method

.method private getDividerType(I)I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerController:Lcom/htc/lib1/cc/widget/aj;

    if-nez v0, :cond_0

    .line 566
    const/4 v0, -0x1

    .line 569
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerController:Lcom/htc/lib1/cc/widget/aj;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/aj;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private getSectionDivider(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mSectionDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mSectionDivider:Landroid/graphics/drawable/Drawable;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mSectionDivider:Landroid/graphics/drawable/Drawable;

    .line 588
    :cond_1
    :goto_0
    return-object v0

    .line 581
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 582
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAutomotiveSectionDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_b_div_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAutomotiveSectionDivider:Landroid/graphics/drawable/Drawable;

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAutomotiveSectionDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getSectionDividerMarginLeft(I)I
    .locals 2

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 594
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 595
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mSectionDividerMarginLeft:I

    .line 599
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 597
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAutomotiveSectionDividerMarginLeft:I

    goto :goto_0
.end method

.method private isClipToPadding()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 641
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v0

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v3

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v1

    .line 643
    :goto_0
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsClipToPadding:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 641
    goto :goto_0

    :cond_1
    move v1, v2

    .line 643
    goto :goto_1
.end method

.method private isPointInsideScrollBar(F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setScrollbarPosition(I)V

    .line 233
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsScrollBarAtRight:Z

    if-eqz v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_3

    .line 221
    :cond_2
    :goto_0
    return v2

    .line 208
    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 213
    :cond_5
    if-nez p1, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    .line 214
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_6

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private overScrollListView(I)V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v0

    .line 477
    add-int v2, v0, p1

    .line 478
    sget v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->MAX_OVERSCROLL_GAP:I

    neg-int v1, v0

    .line 479
    sget v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->MAX_OVERSCROLL_GAP:I

    .line 480
    if-le v2, v0, :cond_0

    .line 485
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setScrollY(I)V

    .line 486
    return-void

    .line 482
    :cond_0
    if-ge v2, v1, :cond_1

    move v0, v1

    .line 483
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private playBouncingAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isOverScrolledAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "scrollY"

    new-array v1, v2, [I

    aput v3, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    .line 492
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 493
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 495
    :cond_0
    return-void
.end method

.method private shouldDrawDivider(I)Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerController:Lcom/htc/lib1/cc/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerController:Lcom/htc/lib1/cc/widget/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerController:Lcom/htc/lib1/cc/widget/aj;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/aj;->a(I)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_f

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Landroid/widget/ListView;

    .line 669
    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v8

    .line 670
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsPreventReLayout:Z

    .line 671
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/htc/lib1/cc/widget/aq;->superDispatchDraw(Landroid/graphics/Canvas;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 678
    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v7, v3

    .line 679
    :goto_0
    if-eqz v4, :cond_6

    const/4 v3, 0x1

    .line 680
    :goto_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v6, v4

    .line 682
    :goto_2
    if-eqz v6, :cond_e

    .line 685
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mTempRect:Landroid/graphics/Rect;

    .line 686
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 687
    invoke-virtual {v2}, Landroid/widget/ListView;->getRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/ListView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 690
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 691
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 692
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v11

    .line 693
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v4

    .line 694
    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v12, v4, -0x1

    .line 695
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mHeaderDividersEnabled:Z

    .line 696
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mFooterDividersEnabled:Z

    .line 697
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v15

    .line 700
    const/4 v5, 0x0

    .line 701
    const/4 v4, 0x0

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isClipToPadding()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 703
    invoke-virtual {v2}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v5

    .line 704
    invoke-virtual {v2}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v4

    .line 707
    :cond_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getBottom()I

    move-result v16

    invoke-virtual {v2}, Landroid/widget/ListView;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v4, v16, v4

    invoke-virtual {v2}, Landroid/widget/ListView;->getScrollY()I

    move-result v16

    add-int v16, v16, v4

    .line 709
    invoke-virtual {v2}, Landroid/widget/ListView;->isStackFromBottom()Z

    move-result v4

    if-nez v4, :cond_8

    .line 712
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v10, :cond_e

    .line 713
    if-nez v13, :cond_1

    add-int v5, v15, v4

    if-lt v5, v11, :cond_4

    :cond_1
    if-nez v14, :cond_2

    add-int v5, v15, v4

    if-ge v5, v12, :cond_4

    .line 715
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 716
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 720
    if-eqz v6, :cond_4

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v17

    add-int v17, v17, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->shouldDrawDivider(I)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v17

    if-lez v17, :cond_4

    move/from16 v0, v16

    if-ge v7, v0, :cond_4

    if-eqz v3, :cond_3

    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_3

    move/from16 v0, v16

    if-le v7, v0, :cond_4

    .line 725
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v17

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v19

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    .line 726
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v20

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    .line 727
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    float-to-int v5, v5

    .line 728
    sub-int v19, v7, v17

    add-int v19, v19, v5

    move/from16 v0, v19

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 729
    add-int/2addr v7, v8

    sub-int v7, v7, v17

    add-int/2addr v5, v7

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 730
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    add-int v5, v5, v18

    iput v5, v9, Landroid/graphics/Rect;->left:I

    .line 731
    invoke-virtual {v2}, Landroid/widget/ListView;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/ListView;->getLeft()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v5, v5, v18

    iput v5, v9, Landroid/graphics/Rect;->right:I

    .line 733
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v4}, Lcom/htc/lib1/cc/widget/ListViewUtil;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 712
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 678
    :cond_5
    const/4 v3, 0x0

    move v7, v3

    goto/16 :goto_0

    .line 679
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 680
    :cond_7
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_2

    .line 739
    :cond_8
    invoke-virtual {v2}, Landroid/widget/ListView;->getScrollY()I

    move-result v17

    .line 740
    if-eqz v7, :cond_c

    const/4 v4, 0x1

    .line 741
    :goto_4
    if-ge v4, v10, :cond_d

    .line 742
    if-nez v13, :cond_9

    add-int v7, v15, v4

    if-lt v7, v11, :cond_b

    :cond_9
    if-nez v14, :cond_a

    add-int v7, v15, v4

    if-ge v7, v12, :cond_b

    .line 744
    :cond_a
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 745
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    .line 748
    add-int v19, v5, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v19

    add-int v19, v19, v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->shouldDrawDivider(I)Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v19

    if-lez v19, :cond_b

    .line 753
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v21

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    .line 754
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v22

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 755
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    float-to-int v7, v7

    .line 756
    sub-int v21, v18, v8

    add-int v21, v21, v19

    add-int v21, v21, v7

    move/from16 v0, v21

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 757
    add-int v18, v18, v19

    add-int v7, v7, v18

    iput v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 758
    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v7

    add-int v7, v7, v20

    iput v7, v9, Landroid/graphics/Rect;->left:I

    .line 759
    invoke-virtual {v2}, Landroid/widget/ListView;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/widget/ListView;->getLeft()I

    move-result v18

    sub-int v7, v7, v18

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v18

    sub-int v7, v7, v18

    sub-int v7, v7, v20

    iput v7, v9, Landroid/graphics/Rect;->right:I

    .line 767
    add-int/lit8 v7, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v7}, Lcom/htc/lib1/cc/widget/ListViewUtil;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 741
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 740
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 773
    :cond_d
    if-lez v10, :cond_e

    if-lez v17, :cond_e

    .line 774
    if-nez v3, :cond_e

    if-eqz v6, :cond_e

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/lib1/cc/widget/ListViewUtil;->shouldDrawDivider(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 775
    invoke-virtual {v2}, Landroid/widget/ListView;->getScrollY()I

    move-result v3

    sub-int v3, v16, v3

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 776
    add-int v3, v16, v8

    invoke-virtual {v2}, Landroid/widget/ListView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 777
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v3}, Lcom/htc/lib1/cc/widget/ListViewUtil;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 783
    :cond_e
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 784
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsPreventReLayout:Z

    .line 786
    :cond_f
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 622
    if-ltz p3, :cond_0

    .line 623
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p3

    .line 624
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->getDividerType(I)I

    move-result v1

    .line 625
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerController:Lcom/htc/lib1/cc/widget/aj;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 626
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->getSectionDivider(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 627
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->getSectionDividerMarginLeft(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 628
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerMargin:I

    neg-int v2, v2

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 631
    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 632
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 634
    :cond_1
    return-void
.end method

.method enableAnimation(IZ)V
    .locals 2

    .prologue
    .line 178
    if-eqz p2, :cond_0

    .line 179
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mEnabledAnimationType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mEnabledAnimationType:I

    .line 182
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isOverScrolledAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 187
    :goto_1
    return-void

    .line 181
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mEnabledAnimationType:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mEnabledAnimationType:I

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    goto :goto_1
.end method

.method getDividerMargin()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerMargin:I

    return v0
.end method

.method init(Landroid/widget/AbsListView;Lcom/htc/lib1/cc/widget/aq;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 119
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    .line 120
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    .line 121
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mTouchSlop:I

    .line 123
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 125
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    sget v2, Lcom/htc/lib1/cc/d;->list_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/htc/lib1/cc/widget/ListViewUtil;->PULL_DOWN_REFRESH_GAP:I

    .line 130
    sget v2, Lcom/htc/lib1/cc/widget/ListViewUtil;->PULL_DOWN_REFRESH_GAP:I

    mul-int/lit8 v2, v2, 0x2

    sput v2, Lcom/htc/lib1/cc/widget/ListViewUtil;->MAX_OVERSCROLL_GAP:I

    .line 131
    sget v2, Lcom/htc/lib1/cc/d;->common_list_divider_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerMargin:I

    .line 133
    const-string v2, "HtcListItemHeight"

    invoke-static {v0, v2}, Lcom/htc/lib1/cc/widget/af;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mSectionDividerMarginLeft:I

    .line 135
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 136
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    :goto_0
    const-wide v1, 0x3fc999999999999aL    # 0.2

    int-to-double v3, v0

    mul-double v0, v1, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mAutomotiveSectionDividerMarginLeft:I

    .line 138
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOnScrollListenerWrapper:Lcom/htc/lib1/cc/widget/ListViewUtil$OnScrollListenerWrapper;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 139
    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setHtcScrollEnabled(Z)V

    .line 140
    return-void

    .line 136
    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 422
    const/4 v0, 0x0

    .line 423
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsInterceptMotionEvent:Z

    if-nez v2, :cond_3

    .line 424
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 428
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsInterceptMotionEvent:Z

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v2

    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentScrollY:I

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 434
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/aq;->superOnInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 438
    :cond_1
    if-nez p2, :cond_2

    .line 441
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/aq;->superOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentScrollY:I

    if-eq v1, v2, :cond_3

    .line 447
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentScrollY:I

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setScrollY(I)V

    .line 449
    :cond_3
    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsPreventReLayout:Z

    if-eqz v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/aq;->superInvalidate()V

    goto :goto_0
.end method

.method isDelAnimationEnabled()Z
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOverScrolledAnimationEnabled()Z
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mEnabledAnimationType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOnScrollListenerWrapper:Lcom/htc/lib1/cc/widget/ListViewUtil$OnScrollListenerWrapper;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/aq;->superOnDetachedFromWindow()V

    .line 510
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsCancelRefresh:Z

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ar;->c()V

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsInterceptMotionEvent:Z

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsCancelRefresh:Z

    .line 515
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isOverScrolledAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginFastScroll:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 261
    packed-switch v2, :pswitch_data_0

    .line 278
    :goto_1
    :pswitch_0
    invoke-virtual {p0, p1, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->interceptTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 263
    :pswitch_1
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginFastScroll:Z

    .line 264
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->touchDown(Landroid/view/MotionEvent;)V

    .line 265
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mFastScrollEnabled:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isPointInsideScrollBar(F)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginFastScroll:Z

    goto :goto_1

    .line 269
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->touchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 274
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->touchEnd(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method onOverScrolled(IIZZ)V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-eqz v0, :cond_6

    :cond_1
    const/4 v0, 0x1

    .line 500
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isOverScrolledAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsFlinging:Z

    if-nez v1, :cond_3

    .line 501
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentScrollY:I

    .line 502
    :cond_3
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/aq;->superOnOverScrolled(IIZZ)V

    .line 503
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isOverScrolledAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsFlinging:Z

    if-nez v0, :cond_5

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentScrollY:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setScrollY(I)V

    .line 505
    :cond_5
    return-void

    .line 498
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 453
    if-eq p2, p4, :cond_0

    .line 454
    if-lez p2, :cond_1

    const/high16 v0, 0x3fc00000    # 1.5f

    sget v1, Lcom/htc/lib1/cc/widget/ListViewUtil;->PULL_DOWN_REFRESH_GAP:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollSensitivity:F

    .line 456
    :cond_0
    return-void

    .line 454
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isOverScrolledAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginFastScroll:Z

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/aq;->superOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    .line 288
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 290
    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->interceptTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->touchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 295
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->touchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 300
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->touchEnd(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 518
    if-eqz p1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/aq;->superOnWindowFocusChanged(Z)V

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 523
    :goto_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isOverScrolledAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 524
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentScrollY:I

    .line 525
    :cond_4
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v1, p1}, Lcom/htc/lib1/cc/widget/aq;->superOnWindowFocusChanged(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isOverScrolledAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentScrollY:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setScrollY(I)V

    goto :goto_0

    .line 521
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsPreventReLayout:Z

    if-eqz v0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCallbacks:Lcom/htc/lib1/cc/widget/aq;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/aq;->superRequestLayout()V

    goto :goto_0
.end method

.method setClipToPadding(Z)V
    .locals 0

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsClipToPadding:Z

    .line 638
    return-void
.end method

.method public setDividerController(Lcom/htc/lib1/cc/widget/aj;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mDividerController:Lcom/htc/lib1/cc/widget/aj;

    .line 557
    return-void
.end method

.method setFastScrollEnabled(Z)V
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mFastScrollEnabled:Z

    .line 251
    return-void
.end method

.method setFooterDividersEnabled(Z)V
    .locals 0

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mFooterDividersEnabled:Z

    .line 608
    return-void
.end method

.method setHeaderDividersEnabled(Z)V
    .locals 0

    .prologue
    .line 603
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mHeaderDividersEnabled:Z

    .line 604
    return-void
.end method

.method setHtcScrollEnabled(Z)V
    .locals 5

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mHtcScrollEnabled:Z

    if-ne v0, p1, :cond_0

    .line 814
    :goto_0
    return-void

    .line 798
    :cond_0
    :try_start_0
    const-string v0, "android.widget.AbsListView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 799
    const-string v1, "setHtcScrollEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 800
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 801
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 813
    :goto_1
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mHtcScrollEnabled:Z

    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    const-string v0, "ListViewUtil"

    const-string v1, "[ListViewUtil] andriod.widget.AbsListView class is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 804
    :catch_1
    move-exception v0

    .line 805
    const-string v0, "ListViewUtil"

    const-string v1, "[ListViewUtil] setHtcScrollEnabled(boolean) in android.widget.AbsListView class is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 806
    :catch_2
    move-exception v0

    .line 807
    const-string v0, "ListViewUtil"

    const-string v1, "[ListViewUtil] IllegalAccessException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 808
    :catch_3
    move-exception v0

    .line 809
    const-string v0, "ListViewUtil"

    const-string v1, "[ListViewUtil] IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 810
    :catch_4
    move-exception v0

    .line 811
    const-string v0, "ListViewUtil"

    const-string v1, "[ListViewUtil] InvocationTargetException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setOnPullDownListener(Lcom/htc/lib1/cc/widget/ar;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    .line 150
    return-void
.end method

.method setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 154
    return-void
.end method

.method setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 616
    return-void
.end method

.method setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 612
    return-void
.end method

.method setScrollbarPosition(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 242
    if-nez p1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 246
    :goto_0
    if-eq v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsScrollBarAtRight:Z

    .line 247
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 246
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method touchDown(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mBouncingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setScrollY(I)V

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mMotionDownY:I

    .line 318
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsCancelRefresh:Z

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsInterceptMotionEvent:Z

    .line 319
    return-void
.end method

.method touchEnd(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 404
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->playBouncingAnimation()V

    .line 405
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    .line 406
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mMotionDownY:I

    .line 408
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    if-eqz v0, :cond_1

    .line 409
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollToBoundary:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 410
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ar;->d()V

    .line 411
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ar;->b()V

    .line 415
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollStarted:Z

    .line 417
    :cond_1
    iput v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    .line 418
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginFastScroll:Z

    .line 419
    return-void

    .line 412
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollToBoundary:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ar;->c()V

    goto :goto_0
.end method

.method touchMove(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    .line 323
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v5

    .line 324
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_a

    move v4, v1

    .line 325
    :goto_0
    if-nez v4, :cond_b

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    sub-int/2addr v0, v3

    .line 327
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->computeDeltaYWithSensitivity(I)I

    move-result v0

    .line 329
    sub-int v6, v5, v0

    .line 330
    neg-int v3, v0

    .line 332
    if-eqz v4, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mMotionDownY:I

    if-gt v0, v7, :cond_1

    :cond_0
    if-nez v4, :cond_d

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    if-le v0, v7, :cond_d

    .line 334
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isReadyToOverScroll(Z)Z

    move-result v0

    if-nez v0, :cond_2

    if-lez v5, :cond_6

    .line 335
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-nez v0, :cond_3

    .line 336
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mMotionDownY:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mTouchSlop:I

    if-le v0, v4, :cond_c

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    .line 338
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_3

    .line 342
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 347
    :cond_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-eqz v0, :cond_6

    .line 348
    if-lez v6, :cond_4

    if-lez v5, :cond_5

    :cond_4
    if-gez v6, :cond_18

    if-lez v5, :cond_18

    .line 349
    :cond_5
    neg-int v0, v5

    .line 351
    :goto_3
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->overScrollListView(I)V

    .line 352
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_6

    .line 353
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollStarted:Z

    .line 382
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_8

    .line 383
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 384
    sget v3, Lcom/htc/lib1/cc/widget/ListViewUtil;->PULL_DOWN_REFRESH_GAP:I

    if-lt v0, v3, :cond_17

    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollToBoundary:Z

    if-nez v3, :cond_17

    .line 385
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollToBoundary:Z

    .line 386
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    invoke-interface {v1}, Lcom/htc/lib1/cc/widget/ar;->a()V

    .line 391
    :cond_7
    :goto_5
    iget v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    if-eq v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollToBoundary:Z

    if-nez v1, :cond_8

    .line 392
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    sget v3, Lcom/htc/lib1/cc/widget/ListViewUtil;->PULL_DOWN_REFRESH_GAP:I

    invoke-interface {v1, v0, v3}, Lcom/htc/lib1/cc/widget/ar;->a(II)V

    .line 395
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollStarted:Z

    if-eqz v0, :cond_9

    if-gez v5, :cond_9

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_9

    .line 397
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollStarted:Z

    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    .line 398
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mUserRefreshListener:Lcom/htc/lib1/cc/widget/ar;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ar;->c()V

    .line 400
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    .line 401
    :goto_6
    return-void

    :cond_a
    move v4, v2

    .line 324
    goto/16 :goto_0

    .line 325
    :cond_b
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mMotionDownY:I

    sub-int/2addr v0, v3

    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 336
    goto/16 :goto_2

    .line 357
    :cond_d
    if-eqz v4, :cond_e

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mMotionDownY:I

    if-lt v0, v7, :cond_f

    :cond_e
    if-nez v4, :cond_16

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    if-ge v0, v4, :cond_16

    .line 358
    :cond_f
    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isReadyToOverScroll(Z)Z

    move-result v0

    if-nez v0, :cond_10

    if-gez v5, :cond_6

    .line 359
    :cond_10
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-nez v0, :cond_11

    .line 360
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mMotionDownY:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mTouchSlop:I

    if-le v0, v4, :cond_15

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    .line 362
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-eqz v0, :cond_11

    .line 364
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_11

    .line 366
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 371
    :cond_11
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mIsBeginOverScroll:Z

    if-eqz v0, :cond_6

    .line 372
    if-gez v6, :cond_12

    if-gez v5, :cond_13

    :cond_12
    if-lez v6, :cond_14

    if-gez v5, :cond_14

    .line 373
    :cond_13
    neg-int v3, v5

    .line 375
    :cond_14
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/ListViewUtil;->overScrollListView(I)V

    goto/16 :goto_4

    :cond_15
    move v0, v2

    .line 360
    goto :goto_7

    .line 378
    :cond_16
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mLastMotionY:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mCurrentMotionY:I

    if-ne v0, v3, :cond_6

    goto :goto_6

    .line 387
    :cond_17
    sget v1, Lcom/htc/lib1/cc/widget/ListViewUtil;->PULL_DOWN_REFRESH_GAP:I

    if-ge v0, v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollToBoundary:Z

    if-eqz v1, :cond_7

    .line 388
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/ListViewUtil;->mOverScrollToBoundary:Z

    goto/16 :goto_5

    :cond_18
    move v0, v3

    goto/16 :goto_3
.end method
