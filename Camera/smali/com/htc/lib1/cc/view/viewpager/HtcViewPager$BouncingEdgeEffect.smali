.class Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;
.super Ljava/lang/Object;
.source "HtcViewPager.java"


# instance fields
.field private bouncingDirection:I

.field private releaseAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

.field private totaldistanceOffset:F


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)V
    .locals 1

    .prologue
    .line 3681
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3689
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    .line 3690
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;Lcom/htc/lib1/cc/view/viewpager/a;)V
    .locals 0

    .prologue
    .line 3681
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;-><init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;F)F
    .locals 0

    .prologue
    .line 3681
    iput p1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 3681
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->setTranslation(Landroid/view/View;F)V

    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 3872
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3876
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1

    .prologue
    .line 3863
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 3712
    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 3732
    :cond_0
    :goto_0
    return-void

    .line 3715
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    if-nez v0, :cond_4

    move v0, v1

    .line 3716
    :goto_1
    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # invokes: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->viewForPosition(I)Landroid/view/View;
    invoke-static {v2, v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$700(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;I)Landroid/view/View;

    move-result-object v2

    .line 3718
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 3719
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 3722
    :cond_2
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3723
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v3

    invoke-interface {v3, v0, v4, v1}, Lcom/htc/lib1/cc/view/viewpager/e;->onPageScrolled(IFI)V

    .line 3726
    :cond_3
    if-nez v2, :cond_5

    .line 3727
    const-string v0, "ViewPager"

    const-string v1, "Can not find view!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3715
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3730
    :cond_5
    iput v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    .line 3731
    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    invoke-direct {p0, v2, v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->setTranslation(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3695
    iget v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 3708
    :cond_1
    :goto_0
    return v0

    .line 3698
    :cond_2
    iget v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 3702
    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    .line 3703
    iget-object v2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 3708
    goto :goto_0
.end method

.method public onPull(F)Z
    .locals 9

    .prologue
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 3735
    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 3796
    :cond_0
    :goto_0
    return v1

    .line 3738
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    cmpl-double v0, v3, v6

    if-gtz v0, :cond_0

    .line 3741
    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    if-nez v0, :cond_2

    move v0, v1

    .line 3742
    :goto_1
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # invokes: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->infoForCurrentScrollPosition()Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$900(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;

    move-result-object v3

    .line 3743
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;->position:I

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mCurItem:I
    invoke-static {v4}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$500(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 3746
    iget-object v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # invokes: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->viewForInfo(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;)Landroid/view/View;
    invoke-static {v4, v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$1000(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;)Landroid/view/View;

    move-result-object v3

    .line 3747
    if-nez v3, :cond_3

    .line 3748
    const-string v0, "ViewPager"

    const-string v2, "Can not find view!!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3741
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3752
    :cond_3
    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    .line 3754
    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    if-nez v4, :cond_6

    .line 3755
    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 3756
    const/high16 v4, 0x3e800000    # 0.25f

    iput v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    .line 3759
    :cond_4
    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_9

    .line 3760
    iput v8, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    .line 3762
    invoke-direct {p0, v3, v8}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->setTranslation(Landroid/view/View;F)V

    .line 3763
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3764
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;

    if-eqz v3, :cond_5

    .line 3765
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v3

    invoke-interface {v3, v0, v8, v1}, Lcom/htc/lib1/cc/view/viewpager/e;->onPageScrolled(IFI)V

    :cond_5
    move v1, v2

    .line 3768
    goto :goto_0

    .line 3770
    :cond_6
    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 3771
    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    float-to-double v4, v4

    const-wide/high16 v6, -0x4030000000000000L    # -0.25

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

    .line 3772
    const/high16 v4, -0x41800000    # -0.25f

    iput v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    .line 3775
    :cond_7
    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_9

    .line 3776
    iput v8, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    .line 3778
    invoke-direct {p0, v3, v8}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->setTranslation(Landroid/view/View;F)V

    .line 3779
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3780
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;

    if-eqz v3, :cond_8

    .line 3781
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v3

    invoke-interface {v3, v0, v8, v1}, Lcom/htc/lib1/cc/view/viewpager/e;->onPageScrolled(IFI)V

    :cond_8
    move v1, v2

    .line 3784
    goto/16 :goto_0

    .line 3789
    :cond_9
    iget v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    invoke-direct {p0, v3, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->setTranslation(Landroid/view/View;F)V

    .line 3790
    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3791
    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/lib1/cc/view/tabbar/TabBar$PageListener;

    if-eqz v1, :cond_a

    .line 3792
    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mInternalPageChangeListener:Lcom/htc/lib1/cc/view/viewpager/e;
    invoke-static {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$800(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/e;

    move-result-object v1

    iget v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    neg-float v3, v3

    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    iget-object v5, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v0, v3, v4}, Lcom/htc/lib1/cc/view/viewpager/e;->onPageScrolled(IFI)V

    :cond_a
    move v1, v2

    .line 3796
    goto/16 :goto_0
.end method

.method public onRelease()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3800
    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 3859
    :cond_0
    :goto_0
    return v1

    .line 3803
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    if-nez v0, :cond_2

    move v0, v1

    .line 3804
    :goto_1
    iget-object v3, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v3, v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->infoForPosition(I)Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;

    move-result-object v3

    .line 3805
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;->position:I

    if-ne v4, v0, :cond_0

    .line 3809
    iget v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    .line 3810
    iget-object v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # invokes: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->viewForInfo(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;)Landroid/view/View;
    invoke-static {v4, v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$1000(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$ItemInfo;)Landroid/view/View;

    move-result-object v3

    .line 3811
    if-nez v3, :cond_3

    .line 3812
    const-string v0, "ViewPager"

    const-string v2, "Can not find view!!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3803
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    # getter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->mAdapter:Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->access$400(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;)Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3816
    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    aput v5, v4, v1

    aput v6, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    .line 3817
    iget-object v4, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget v6, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F

    iget-object v7, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->this$0:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v7}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/16 v7, 0x1f40

    invoke-virtual {v5, v6, v1, v7, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->computeDuration(IIII)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3818
    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;

    invoke-direct {v4, p0, v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;-><init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3841
    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$2;

    invoke-direct {v4, p0, v3, v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$2;-><init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;Landroid/view/View;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3856
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->releaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    move v1, v2

    .line 3859
    goto :goto_0
.end method

.method public setBouncingDirection(I)V
    .locals 0

    .prologue
    .line 3867
    iput p1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->bouncingDirection:I

    .line 3868
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .prologue
    .line 3693
    return-void
.end method
