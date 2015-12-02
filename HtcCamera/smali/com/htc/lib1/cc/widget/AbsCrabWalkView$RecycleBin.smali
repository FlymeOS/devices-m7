.class Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsCrabWalkView.java"


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/htc/lib1/cc/widget/b;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;


# direct methods
.method static synthetic access$702(Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;Lcom/htc/lib1/cc/widget/b;)Lcom/htc/lib1/cc/widget/b;
    .locals 0

    .prologue
    .line 4505
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/widget/b;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 4725
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v5, v0

    .line 4726
    iget v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mViewTypeCount:I

    .line 4727
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    move v4, v2

    .line 4728
    :goto_0
    if-ge v4, v6, :cond_1

    .line 4729
    aget-object v8, v7, v4

    .line 4730
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4731
    sub-int v9, v0, v5

    .line 4732
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    .line 4733
    :goto_1
    if-ge v1, v9, :cond_0

    .line 4734
    iget-object v10, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->access$1000(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;Z)V

    .line 4733
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 4728
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 4737
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 4654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    .line 4655
    if-nez v0, :cond_1

    .line 4675
    :cond_0
    :goto_0
    return-void

    .line 4661
    :cond_1
    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    .line 4662
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4666
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4667
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4672
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/widget/b;

    if-eqz v0, :cond_0

    .line 4673
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/widget/b;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/b;->a(Landroid/view/View;)V

    goto :goto_0

    .line 4669
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 4560
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4561
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4562
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 4563
    :goto_0
    if-ge v1, v4, :cond_2

    .line 4564
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v5, v0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->access$800(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;Z)V

    .line 4563
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4567
    :cond_0
    iget v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mViewTypeCount:I

    move v3, v2

    .line 4568
    :goto_1
    if-ge v3, v4, :cond_2

    .line 4569
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 4570
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 4571
    :goto_2
    if-ge v1, v6, :cond_1

    .line 4572
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v7, v0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->access$900(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;Z)V

    .line 4571
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 4568
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 4576
    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 5

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 4587
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4589
    :cond_0
    iput p2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mFirstActivePosition:I

    .line 4591
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4592
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 4593
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4594
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    .line 4596
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_1

    .line 4599
    aput-object v3, v2, v1

    .line 4592
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4602
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4612
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mFirstActivePosition:I

    sub-int v2, p1, v0

    .line 4613
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4614
    if-ltz v2, :cond_0

    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 4615
    aget-object v0, v3, v2

    .line 4616
    aput-object v1, v3, v2

    .line 4619
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4627
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4628
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4629
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4630
    if-lez v2, :cond_0

    .line 4631
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4645
    :cond_0
    :goto_0
    return-object v0

    .line 4636
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v1, v1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 4637
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4638
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v2, v1

    .line 4639
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4640
    if-lez v2, :cond_0

    .line 4641
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4681
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 4682
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/widget/b;

    if-eqz v1, :cond_1

    move v1, v0

    .line 4683
    :goto_0
    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mViewTypeCount:I

    if-le v3, v0, :cond_2

    move v3, v0

    .line 4685
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4686
    array-length v6, v5

    move v4, v2

    move-object v2, v0

    .line 4687
    :goto_2
    if-ge v4, v6, :cond_5

    .line 4688
    aget-object v7, v5, v4

    .line 4689
    if-eqz v7, :cond_0

    .line 4690
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    .line 4693
    const/4 v8, 0x0

    aput-object v8, v5, v4

    .line 4695
    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    .line 4687
    :cond_0
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_1
    move v1, v2

    .line 4682
    goto :goto_0

    :cond_2
    move v3, v2

    .line 4683
    goto :goto_1

    .line 4700
    :cond_3
    if-eqz v3, :cond_6

    .line 4701
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v2, v0

    .line 4703
    :goto_4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4705
    if-eqz v1, :cond_4

    .line 4706
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/widget/b;

    invoke-interface {v2, v7}, Lcom/htc/lib1/cc/widget/b;->a(Landroid/view/View;)V

    :cond_4
    move-object v2, v0

    goto :goto_3

    .line 4717
    :cond_5
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->pruneScrapViews()V

    .line 4718
    return-void

    :cond_6
    move-object v0, v2

    goto :goto_4
.end method

.method public setViewTypeCount(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4535
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 4536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4539
    :cond_0
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    .line 4540
    :goto_0
    if-ge v0, p1, :cond_1

    .line 4541
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 4540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4543
    :cond_1
    iput p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mViewTypeCount:I

    .line 4544
    aget-object v0, v2, v1

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 4545
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 4546
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1

    .prologue
    .line 4553
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
