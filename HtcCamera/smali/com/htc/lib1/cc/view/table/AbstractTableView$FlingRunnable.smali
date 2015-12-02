.class public Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbstractTableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mScrollMode:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V
    .locals 2

    .prologue
    .line 3468
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3470
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3471
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 3441
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private getAnimationDurationAlongDistance(I)I
    .locals 2

    .prologue
    .line 3529
    mul-int/lit8 v0, p1, 0xa

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3480
    return-void
.end method


# virtual methods
.method public endFling(Z)V
    .locals 2

    .prologue
    .line 3559
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 3561
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    if-nez v0, :cond_0

    .line 3562
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->scrollIntoSlots()V

    .line 3567
    :goto_0
    return-void

    .line 3564
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3578
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mItemCount:I

    if-nez v0, :cond_0

    .line 3580
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 3621
    :goto_0
    return-void

    .line 3584
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    const/4 v1, 0x0

    # setter for: Lcom/htc/lib1/cc/view/table/AbstractTableView;->mShouldStopFling:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->access$1102(Lcom/htc/lib1/cc/view/table/AbstractTableView;Z)Z

    .line 3586
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3587
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 3588
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 3589
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 3593
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v0, v3

    .line 3594
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    sub-int v5, v1, v4

    .line 3597
    if-lez v0, :cond_1

    .line 3599
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getWidth()I

    move-result v1

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 3604
    :goto_1
    if-lez v5, :cond_2

    .line 3605
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getHeight()I

    move-result v0

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3611
    :goto_2
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-object v5, v5, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v5, v1, v0, v7}, Lcom/htc/lib1/cc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    .line 3613
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    # getter for: Lcom/htc/lib1/cc/view/table/AbstractTableView;->mShouldStopFling:Z
    invoke-static {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->access$1100(Lcom/htc/lib1/cc/view/table/AbstractTableView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3614
    iput v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 3615
    iput v4, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 3616
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3602
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getWidth()I

    move-result v1

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    neg-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 3608
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getHeight()I

    move-result v0

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 3619
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3515
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 3526
    :goto_0
    return-void

    .line 3517
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    .line 3518
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->startCommon()V

    .line 3520
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 3521
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 3522
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    neg-int v4, p2

    mul-int v2, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v2, v5

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-int v2, v5

    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->getAnimationDurationAlongDistance(I)I

    move-result v5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3523
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    .line 3525
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method public startUsingVelocity(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 3491
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 3504
    :goto_0
    return-void

    .line 3493
    :cond_0
    iput v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScrollMode:I

    .line 3494
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->startCommon()V

    .line 3496
    if-gtz p1, :cond_1

    move v1, v6

    .line 3497
    :goto_1
    if-gtz p2, :cond_2

    move v2, v6

    .line 3498
    :goto_2
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mLastFlingX:I

    .line 3499
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mLastFlingY:I

    .line 3500
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3502
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    .line 3503
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    goto :goto_0

    :cond_1
    move v1, v5

    .line 3496
    goto :goto_1

    :cond_2
    move v2, v5

    .line 3497
    goto :goto_2
.end method

.method public stop(Z)V
    .locals 1

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3543
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->endFling(Z)V

    .line 3544
    return-void
.end method
