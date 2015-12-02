.class final Lcom/htc/camera/component/BubbleToastManager;
.super Lcom/htc/camera/u;
.source "BubbleToastManager.java"


# instance fields
.field private m_BubbleToast:Landroid/widget/RelativeLayout;

.field private m_BubbleToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

.field private final m_Handles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/BubbleToastManager$ToastHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_RotateAnimator:Landroid/view/ViewPropertyAnimator;

.field private m_ToastPaddingLeft:I

.field private m_ToastPaddingRight:I

.field private m_ZoomBar:Lcom/htc/camera/IZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const-string v0, "Bubble Toast Manager"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/htc/camera/u;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/BubbleToastManager;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->showBubbleToast()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/BubbleToastManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->hideBubbleToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/BubbleToastManager;)Lcom/htc/camera/component/BubbleToastManager$ToastHandle;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/BubbleToastManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->closeAllBubbleToasts()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/BubbleToastManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/BubbleToastManager;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/htc/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/camera/component/BubbleToastManager;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_RotateAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/camera/component/BubbleToastManager;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private canShowBubbleToast()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 88
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    iget v0, v0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->flags:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeAllBubbleToasts()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    .line 144
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->hideBubbleToast()V

    .line 146
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 149
    :cond_0
    return-void
.end method

.method private hideBubbleToast()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->stopRotatingBubbleToast()V

    .line 214
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 217
    :cond_0
    return-void
.end method

.method private selectToast()Lcom/htc/camera/component/BubbleToastManager$ToastHandle;
    .locals 5

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 408
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    .line 409
    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->priority:Lcom/htc/camera/BubbleToastPriority;

    iget v3, v3, Lcom/htc/camera/BubbleToastPriority;->priorityValue:I

    iget-object v4, v1, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->priority:Lcom/htc/camera/BubbleToastPriority;

    iget v4, v4, Lcom/htc/camera/BubbleToastPriority;->priorityValue:I

    if-ge v3, v4, :cond_2

    .line 406
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 412
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private setupBubbleToastSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 421
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    .line 427
    if-eqz v0, :cond_1

    .line 428
    const v0, 0x7f0a02c5

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    .line 433
    :goto_1
    iget v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ToastPaddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ToastPaddingRight:I

    sub-int/2addr v1, v2

    .line 436
    iget-object v2, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 437
    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 438
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 441
    if-lt v2, v1, :cond_4

    move v1, v0

    .line 442
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 444
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/htc/camera/IZoomBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/htc/camera/IZoomBar;

    iget-object v0, v0, Lcom/htc/camera/IZoomBar;->zoomBarState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    :cond_2
    const v0, 0x7f0a02c3

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    goto :goto_1

    .line 432
    :cond_3
    const v0, 0x7f0a02c4

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    goto :goto_1

    .line 441
    :cond_4
    iget v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ToastPaddingLeft:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ToastPaddingRight:I

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_2
.end method

.method private showBubbleToast()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 521
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->canShowBubbleToast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->stopRotatingBubbleToast()V

    .line 524
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 525
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0, v0}, Lcom/htc/camera/component/BubbleToastManager;->showUI(Landroid/view/View;ZZ)V

    .line 528
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showBubbleToast(Lcom/htc/camera/component/BubbleToastManager$ToastHandle;)Z
    .locals 5

    .prologue
    const v4, 0x7f0a0163

    const/4 v3, 0x0

    .line 483
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v1, "showBubbleToast()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v2, "showBubbleToast() - Initialize UI"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e00eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 491
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 492
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0e00cc

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    .line 493
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0a02be

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v1

    const v2, 0x7f0a02c1

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    .line 499
    invoke-virtual {p0, v4}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ToastPaddingLeft:I

    .line 500
    invoke-virtual {p0, v4}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ToastPaddingRight:I

    .line 509
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 510
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    iget-object v2, p1, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->content:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v1, "showBubbleToast() - Handle : "

    const-string v2, ", priority = "

    iget-object v3, p1, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;->priority:Lcom/htc/camera/BubbleToastPriority;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 514
    iput-object p1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    .line 517
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->showBubbleToast()Z

    move-result v0

    return v0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 505
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    goto :goto_0
.end method

.method private stopRotatingBubbleToast()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_RotateAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_RotateAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_RotateAnimator:Landroid/view/ViewPropertyAnimator;

    .line 541
    :cond_0
    return-void
.end method

.method private updateBubbleToastRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/htc/camera/IZoomBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/htc/camera/IZoomBar;

    iget-object v0, v0, Lcom/htc/camera/IZoomBar;->zoomBarState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 555
    :goto_1
    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    .line 557
    :cond_2
    const v0, 0x7f0a02bd

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v2

    .line 558
    const v0, 0x7f0a02c0

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    move v3, v2

    move v2, v0

    .line 567
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 568
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 569
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 570
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 571
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToastContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 574
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 575
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 576
    sget-object v1, Lcom/htc/camera/component/BubbleToastManager$10;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 583
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 586
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->setupBubbleToastSize()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 553
    goto :goto_1

    .line 562
    :cond_4
    const v0, 0x7f0a02bf

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v2

    .line 563
    const v0, 0x7f0a02c2

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->getDimension(I)I

    move-result v0

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 580
    :pswitch_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeBubbleToast(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->threadAccessCheck()V

    .line 161
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v1, "closeBubbleToast() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    if-nez p1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v1, "closeBubbleToast() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    if-nez v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBubbleToast() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v1, "closeBubbleToast() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 181
    if-gez v1, :cond_4

    .line 183
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBubbleToast() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    .line 189
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v1, "closeBubbleToast() - Close topmost toast"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    .line 196
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 200
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->selectToast()Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    .line 201
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->showBubbleToast(Lcom/htc/camera/component/BubbleToastManager$ToastHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :cond_6
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->hideBubbleToast()V

    goto/16 :goto_0

    .line 186
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 226
    invoke-super {p0}, Lcom/htc/camera/u;->initializeOverride()V

    .line 229
    const-class v0, Lcom/htc/camera/IZoomBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IZoomBar;

    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/htc/camera/IZoomBar;

    .line 232
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_ACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/BubbleToastManager$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/BubbleToastManager$1;-><init>(Lcom/htc/camera/component/BubbleToastManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 241
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/BubbleToastManager$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/BubbleToastManager$2;-><init>(Lcom/htc/camera/component/BubbleToastManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 251
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/BubbleToastManager$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/BubbleToastManager$3;-><init>(Lcom/htc/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 262
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/BubbleToastManager$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/BubbleToastManager$4;-><init>(Lcom/htc/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 273
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/BubbleToastManager$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/BubbleToastManager$5;-><init>(Lcom/htc/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 284
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/BubbleToastManager$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/BubbleToastManager$6;-><init>(Lcom/htc/camera/component/BubbleToastManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 300
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/BubbleToastManager$7;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/BubbleToastManager$7;-><init>(Lcom/htc/camera/component/BubbleToastManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/htc/camera/IZoomBar;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_ZoomBar:Lcom/htc/camera/IZoomBar;

    iget-object v0, v0, Lcom/htc/camera/IZoomBar;->zoomBarState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/BubbleToastManager$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/BubbleToastManager$8;-><init>(Lcom/htc/camera/component/BubbleToastManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IZoomBar interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 330
    if-eq p1, p2, :cond_0

    .line 331
    invoke-virtual {p0, p2, p1}, Lcom/htc/camera/component/BubbleToastManager;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 332
    :cond_0
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 340
    if-eq p1, p2, :cond_0

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/BubbleToastManager;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 342
    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v1, "onUIRotationChanged"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_BubbleToast:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 356
    iput-object v0, p0, Lcom/htc/camera/component/BubbleToastManager;->m_RotateAnimator:Landroid/view/ViewPropertyAnimator;

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 358
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 359
    new-instance v1, Lcom/htc/camera/component/BubbleToastManager$9;

    invoke-direct {v1, p0, p2}, Lcom/htc/camera/component/BubbleToastManager$9;-><init>(Lcom/htc/camera/component/BubbleToastManager;Lcom/htc/camera/rotate/UIRotation;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 393
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public showBubbleToast(Landroid/view/View;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->threadAccessCheck()V

    .line 457
    invoke-virtual {p0}, Lcom/htc/camera/component/BubbleToastManager;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v2, "showBubbleToast() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    :goto_0
    return-object v0

    .line 464
    :cond_1
    if-nez p1, :cond_2

    .line 466
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v2, "showBubbleToast() - No content specified"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_2
    new-instance v0, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/camera/component/BubbleToastManager$ToastHandle;-><init>(Landroid/view/View;Lcom/htc/camera/BubbleToastPriority;I)V

    .line 472
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->TAG:Ljava/lang/String;

    const-string v2, "showBubbleToast() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 475
    iget-object v1, p0, Lcom/htc/camera/component/BubbleToastManager;->m_Handles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-direct {p0}, Lcom/htc/camera/component/BubbleToastManager;->selectToast()Lcom/htc/camera/component/BubbleToastManager$ToastHandle;

    move-result-object v1

    .line 477
    if-ne v1, v0, :cond_0

    .line 478
    invoke-direct {p0, v0}, Lcom/htc/camera/component/BubbleToastManager;->showBubbleToast(Lcom/htc/camera/component/BubbleToastManager$ToastHandle;)Z

    goto :goto_0
.end method
