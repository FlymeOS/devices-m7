.class final Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsCrabWalkView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V
    .locals 0

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2379
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-nez v0, :cond_2

    .line 2380
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iput v3, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2382
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v1, v1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget v2, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2383
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2384
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 2386
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-boolean v1, v1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    if-nez v1, :cond_5

    .line 2387
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->layoutChildren()V

    .line 2388
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2389
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->positionSelector(Landroid/view/View;)V

    .line 2390
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2392
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 2393
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isLongClickable()Z

    move-result v2

    .line 2395
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2397
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_0

    .line 2398
    if-eqz v2, :cond_3

    .line 2399
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2406
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2407
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    if-nez v0, :cond_1

    .line 2408
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    new-instance v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Lcom/htc/lib1/cc/widget/AbsCrabWalkView$1;)V

    iput-object v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    .line 2410
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 2411
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iget-object v2, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2420
    :cond_2
    :goto_1
    return-void

    .line 2401
    :cond_3
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 2413
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iput v4, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    goto :goto_1

    .line 2416
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;->this$0:Lcom/htc/lib1/cc/widget/AbsCrabWalkView;

    iput v4, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    goto :goto_1
.end method
