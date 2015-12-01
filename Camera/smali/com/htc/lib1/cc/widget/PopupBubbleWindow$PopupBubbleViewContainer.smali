.class Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;
.super Landroid/widget/LinearLayout;
.source "PopupBubbleWindow.java"


# instance fields
.field private containerView:Landroid/widget/FrameLayout;

.field private firstView:Landroid/widget/ImageView;

.field private lastView:Landroid/widget/ImageView;

.field private previousDirection:I

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 2533
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    .line 2534
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2519
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    .line 2521
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    .line 2522
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    .line 2524
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    .line 2535
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setChildrenDrawingOrderEnabled(Z)V

    .line 2537
    const/4 v0, -0x2

    .line 2540
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    .line 2541
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2542
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2544
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    .line 2545
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2546
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2549
    const/4 v0, -0x1

    .line 2551
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    .line 2552
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2553
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2556
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2557
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2558
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2559
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 2572
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2573
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2577
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2762
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_4

    .line 2763
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2764
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 2765
    if-eqz v1, :cond_1

    .line 2766
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2778
    :cond_1
    :goto_0
    return v0

    .line 2769
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 2770
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 2771
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2772
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 2776
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2778
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$1300(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$1300(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2790
    const/4 v0, 0x1

    .line 2792
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2615
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2819
    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    .line 2820
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChildDrawingOrder():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2824
    :cond_0
    if-nez p2, :cond_2

    move p2, v0

    .line 2829
    :cond_1
    :goto_0
    return p2

    .line 2826
    :cond_2
    if-ne p2, v0, :cond_1

    .line 2827
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 2748
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getRight()I

    move-result v3

    if-gt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getTop()I

    move-result v1

    if-lt v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getBottom()I

    move-result v1

    if-le v2, v1, :cond_1

    .line 2749
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismiss()V

    .line 2755
    :goto_0
    return v0

    .line 2751
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2752
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 2755
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2588
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2590
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$1400(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$1400(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2809
    :goto_0
    return-void

    .line 2807
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2603
    :cond_0
    return-void
.end method

.method public updateEnvironment()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2626
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$800(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    if-ne v0, v1, :cond_0

    .line 2683
    :goto_0
    return-void

    .line 2629
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2630
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$800(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2670
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2672
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2673
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2674
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_2

    move v2, v3

    :cond_2
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2678
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2679
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2682
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$800(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    goto :goto_0

    .line 2632
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2633
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2634
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$900(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2636
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 2637
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto :goto_1

    .line 2641
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2642
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2643
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$1000(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2645
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 2646
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto :goto_1

    .line 2650
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2651
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2652
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$1100(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2654
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2655
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto/16 :goto_1

    .line 2659
    :pswitch_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2660
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2661
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2663
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2664
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 2673
    goto/16 :goto_2

    .line 2630
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public updateIndicatorOffset(II)V
    .locals 2

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$800(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2735
    :goto_0
    return-void

    .line 2696
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2697
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2698
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2700
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2701
    neg-int v1, p2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2702
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2706
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2707
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2708
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2710
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2711
    neg-int v1, p2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2712
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2716
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2717
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2718
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2720
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2721
    neg-int v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2722
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2726
    :pswitch_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2727
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2728
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2730
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2731
    neg-int v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2732
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
