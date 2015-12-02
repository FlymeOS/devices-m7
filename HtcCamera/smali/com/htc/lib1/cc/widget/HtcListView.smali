.class public Lcom/htc/lib1/cc/widget/HtcListView;
.super Landroid/widget/ListView;
.source "HtcListView.java"


# instance fields
.field private mAnimRunning:Z

.field private mAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDelAniSet:Landroid/animation/AnimatorSet;

.field private mDelAnimationFlag:Z

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

.field private mDisableTouchEvent:Z

.field mDividerMargin:I

.field private mDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mEndDelAniEarly:Z

.field private mInDeleteAnimation:Z

.field private mIsDisableAnimation:Z

.field mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 105
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDividerMargin:I

    .line 58
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f99999a    # 1.2f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 63
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimatorList:Ljava/util/ArrayList;

    .line 68
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 70
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mEndDelAniEarly:Z

    .line 72
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    .line 74
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 76
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    .line 78
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcListView$2;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/HtcListView$2;-><init>(Lcom/htc/lib1/cc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 111
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcListView$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcListView$1;-><init>(Lcom/htc/lib1/cc/widget/HtcListView;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->init(Landroid/widget/AbsListView;Lcom/htc/lib1/cc/widget/aq;)V

    .line 158
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->getDividerMargin()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDividerMargin:I

    .line 159
    return-void
.end method

.method static synthetic access$001(Lcom/htc/lib1/cc/widget/HtcListView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mInDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$101(Lcom/htc/lib1/cc/widget/HtcListView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/lib1/cc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/lib1/cc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/lib1/cc/widget/HtcListView;)Lcom/htc/lib1/cc/widget/ac;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAnimationFlag:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mEndDelAniEarly:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/lib1/cc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$201(Lcom/htc/lib1/cc/widget/HtcListView;IIZZ)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onOverScrolled(IIZZ)V

    return-void
.end method

.method static synthetic access$301(Lcom/htc/lib1/cc/widget/HtcListView;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$401(Lcom/htc/lib1/cc/widget/HtcListView;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method static synthetic access$501(Lcom/htc/lib1/cc/widget/HtcListView;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$601(Lcom/htc/lib1/cc/widget/HtcListView;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic access$701(Lcom/htc/lib1/cc/widget/HtcListView;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/lib1/cc/widget/HtcListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/lib1/cc/widget/HtcListView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimRunning:Z

    return p1
.end method

.method private getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 724
    .line 725
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 726
    const-string v0, "y"

    new-array v1, v2, [F

    aput p3, v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 727
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :goto_0
    return-object v0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 731
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 732
    aget-object v1, v1, v3

    .line 733
    new-array v2, v2, [F

    aput p3, v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 734
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setDelViewLocation()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v0

    .line 550
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriFirstPosition:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 551
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getChildCount()I

    move-result v6

    .line 553
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1f

    move v5, v1

    .line 557
    :goto_0
    if-nez v0, :cond_1e

    move v0, v1

    .line 560
    :goto_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getTop()I

    .line 561
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getBottom()I

    move-result v7

    .line 564
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getChildCount()I

    move-result v8

    .line 565
    const/16 v3, 0x64

    .line 568
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 569
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    :goto_2
    move v4, v2

    .line 573
    :goto_3
    if-ge v4, v8, :cond_2

    .line 574
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 575
    iget-object v10, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    if-nez v4, :cond_0

    if-eqz v9, :cond_0

    .line 577
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 573
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 571
    :cond_1
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 580
    :cond_2
    iget-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriLastPage:Z

    if-nez v4, :cond_10

    .line 581
    if-nez v5, :cond_6

    .line 582
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    if-nez v0, :cond_4

    .line 583
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 1"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v0, v4

    move v0, v2

    .line 689
    :goto_5
    if-ge v0, v4, :cond_18

    .line 690
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v6, v3

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 585
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurLeftCount:I

    if-lt v0, v4, :cond_5

    .line 586
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 3 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 589
    :cond_5
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 2 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 590
    :goto_6
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    if-ge v0, v4, :cond_3

    .line 591
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 595
    :cond_6
    if-nez v0, :cond_b

    .line 596
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    if-nez v0, :cond_7

    .line 597
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 4 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v0, v2

    .line 629
    :goto_8
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriBelowLeftCount:I

    if-ge v0, v4, :cond_e

    .line 630
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v3

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 599
    :cond_7
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurDeleteCount:I

    if-nez v0, :cond_9

    .line 600
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurLeftCount:I

    if-lt v0, v4, :cond_8

    .line 602
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 9 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 604
    :cond_8
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 10 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 607
    :cond_9
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurLeftCount:I

    if-lt v0, v4, :cond_a

    .line 609
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 5 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 611
    :cond_a
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 6 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 616
    :cond_b
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurDeleteCount:I

    if-nez v0, :cond_c

    .line 617
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 11 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 619
    :cond_c
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurLeftCount:I

    if-lt v0, v4, :cond_d

    .line 621
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 7 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 623
    :cond_d
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 8 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 635
    :cond_e
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v4, v0, v6

    move v0, v2

    .line 636
    :goto_9
    if-ge v0, v4, :cond_f

    .line 637
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    move v0, v1

    .line 642
    :goto_a
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v6, v4, :cond_3

    .line 643
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v5, v3

    mul-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 648
    :cond_10
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    if-nez v4, :cond_13

    .line 649
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurDeleteCount:I

    if-nez v0, :cond_12

    :cond_11
    :goto_b
    move v0, v1

    .line 681
    :goto_c
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v6, v4, :cond_3

    .line 682
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v5, v3

    mul-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 652
    :cond_12
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 14 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 655
    :cond_13
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurDeleteCount:I

    if-nez v4, :cond_15

    .line 656
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurLeftCount:I

    if-lt v0, v4, :cond_14

    .line 657
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 12 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_b

    .line 660
    :cond_14
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 13 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 661
    :goto_d
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    if-ge v0, v4, :cond_11

    .line 662
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 666
    :cond_15
    if-nez v0, :cond_17

    .line 667
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurLeftCount:I

    if-lt v0, v4, :cond_16

    .line 669
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 15 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 671
    :cond_16
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 16 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 674
    :cond_17
    const-string v0, "HtcListView"

    const-string v4, "DeleteAnimation Case 17 "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 695
    :cond_18
    add-int/lit8 v0, v8, -0x1

    move v4, v0

    move v3, v2

    :goto_e
    if-ltz v4, :cond_1a

    .line 696
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v5, v0, :cond_19

    .line 697
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v3

    .line 695
    :goto_f
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v0

    goto :goto_e

    .line 699
    :cond_19
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v5, v0, :cond_1d

    .line 700
    add-int/lit8 v0, v3, 0x1

    goto :goto_f

    .line 705
    :cond_1a
    if-le v3, v1, :cond_1c

    .line 706
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 707
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 708
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 709
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 711
    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    .line 712
    if-ge v2, v3, :cond_1b

    .line 713
    sub-int v4, v3, v2

    add-int/lit8 v4, v4, -0x1

    .line 717
    :goto_11
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1b
    move v4, v2

    .line 715
    goto :goto_11

    .line 721
    :cond_1c
    return-void

    :cond_1d
    move v0, v3

    goto :goto_f

    :cond_1e
    move v0, v2

    goto/16 :goto_1

    :cond_1f
    move v5, v2

    goto/16 :goto_0
.end method

.method private startDelDropAnimation()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 501
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 502
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->setDelViewLocation()V

    .line 505
    const/16 v0, 0x96

    move v2, v3

    move v4, v0

    .line 508
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 511
    int-to-float v0, v2

    .line 512
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    .line 513
    int-to-float v4, v4

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDurationInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float/2addr v0, v5

    invoke-virtual {v6, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    add-int/lit16 v4, v0, 0x96

    .line 515
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v2, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListView;->getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 516
    int-to-long v5, v4

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 518
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 519
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 520
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 508
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcListView$4;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcListView$4;-><init>(Lcom/htc/lib1/cc/widget/HtcListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 542
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 543
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mEndDelAniEarly:Z

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->endDelAnimator()V

    .line 546
    :cond_1
    return-void
.end method

.method private startDelGoneAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 432
    iput-boolean v10, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimRunning:Z

    .line 434
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 435
    if-nez v3, :cond_1

    .line 436
    iput-boolean v10, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAnimationFlag:Z

    .line 437
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ac;->c()V

    .line 440
    :cond_0
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z

    .line 496
    :goto_0
    return-void

    .line 445
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 446
    const/16 v4, 0x12c

    .line 450
    const-string v0, "alpha"

    new-array v1, v11, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 451
    const-string v0, "scaleX"

    new-array v1, v11, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 452
    const-string v0, "scaleY"

    new-array v1, v11, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    move v1, v2

    .line 454
    :goto_1
    if-ge v1, v3, :cond_2

    .line 455
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 456
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v8, v2

    aput-object v6, v8, v10

    aput-object v5, v8, v11

    invoke-static {v0, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 457
    int-to-long v8, v4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 458
    iget-object v8, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 459
    iget-object v8, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 460
    iget-object v8, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v9, v10, [Landroid/animation/Animator;

    aput-object v0, v9, v2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 454
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcListView$3;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcListView$3;-><init>(Lcom/htc/lib1/cc/widget/HtcListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 495
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 450
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 451
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 452
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAnimationFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAnimationFlag:Z

    .line 273
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->startDelDropAnimation()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 276
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mInDeleteAnimation:Z

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableAnimation(IZ)V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/widget/ListViewUtil;->enableAnimation(IZ)V

    .line 752
    return-void
.end method

.method public endDelAnimator()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mEndDelAniEarly:Z

    .line 784
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 786
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->invalidate()V

    .line 284
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onDetachedFromWindow()V

    .line 210
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 185
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public onOverScrolled(IIZZ)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onOverScrolled(IIZZ)V

    .line 206
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 770
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 771
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onSizeChanged(IIII)V

    .line 772
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onWindowFocusChanged(Z)V

    .line 215
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->requestLayout()V

    .line 292
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 265
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setClipToPadding(Z)V

    .line 266
    return-void
.end method

.method setDarkModeEnabled(Z)V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 311
    if-nez p1, :cond_0

    .line 312
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z

    .line 313
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The input parameter d is null!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimRunning:Z

    if-ne v0, v3, :cond_2

    .line 316
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z

    .line 429
    :cond_1
    :goto_0
    return-void

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isDelAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mIsDisableAnimation:Z

    if-ne v0, v3, :cond_5

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ac;->c()V

    .line 322
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ac;->a()V

    .line 323
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ac;->b()V

    .line 325
    :cond_4
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z

    goto :goto_0

    .line 329
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 330
    if-nez v5, :cond_6

    .line 331
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z

    goto :goto_0

    .line 336
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    .line 337
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->cancelPendingInputEvents()V

    .line 339
    :cond_7
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimRunning:Z

    .line 340
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    if-eqz v0, :cond_8

    .line 341
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ac;->a()V

    .line 344
    :cond_8
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mInDeleteAnimation:Z

    .line 346
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriFirstPosition:I

    .line 347
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getChildCount()I

    move-result v6

    .line 349
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriFirstPosition:I

    add-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v1, v5

    if-ne v0, v1, :cond_9

    .line 350
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriLastPage:Z

    .line 355
    :goto_1
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    .line 356
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurDeleteCount:I

    .line 358
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurLeftCount:I

    .line 359
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriBelowLeftCount:I

    .line 361
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    .line 366
    :goto_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 371
    :goto_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    :goto_4
    move v4, v2

    move v1, v2

    .line 378
    :goto_5
    if-ge v4, v5, :cond_f

    .line 379
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 380
    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriFirstPosition:I

    if-ge v0, v7, :cond_d

    .line 381
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    move v0, v1

    .line 378
    :goto_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_5

    .line 352
    :cond_9
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriLastPage:Z

    goto :goto_1

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 369
    :cond_b
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 374
    :cond_c
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 382
    :cond_d
    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriFirstPosition:I

    add-int/2addr v7, v6

    if-ge v0, v7, :cond_e

    .line 383
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriFirstPosition:I

    sub-int/2addr v0, v8

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurDeleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurDeleteCount:I

    move v0, v1

    goto :goto_6

    .line 387
    :cond_e
    add-int/lit8 v0, v1, 0x1

    goto :goto_6

    .line 392
    :cond_f
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriUpperDeleteCount:I

    if-gtz v0, :cond_10

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    :cond_10
    move v0, v3

    .line 397
    :goto_7
    if-nez v0, :cond_11

    .line 398
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mAnimRunning:Z

    .line 399
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mInDeleteAnimation:Z

    .line 400
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDisableTouchEvent:Z

    .line 401
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ac;->c()V

    .line 403
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    invoke-interface {v0}, Lcom/htc/lib1/cc/widget/ac;->b()V

    goto/16 :goto_0

    .line 407
    :cond_11
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v2

    .line 408
    :goto_8
    if-ge v0, v6, :cond_14

    .line 409
    if-lez v3, :cond_13

    .line 410
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriFirstPosition:I

    add-int/2addr v2, v0

    .line 411
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 412
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 413
    if-eqz v2, :cond_12

    .line 414
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_12
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 417
    :cond_13
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_12

    .line 419
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 423
    :cond_14
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getChildCount()I

    move-result v0

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurDeleteCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriCurLeftCount:I

    .line 424
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mOriBelowLeftCount:I

    .line 427
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListView;->startDelGoneAnimation()V

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto :goto_7
.end method

.method public setDeleteAnimationListener(Lcom/htc/lib1/cc/widget/ac;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mDeleteAnimationListener:Lcom/htc/lib1/cc/widget/ac;

    .line 301
    return-void
.end method

.method public setDividerController(Lcom/htc/lib1/cc/widget/aj;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setDividerController(Lcom/htc/lib1/cc/widget/aj;)V

    .line 225
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 756
    invoke-super {p0, p1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 757
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setFastScrollEnabled(Z)V

    .line 761
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setFooterDividersEnabled(Z)V

    .line 241
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setHeaderDividersEnabled(Z)V

    .line 233
    return-void
.end method

.method public setOnPullDownListener(Lcom/htc/lib1/cc/widget/ar;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setOnPullDownListener(Lcom/htc/lib1/cc/widget/ar;)V

    .line 169
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 249
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    .prologue
    .line 765
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 766
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setScrollbarPosition(I)V

    .line 767
    return-void
.end method
