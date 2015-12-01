.class public final Lcom/htc/camera/sina/GifModeUI;
.super Lcom/htc/camera/component/cm;
.source "GifModeUI.java"


# static fields
.field private static reviewImage:Landroid/graphics/Bitmap;

.field public static sPreGifResolution:Lcom/htc/camera/Resolution;


# instance fields
.field private m_BubbleToastHandle:Lcom/htc/camera/Handle;

.field private m_BubbleToastManager:Lcom/htc/camera/u;

.field private volatile m_CanCapture:Z

.field private m_GifModeController:Lcom/htc/camera/sina/GifModeController;

.field private m_GifmodeReviewImage:Landroid/widget/ImageView;

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_IsCaptureUIOpen:Z

.field private m_IsModeEntered:Z

.field private m_IsUiInitialized:Z

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_State:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/camera/sina/GifModeUI;->sPreGifResolution:Lcom/htc/camera/Resolution;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    const-string v0, "Gif Mode UI"

    const/4 v1, 0x1

    const v2, 0x7f0e00e7

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 65
    iput v3, p0, Lcom/htc/camera/sina/GifModeUI;->m_State:I

    .line 94
    iput-boolean v3, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    .line 95
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->disableAutoInflateView()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/sina/GifModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/sina/GifModeUI;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->canUseGifMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/sina/GifModeUI;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/camera/sina/GifModeUI;->showReviewImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/sina/GifModeUI;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->hideReviewImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/sina/GifModeUI;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/camera/sina/GifModeUI;->changeRecording(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/sina/GifModeUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/sina/GifModeUI;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/sina/GifModeUI;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_State:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/camera/sina/GifModeUI;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/camera/sina/GifModeUI;->m_State:I

    return p1
.end method

.method static synthetic access$602(Lcom/htc/camera/sina/GifModeUI;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/camera/sina/GifModeUI;->m_CanCapture:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/camera/sina/GifModeUI;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/camera/sina/GifModeUI;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$900()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private canUseGifMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_3

    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 121
    if-eqz v0, :cond_4

    instance-of v0, v0, Lcom/htc/camera/sina/GifModeScene;

    if-nez v0, :cond_4

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeRecording(I)V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 675
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    invoke-virtual {v0, p1}, Lcom/htc/camera/u;->showBubbleToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 677
    :cond_0
    return-void
.end method

.method private closeCaptureUI()V
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->hideToast()V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private hideReviewImage()V
    .locals 3

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :cond_0
    return-void
.end method

.method private hideToast()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 653
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 654
    return-void
.end method

.method private initializeUI()V
    .locals 3

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsUiInitialized:Z

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsUiInitialized:Z

    .line 360
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_Inflater:Landroid/view/LayoutInflater;

    .line 361
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_Inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 363
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 364
    const v0, 0x7f0e0193

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 684
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifModeController:Lcom/htc/camera/sina/GifModeController;

    if-eqz v0, :cond_0

    .line 688
    :goto_0
    return v1

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v2, "Gif Mode Controller"

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/sina/GifModeController;

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifModeController:Lcom/htc/camera/sina/GifModeController;

    .line 688
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifModeController:Lcom/htc/camera/sina/GifModeController;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onGifEncodeStarted()V
    .locals 2

    .prologue
    .line 514
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_State:I

    .line 517
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 518
    if-eqz v0, :cond_0

    .line 519
    const v1, 0x7f08017e

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 522
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 523
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "onSmartShotCompleted() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onGifEncodeStopped(Lcom/htc/camera/CaptureHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 531
    iput v2, p0, Lcom/htc/camera/sina/GifModeUI;->m_State:I

    .line 534
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 536
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 537
    if-eqz v0, :cond_1

    .line 538
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 541
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/sina/GifGenerator;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifGenerator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/camera/sina/GifGenerator;->notifyGifMode(Z)V

    .line 547
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 548
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaved() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openCaptureUI()V
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsCaptureUIOpen:Z

    if-nez v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 621
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->showHintToast()V

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 4

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 373
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/sina/GifModeUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/sina/GifModeUI$1;-><init>(Lcom/htc/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 387
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/sina/GifModeUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/sina/GifModeUI$2;-><init>(Lcom/htc/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 411
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/sina/GifModeUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/sina/GifModeUI$3;-><init>(Lcom/htc/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 438
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/sina/GifModeUI$4;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/sina/GifModeUI$4;-><init>(Lcom/htc/camera/sina/GifModeUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 558
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/sina/GifModeUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/sina/GifModeUI$5;-><init>(Lcom/htc/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 570
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/sina/GifModeUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/sina/GifModeUI$6;-><init>(Lcom/htc/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 580
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/sina/GifModeUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/sina/GifModeUI$7;-><init>(Lcom/htc/camera/sina/GifModeUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 590
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/sina/GifModeUI$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/sina/GifModeUI$8;-><init>(Lcom/htc/camera/sina/GifModeUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 608
    return-void
.end method

.method private showHintToast()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    const v1, 0x7f08017d

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->showBubbleToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 665
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "openCaptureUI() - No IBubbleToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 700
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifmodeReviewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    :cond_0
    return-void
.end method


# virtual methods
.method public canCapture()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_CanCapture:Z

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeUI;->exitGifMode(I)V

    .line 272
    :cond_0
    iput-object v1, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifModeController:Lcom/htc/camera/sina/GifModeController;

    .line 275
    sget-object v0, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    sget-object v0, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    :cond_1
    sput-object v1, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    .line 280
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 283
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 284
    return-void
.end method

.method public enterGifMode(I)V
    .locals 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "enterGifMode() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    .line 148
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/htc/camera/sina/GifModeController;->isZoomingSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->lockZoom()V

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->initializeUI()V

    .line 156
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifModeController:Lcom/htc/camera/sina/GifModeController;

    const/16 v2, 0x2710

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/sina/GifModeUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 188
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->openCaptureUI()V

    .line 191
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableSelfTimer()V

    .line 196
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "enterGifMode() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "enterGifMode() - Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitGifMode(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "exitGifMode() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-boolean v4, p0, Lcom/htc/camera/sina/GifModeUI;->m_CanCapture:Z

    .line 213
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 235
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->closeCaptureUI()V

    .line 239
    sget-object v1, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    sget-object v1, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    :cond_1
    sput-object v5, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    .line 244
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    .line 247
    iput-boolean v4, p0, Lcom/htc/camera/sina/GifModeUI;->m_IsModeEntered:Z

    .line 248
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifModeController:Lcom/htc/camera/sina/GifModeController;

    if-eqz v0, :cond_3

    .line 249
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeUI;->m_GifModeController:Lcom/htc/camera/sina/GifModeController;

    const/16 v2, 0x2711

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/sina/GifModeUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 254
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/htc/camera/component/PanoramaController2;->isZoomingSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->unlockZoom()V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "exitGifMode() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->TAG:Ljava/lang/String;

    const-string v1, "exitGifMode() - Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 326
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->onGifEncodeStarted()V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 302
    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/sina/GifModeUI;->onGifEncodeStopped(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 306
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/sina/GifGenerator;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifGenerator;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/sina/GifGenerator;->isShareKeyLongPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/sina/GifGenerator;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/sina/GifGenerator;->notifyGifModeEnter()V

    goto :goto_0

    .line 311
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/sina/GifGenerator;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/sina/GifGenerator;->notifySenseChange()V

    goto :goto_0

    .line 315
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 316
    sget-object v1, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    sget-object v1, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_1
    aget-object v0, v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    sput-object v0, Lcom/htc/camera/sina/GifModeUI;->reviewImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 322
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 323
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/camera/sina/GifGenerator;->getInst(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/sina/GifGenerator;->notifyGifGenerateEnd(Landroid/net/Uri;)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 342
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    .line 345
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->registerListeners()V

    .line 347
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeUI;->setupPropertyChangedCallbacks()V

    .line 348
    return-void
.end method
