.class Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;
.super Landroid/widget/LinearLayout;
.source "PopupBubbleWindow.java"


# instance fields
.field private containerView:Landroid/widget/FrameLayout;

.field private firstView:Landroid/widget/ImageView;

.field private lastView:Landroid/widget/ImageView;

.field private previousDirection:I

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 2735
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    .line 2736
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2726
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    .line 2728
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    .line 2729
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    .line 2731
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    .line 2737
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->setChildrenDrawingOrderEnabled(Z)V

    .line 2739
    const/4 v0, -0x2

    .line 2742
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    .line 2743
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2744
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2746
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    .line 2747
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2748
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2751
    const/4 v0, -0x1

    .line 2753
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    .line 2754
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2755
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->setLayoutDirection(I)V

    .line 2760
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2761
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2762
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;)V

    .line 2763
    return-void
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;)V
    .locals 0

    .prologue
    .line 2724
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->updateEnvironmentNoArrow()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;)V
    .locals 0

    .prologue
    .line 2724
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->updateEnvironment()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;II)V
    .locals 0

    .prologue
    .line 2724
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->updateIndicatorOffset(II)V

    return-void
.end method

.method private updateEnvironment()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2817
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    if-ne v0, v1, :cond_0

    .line 2876
    :goto_0
    return-void

    .line 2820
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2821
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v0, :pswitch_data_0

    .line 2861
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2864
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2865
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2867
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_2

    move v2, v3

    :cond_2
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2871
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2872
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2875
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->previousDirection:I

    goto :goto_0

    .line 2823
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2824
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2825
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$600(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2827
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 2828
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto :goto_1

    .line 2832
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2833
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2834
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$700(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2836
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 2837
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto :goto_1

    .line 2841
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2842
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2843
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$800(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2845
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2846
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto/16 :goto_1

    .line 2850
    :pswitch_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2851
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2852
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$900(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2854
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2855
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->setOrientation(I)V

    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 2865
    goto/16 :goto_2

    .line 2821
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateEnvironmentNoArrow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2881
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2884
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2885
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2887
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_0

    move v2, v3

    :cond_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2890
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2891
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2893
    return-void

    :cond_1
    move v1, v3

    .line 2885
    goto :goto_0
.end method

.method private updateIndicatorOffset(II)V
    .locals 2

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v0, :pswitch_data_0

    .line 2937
    :goto_0
    return-void

    .line 2902
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2903
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2904
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2905
    neg-int v1, p2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2906
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2911
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2912
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2913
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2914
    neg-int v1, p2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2915
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2920
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2921
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2922
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2923
    neg-int v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2924
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->firstView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2929
    :pswitch_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2930
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2931
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2932
    neg-int v1, p1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2933
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->lastView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2900
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 2774
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2775
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2777
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2779
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2976
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_4

    .line 2978
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2980
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 2981
    if-eqz v1, :cond_1

    .line 2982
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2995
    :cond_1
    :goto_0
    return v0

    .line 2985
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 2986
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 2987
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2989
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dismiss()V

    goto :goto_0

    .line 2993
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2995
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$1000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$1000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3006
    const/4 v0, 0x1

    .line 3008
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
    .line 2808
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2809
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2811
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

    .line 3031
    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    .line 3032
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

    .line 3037
    :cond_0
    if-nez p2, :cond_2

    move p2, v0

    .line 3042
    :cond_1
    :goto_0
    return p2

    .line 3039
    :cond_2
    if-ne p2, v0, :cond_1

    .line 3040
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2969
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2788
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2790
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$1100(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3019
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$1100(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3023
    :goto_0
    return-void

    .line 3021
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2799
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2801
    :cond_0
    return-void
.end method
