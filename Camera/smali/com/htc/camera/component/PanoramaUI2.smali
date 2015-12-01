.class public final Lcom/htc/camera/component/PanoramaUI2;
.super Lcom/htc/camera/panorama/IPanoramaController;
.source "PanoramaUI2.java"


# instance fields
.field private m_ArrowsContainer:Landroid/view/View;

.field private m_BubbleToastHandle:Lcom/htc/camera/Handle;

.field private m_BubbleToastManager:Lcom/htc/camera/u;

.field private m_CaptureBar:Lcom/htc/camera/ICaptureBar;

.field private m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_CenterIndicatorView:Landroid/widget/ImageView;

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashDisabledHandle:Lcom/htc/camera/Handle;

.field private m_HasError:Z

.field private m_HideCaptureBarHandle:Lcom/htc/camera/Handle;

.field private m_HintShowed:Z

.field private m_InitDirectionToast:Landroid/view/View;

.field private m_IsCaptureButtonPressedBeforeCapture:Z

.field private m_IsCaptureUIOpen:Z

.field private m_IsCapturing:Z

.field private m_IsCapturingFrame:Z

.field private m_IsInternalExit:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsUIInitialized:Z

.field private m_LeftArrow:Landroid/widget/ImageView;

.field private m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ResolutionProvider:Lcom/htc/camera/component/PanoramaResolutionProvider;

.field private m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_RightArrow:Landroid/widget/ImageView;

.field private m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

.field private m_SweepIndicatorCircle:Lcom/htc/camera/widget/ColorMultiplyImageView;

.field private m_SweepIndicatorContainer:Landroid/view/View;

.field private m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

.field private m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_ThumbnailBottom_margin:I

.field private m_ThumbnailHeight:I

.field private m_ThumbnailHeight_portrait:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidth_portrait:I

.field private m_hasPopup:Z

.field private m_panorama_spinner_line:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    const-string v0, "Panorama UI2"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/panorama/IPanoramaController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 129
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HasError:Z

    .line 131
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HintShowed:Z

    .line 139
    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->setBaseLayoutId(I)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->disableAutoInflateView()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/PanoramaUI2;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/PanoramaUI2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/PanoramaUI2;I)I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/camera/component/PanoramaUI2;->getVirtualDeviceOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/PanoramaUI2;)Lcom/htc/camera/widget/PanoramaIndicatorView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideReviewScreen()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/PanoramaUI2;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_hasPopup:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/camera/component/PanoramaUI2;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_hasPopup:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->showHintToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/PanoramaUI2;)Lcom/htc/camera/component/PanoramaController2;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/PanoramaUI2;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/PanoramaUI2;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/PanoramaUI2;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCapturing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/PanoramaUI2;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCapturingFrame:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/camera/component/PanoramaUI2;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsResolutionSyncBackNeeded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/camera/component/PanoramaUI2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/PanoramaUI2;)Lcom/htc/camera/rotate/RotateRelativeLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/PanoramaUI2;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-boolean v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HintShowed:Z

    .line 162
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->removeMessages(I)V

    .line 163
    iput-boolean v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HasError:Z

    .line 166
    iput-boolean v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private getVirtualDeviceOrientation()I
    .locals 1

    .prologue
    .line 362
    .line 363
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/htc/camera/IUIRotationManager;->getAvailableDeviceOrientation()I

    move-result v0

    .line 368
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getVirtualDeviceOrientation(I)I

    move-result v0

    return v0

    .line 367
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVirtualDeviceOrientation(I)I
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->surfaceRotation:I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    iget v1, v1, Lcom/htc/camera/rotate/UIRotation;->surfaceRotation:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5a

    add-int/2addr v0, p1

    .line 373
    if-gez v0, :cond_0

    .line 374
    add-int/lit16 v0, v0, 0x168

    .line 375
    :cond_0
    return v0
.end method

.method private hideArrows()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 461
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 471
    :cond_1
    return-void
.end method

.method private hideCenterIndicator()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 488
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private hideReviewScreen()V
    .locals 4

    .prologue
    .line 496
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/htc/camera/component/PanoramaUI2$1;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/PanoramaUI2$1;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideSweepIndicator()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    goto :goto_0
.end method

.method private hideThumbnailBar()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-virtual {v0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->reset()V

    .line 545
    :cond_1
    return-void
.end method

.method private hideToast()V
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 1230
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 1231
    return-void
.end method

.method private initializeUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 587
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->prepareContentLayout()Landroid/view/View;

    move-result-object v1

    .line 590
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsUIInitialized:Z

    if-eqz v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 594
    :cond_0
    if-nez v1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "initializeUI() - baseLayout is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_1
    const v0, 0x7f0e01bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ArrowsContainer:Landroid/view/View;

    .line 603
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ArrowsContainer:Landroid/view/View;

    const v2, 0x7f0e01be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_LeftArrow:Landroid/widget/ImageView;

    .line 604
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ArrowsContainer:Landroid/view/View;

    const v2, 0x7f0e01bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_RightArrow:Landroid/widget/ImageView;

    .line 607
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getFullScreenCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e0100

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030072

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 609
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 610
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 614
    const v0, 0x7f0e01c7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 615
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f0e01c8

    invoke-virtual {v0, v3}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 618
    const v0, 0x7f0e01c3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    .line 619
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    const v2, 0x7f0e01c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/PanoramaIndicatorView;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    .line 620
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    const v2, 0x7f0e01c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ColorMultiplyImageView;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorCircle:Lcom/htc/camera/widget/ColorMultiplyImageView;

    .line 621
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    const v2, 0x7f0e01c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_panorama_spinner_line:Landroid/widget/ImageView;

    .line 622
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorCircle:Lcom/htc/camera/widget/ColorMultiplyImageView;

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorCircle:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, v6}, Lcom/htc/camera/widget/ColorMultiplyImageView;->applyColorMultiplication(Z)V

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ArrowsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 626
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 629
    const v0, 0x7f0e01c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 630
    const v0, 0x7f0e01c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    .line 631
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    new-instance v2, Lcom/htc/camera/component/PanoramaUI2$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaUI2$2;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->addLengthLimitCallback(Lcom/htc/camera/widget/m;)V

    .line 644
    const v0, 0x7f0e01c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    .line 645
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 646
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setStaticIconResource(I)V

    .line 647
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v1, Lcom/htc/camera/component/PanoramaUI2$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/PanoramaUI2$3;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 675
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v5}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 678
    iput-boolean v6, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsUIInitialized:Z

    goto/16 :goto_0
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 751
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_0

    move v0, v1

    .line 759
    :goto_0
    return v0

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    const-string v2, "Panorama Controller2"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    .line 754
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    invoke-virtual {v0, p0}, Lcom/htc/camera/component/PanoramaController2;->link(Lcom/htc/camera/component/PanoramaUI2;)V

    move v0, v1

    .line 757
    goto :goto_0

    .line 759
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAborted(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 768
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/component/PanoramaUI2;->showUI(Landroid/view/View;ZZ)V

    .line 769
    iput-boolean v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    .line 772
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideThumbnailBar()V

    .line 775
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideCenterIndicator()V

    .line 781
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 783
    return-void
.end method

.method private onCloseErrorToast()V
    .locals 2

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HasError:Z

    if-nez v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onCloseErrorToast() -  There is no error happend. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HasError:Z

    .line 1336
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideToast()V

    .line 1339
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureUIOpen:Z

    if-eqz v0, :cond_0

    .line 1340
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->showHintToast()V

    goto :goto_0
.end method

.method private onDirectionLocked(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 791
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideArrows()V

    .line 794
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/component/PanoramaUI2;->showUI(Landroid/view/View;ZZ)V

    .line 797
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideToast()V

    .line 799
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->setMovingDirection(I)V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 805
    :cond_1
    return-void
.end method

.method private onError(Lcom/htc/camera/component/PanoramaController2$ErrorType;)V
    .locals 3

    .prologue
    .line 1259
    if-nez p1, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onError() - error is null."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCapturing:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;->InitFailed:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    invoke-virtual {p1, v0}, Lcom/htc/camera/component/PanoramaController2$ErrorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onError() -  Already stop to capture. return."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onError() - nonActive."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1273
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onError()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HasError:Z

    .line 1279
    const/4 v0, 0x0

    .line 1281
    sget-object v1, Lcom/htc/camera/component/PanoramaUI2$14;->$SwitchMap$com$htc$camera$component$PanoramaController2$ErrorType:[I

    invoke-virtual {p1}, Lcom/htc/camera/component/PanoramaController2$ErrorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move v1, v0

    .line 1299
    :goto_1
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 1300
    if-eqz v0, :cond_4

    .line 1301
    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 1306
    :goto_2
    const/16 v0, 0x67

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/component/PanoramaUI2;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0

    .line 1284
    :pswitch_0
    const v0, 0x7f08016b

    move v1, v0

    .line 1285
    goto :goto_1

    .line 1287
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1288
    const v0, 0x7f08016c

    move v1, v0

    goto :goto_1

    .line 1290
    :cond_3
    const v0, 0x7f08016d

    move v1, v0

    .line 1291
    goto :goto_1

    .line 1293
    :pswitch_2
    const v0, 0x7f08016e

    move v1, v0

    .line 1294
    goto :goto_1

    .line 1296
    :pswitch_3
    const v0, 0x7f08019b

    move v1, v0

    goto :goto_1

    .line 1303
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onError() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onIntermediatePhoto(ILandroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/16 v3, 0xc

    const/4 v2, -0x2

    .line 814
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 819
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCapturing:Z

    .line 825
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 828
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 830
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 832
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 833
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 834
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 835
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getThumbnailWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 836
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getThumbnailHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 837
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->setUiRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 851
    :cond_1
    return-void

    .line 841
    :cond_2
    iget v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailBottom_margin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 842
    iget v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailWidth_portrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 843
    iget v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailHeight_portrait:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 844
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 845
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 846
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_2

    .line 861
    :cond_0
    if-eqz p1, :cond_1

    .line 862
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 868
    :cond_1
    :goto_0
    return-void

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onStitchCompleted(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 880
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 881
    if-eqz v0, :cond_1

    .line 882
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 885
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 890
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onStitchStarted(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 897
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchStarted() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    .line 903
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCapturing:Z

    .line 906
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideThumbnailBar()V

    .line 909
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideArrows()V

    .line 912
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v2}, Lcom/htc/camera/component/PanoramaUI2;->showUI(Landroid/view/View;ZZ)V

    .line 919
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideCenterIndicator()V

    .line 922
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideSweepIndicator()V

    .line 925
    if-nez v0, :cond_3

    .line 927
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 928
    if-eqz v0, :cond_2

    .line 929
    if-nez p1, :cond_1

    const v1, 0x7f080170

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 932
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 938
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/component/PanoramaUI2;->showUI(Landroid/view/View;ZZ)V

    .line 939
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    .line 942
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 944
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchStarted() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    return-void

    .line 929
    :cond_1
    const v1, 0x7f080171

    goto :goto_0

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchStarted() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 935
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "Camera is paused or idle, will not show processing dialog"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private openCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 953
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureUIOpen:Z

    if-nez v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 960
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HasError:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_hasPopup:Z

    if-nez v0, :cond_2

    .line 966
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->showHintToast()V

    .line 969
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->getVirtualDeviceOrientation()I

    move-result v0

    .line 970
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    .line 972
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 974
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideSweepIndicator()V

    .line 976
    if-eqz v1, :cond_5

    .line 978
    invoke-direct {p0, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateToPortrait(Z)V

    .line 979
    const/16 v1, 0x10e

    if-le v0, v1, :cond_4

    .line 981
    add-int/lit8 v0, v0, -0x5a

    .line 992
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setDeviceOrientation(I)V

    .line 993
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicatorContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/PanoramaUI2;->showUI(Landroid/view/View;ZZ)V

    .line 997
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/PanoramaUI2;->showUI(Landroid/view/View;ZZ)V

    .line 1000
    iput-boolean v3, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureUIOpen:Z

    goto :goto_0

    .line 985
    :cond_4
    add-int/lit8 v0, v0, 0x5a

    goto :goto_1

    .line 990
    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/camera/component/PanoramaUI2;->rotateToPortrait(Z)V

    goto :goto_1
.end method

.method private registerEventListeners()V
    .locals 4

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1012
    const-class v0, Lcom/htc/camera/ui/IThumbnailImageButton;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IThumbnailImageButton;

    .line 1015
    sget-object v2, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/PanoramaUI2$4;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/PanoramaUI2$4;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1026
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/PanoramaUI2$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/PanoramaUI2$5;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1047
    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->resolutionSelectedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/PanoramaUI2$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaUI2$6;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1058
    if-eqz v0, :cond_0

    .line 1060
    sget-object v1, Lcom/htc/camera/ui/IThumbnailImageButton;->EVENT_BUTTON_CLICKED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/PanoramaUI2$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaUI2$7;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/IThumbnailImageButton;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1075
    :cond_0
    return-void
.end method

.method private rotateToPortrait(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 683
    if-eqz p1, :cond_0

    .line 685
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_panorama_spinner_line:Landroid/widget/ImageView;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 686
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ArrowsContainer:Landroid/view/View;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 687
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setBaseDegree(I)V

    .line 695
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_panorama_spinner_line:Landroid/widget/ImageView;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 692
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ArrowsContainer:Landroid/view/View;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 693
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setBaseDegree(I)V

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1086
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PanoramaUI2$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaUI2$8;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1105
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->deviceOrientation:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PanoramaUI2$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaUI2$9;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1123
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PanoramaUI2$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaUI2$10;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1152
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PanoramaUI2$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaUI2$11;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1164
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PanoramaUI2$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaUI2$12;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1175
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/PanoramaUI2$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/PanoramaUI2$13;-><init>(Lcom/htc/camera/component/PanoramaUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1190
    return-void
.end method

.method private showHintToast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1238
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HintShowed:Z

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "Hint have showed before"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :goto_0
    return-void

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastManager:Lcom/htc/camera/u;

    const v1, 0x7f080163

    invoke-virtual {v0, v1, v5}, Lcom/htc/camera/u;->showBubbleToast(II)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 1247
    :cond_1
    iput-boolean v5, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HintShowed:Z

    .line 1248
    const/16 v2, 0x68

    const-wide/16 v3, 0xbb8

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaUI2;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0

    .line 1251
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "openCaptureUI() - No IBubbleToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->exitPanoramaMode(I)V

    .line 180
    :cond_0
    iput-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    .line 181
    iput-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProvider:Lcom/htc/camera/component/PanoramaResolutionProvider;

    .line 184
    invoke-super {p0}, Lcom/htc/camera/panorama/IPanoramaController;->deinitializeOverride()V

    .line 185
    return-void
.end method

.method public enterPanoramaMode(I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 192
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaMode() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter panorama mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v6

    .line 202
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProvider:Lcom/htc/camera/component/PanoramaResolutionProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 210
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 211
    if-eqz v0, :cond_7

    .line 213
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProvider:Lcom/htc/camera/component/PanoramaResolutionProvider;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 214
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_6

    .line 215
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaMode() - Resolution provider changed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_1
    :goto_1
    invoke-static {}, Lcom/htc/camera/component/PanoramaController2;->isZoomingSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    invoke-virtual {v6}, Lcom/htc/camera/HTCCamera;->lockZoom()V

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->initializeUI()V

    .line 232
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->openCaptureUI()V

    .line 235
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 239
    :cond_3
    invoke-virtual {v6}, Lcom/htc/camera/HTCCamera;->disableSelfTimer()V

    .line 242
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    invoke-virtual {v0, v4}, Lcom/htc/camera/ICaptureBar;->setCaptureBarVisibility(Z)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HideCaptureBarHandle:Lcom/htc/camera/Handle;

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaMode() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaMode() - Cannot change resolution provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaMode() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitPanoramaMode(I)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 253
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "exitPanoramaMode() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit panorama mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 265
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 266
    if-eqz v0, :cond_3

    .line 268
    iget-boolean v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsResolutionSyncBackNeeded:Z

    if-eqz v1, :cond_2

    move v1, v6

    .line 269
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 270
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "exitPanoramaMode() - Resolution provider restored"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_2
    iput-object v5, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 275
    iput-boolean v4, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsResolutionSyncBackNeeded:Z

    .line 279
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsInternalExit:Z

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "Panorama InternalExit, return directly"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput-boolean v4, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsInternalExit:Z

    .line 283
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v4

    .line 268
    goto :goto_1

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "exitPanoramaMode() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->closeCaptureUI()V

    .line 289
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideSweepIndicator()V

    .line 292
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideThumbnailBar()V

    .line 294
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v7

    .line 297
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 300
    iput-object v5, p0, Lcom/htc/camera/component/PanoramaUI2;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 304
    :cond_5
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    .line 307
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_8

    .line 309
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 314
    :goto_3
    invoke-static {}, Lcom/htc/camera/component/PanoramaController2;->isZoomingSupported()Z

    move-result v0

    if-nez v0, :cond_6

    .line 315
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->unlockZoom()V

    .line 318
    :cond_6
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->collapseContentLayout()V

    .line 321
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HideCaptureBarHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HideCaptureBarHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, v6}, Lcom/htc/camera/ICaptureBar;->restoreCaptureBarVisibility(Lcom/htc/camera/Handle;I)V

    .line 324
    iput-object v5, p0, Lcom/htc/camera/component/PanoramaUI2;->m_HideCaptureBarHandle:Lcom/htc/camera/Handle;

    .line 327
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "exitPanoramaMode() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "Cannot exit panorama mode because there is no panorama controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 336
    const v0, 0x7f030071

    return v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailWidth:I

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 384
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 451
    invoke-super {p0, p1}, Lcom/htc/camera/panorama/IPanoramaController;->handleMessage(Landroid/os/Message;)V

    .line 454
    :goto_0
    return-void

    .line 387
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->onAborted(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 391
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->onDirectionLocked(I)V

    goto :goto_0

    .line 395
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/PanoramaUI2;->onIntermediatePhoto(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 399
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->onReviewImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 403
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 407
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->onStitchStarted(Z)V

    goto :goto_0

    .line 411
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->onCloseErrorToast()V

    goto :goto_0

    .line 416
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 417
    aget-object v1, v0, v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 418
    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/camera/widget/PanoramaObject;

    .line 420
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 422
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-virtual {v2, v0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->setPanoramaObject(Lcom/htc/camera/widget/PanoramaObject;)V

    .line 423
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 424
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepPanoramaThumb:Lcom/htc/camera/widget/SweepPanoramaThumbnailView;

    invoke-virtual {v0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->invalidate()V

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create panorama thumbnail"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :sswitch_8
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepThumbContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideToast()V

    goto :goto_0

    .line 443
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    check-cast v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 444
    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->onError(Lcom/htc/camera/component/PanoramaController2$ErrorType;)V

    goto :goto_0

    .line 448
    :sswitch_a
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideToast()V

    goto :goto_0

    .line 384
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_5
        0xb -> :sswitch_4
        0xc -> :sswitch_0
        0xd -> :sswitch_3
        0xe -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_6
        0x68 -> :sswitch_a
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 554
    invoke-super {p0}, Lcom/htc/camera/panorama/IPanoramaController;->initializeOverride()V

    .line 557
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_BubbleToastManager:Lcom/htc/camera/u;

    .line 558
    const-class v0, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    .line 559
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 562
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 564
    const v1, 0x7f0a02fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailWidth:I

    .line 565
    const v1, 0x7f0a02fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailWidth_portrait:I

    .line 567
    const v1, 0x7f0a02fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailHeight:I

    .line 568
    const v1, 0x7f0a02ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailHeight_portrait:I

    .line 570
    const v1, 0x7f0a0320

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_ThumbnailBottom_margin:I

    .line 572
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->registerEventListeners()V

    .line 575
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->setupPropertyChangedCallbacks()V

    .line 578
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_hasPopup:Z

    .line 579
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 712
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_panorama_spinner_line:Landroid/widget/ImageView;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 715
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setBaseDegree(I)V

    .line 724
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, p1, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 725
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_panorama_spinner_line:Landroid/widget/ImageView;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 721
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setBaseDegree(I)V

    goto :goto_0
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 733
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_panorama_spinner_line:Landroid/widget/ImageView;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 736
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setBaseDegree(I)V

    .line 743
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 744
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_panorama_spinner_line:Landroid/widget/ImageView;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 741
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_SweepIndicator:Lcom/htc/camera/widget/PanoramaIndicatorView;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PanoramaIndicatorView;->setBaseDegree(I)V

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaUI2;->rotateToPortrait(Z)V

    .line 703
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/PanoramaUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 704
    return-void
.end method

.method public final stopCapture()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1198
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1219
    :goto_0
    return v0

    .line 1200
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCapturing:Z

    if-nez v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v2, "stopCapture() - Not capturing"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1203
    goto :goto_0

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_CaptureButton:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/component/PanoramaUI2;->showUI(Landroid/view/View;ZZ)V

    .line 1208
    iput-boolean v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    .line 1211
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaUI2;->hideSweepIndicator()V

    .line 1214
    iput-boolean v1, p0, Lcom/htc/camera/component/PanoramaUI2;->m_IsCapturing:Z

    .line 1215
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/PanoramaUI2;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1219
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1218
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;

    const-string v1, "Cannot stop capturing because there is no panorama controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
