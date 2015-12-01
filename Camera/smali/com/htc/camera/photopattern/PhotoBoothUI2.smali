.class public final Lcom/htc/camera/photopattern/PhotoBoothUI2;
.super Lcom/htc/camera/photopattern/IPhotoBoothController;
.source "PhotoBoothUI2.java"


# static fields
.field public static final COUNTDOWN_INTERVAL:Lcom/htc/camera/Duration;


# instance fields
.field private mCaptureButtonIcon:Landroid/graphics/drawable/Drawable;

.field private mCaptureButtonIconHandle:Lcom/htc/camera/Handle;

.field private mCountDownEndSoundHandle:Lcom/htc/camera/Handle;

.field private mCountDownSoundHandle:Lcom/htc/camera/Handle;

.field private mCountDownSoundMiddleHandle:Lcom/htc/camera/Handle;

.field private mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

.field private mCountDownTimerHandle:Lcom/htc/camera/Handle;

.field private mHasAudioFocusForSelfTimer:Z

.field private mIndicator1:Landroid/widget/ImageView;

.field private mIndicator2:Landroid/widget/ImageView;

.field private mIndicator3:Landroid/widget/ImageView;

.field private mIndicator4:Landroid/widget/ImageView;

.field private mIndicatorDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

.field private mIndicatorOff:Landroid/graphics/drawable/Drawable;

.field private mIndicatorViewContainer:Landroid/view/View;

.field private mSelfTimerDur:Lcom/htc/camera/Duration;

.field private mSettingsManager:Lcom/htc/camera/ISettingsManager;

.field private mStitingPhotoBlockHandle:Lcom/htc/camera/Handle;

.field private mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

.field private m_AudioManager:Lcom/htc/camera/IAudioManager;

.field private m_BlockManager:Lcom/htc/camera/w;

.field private m_BubbleToastHandle:Lcom/htc/camera/Handle;

.field private m_BubbleToastManager:Lcom/htc/camera/u;

.field private m_CaptureBar:Lcom/htc/camera/ICaptureBar;

.field private m_EntFlag:I

.field private m_HasError:Z

.field private m_HintShowed:Z

.field private m_IsCaptureButtonPressedBeforeCapture:Z

.field private m_IsCaptureUIOpen:Z

.field private m_IsCapturing:Z

.field private m_IsInterMediatePhotoReady:Z

.field private m_IsPostViewAnimationStoped:Z

.field private m_IsUIInitialized:Z

.field private final m_PhotoAnimationWatch:Lcom/htc/camera/StopWatch;

.field private m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

.field private m_PostviewBitmap:Landroid/graphics/Bitmap;

.field private m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_UIRotationHandle:Lcom/htc/camera/Handle;

.field private m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

.field private m_currentPhotoIndex:I

.field private m_hasPopup:Z

.field private m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->COUNTDOWN_INTERVAL:Lcom/htc/camera/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    const-string v0, "PhotoBoothUI2"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/photopattern/IPhotoBoothController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 117
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 127
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoAnimationWatch:Lcom/htc/camera/StopWatch;

    .line 155
    iput-boolean v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_HasError:Z

    .line 157
    iput-boolean v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_HintShowed:Z

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    .line 167
    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->setBaseLayoutId(I)V

    .line 168
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->disableAutoInflateView()V

    .line 170
    invoke-static {}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getSupportedPattern()Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onDrawPreviewFilter(Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownEndSoundHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/photopattern/PhotoBoothController2;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onCaptureButtonPressed()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onCaptureButtonReleased()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->updateIndicatorUI()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/photopattern/PhotoBoothUI2;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_EntFlag:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/rotate/RotateRelativeLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/photopattern/PhotoBoothUI2;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/camera/photopattern/PhotoBoothUI2;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->hideReviewScreen()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_hasPopup:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/camera/photopattern/PhotoBoothUI2;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_hasPopup:Z

    return p1
.end method

.method static synthetic access$302(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showHintToast()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->initializeUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/w;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/camera/photopattern/PhotoBoothUI2;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownSoundMiddleHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownSoundHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->resetIndicatorUI()V

    return-void
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 190
    :cond_0
    iput-boolean v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_HintShowed:Z

    .line 194
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->removeMessages(I)V

    .line 195
    iput-boolean v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_HasError:Z

    .line 198
    iput-boolean v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private hideReviewScreen()V
    .locals 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/htc/camera/photopattern/PhotoBoothUI2$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$5;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideToast()V
    .locals 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 1420
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 1421
    return-void
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsUIInitialized:Z

    if-eqz v0, :cond_0

    .line 926
    :goto_0
    return-void

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getFullScreenCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 902
    const v1, 0x7f0e01d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    .line 904
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    const v1, 0x7f0e01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator1:Landroid/widget/ImageView;

    .line 905
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator2:Landroid/widget/ImageView;

    .line 906
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    const v1, 0x7f0e01d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator3:Landroid/widget/ImageView;

    .line 907
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    const v1, 0x7f0e01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator4:Landroid/widget/ImageView;

    .line 908
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorOff:Landroid/graphics/drawable/Drawable;

    .line 909
    new-instance v0, Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/widget/ColorMultiplyDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    .line 911
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getFullScreenCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e0100

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 912
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030072

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 913
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 914
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 918
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020102

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCaptureButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 920
    const v0, 0x7f0e01c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 921
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0e01c8

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsUIInitialized:Z

    goto/16 :goto_0
.end method

.method private linkToController()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 982
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    if-eqz v0, :cond_0

    move v0, v1

    .line 990
    :goto_0
    return v0

    .line 984
    :cond_0
    const-class v0, Lcom/htc/camera/photopattern/PhotoBoothController2;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothController2;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    .line 985
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    invoke-virtual {v0, p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->link(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    move v0, v1

    .line 988
    goto :goto_0

    .line 990
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockRotation()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - NO UIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Already locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockRotation() - Lock rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v2, v2, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v2, "PhotoBooth"

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private onAborted(Lcom/htc/camera/CaptureHandle;)V
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    .line 1003
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->restoreSelfTimerInterval()V

    .line 1006
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1008
    return-void
.end method

.method private onCaptureButtonPressed()V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "PhotoBoothUI onCaptureButtonPressed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    .line 932
    :cond_0
    return-void
.end method

.method private onCaptureButtonReleased()V
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoBoothUI onCaptureButtonReleased "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    if-eqz v0, :cond_1

    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothCountDownEnable:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->stopCapture()Z

    goto :goto_0
.end method

.method private onCloseErrorToast()V
    .locals 2

    .prologue
    .line 1507
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_HasError:Z

    if-nez v0, :cond_1

    .line 1509
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onCloseErrorToast() -  There is no error happend. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_HasError:Z

    .line 1517
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->hideToast()V

    .line 1520
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureUIOpen:Z

    if-eqz v0, :cond_0

    .line 1521
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showHintToast()V

    goto :goto_0
.end method

.method private onDrawPreviewFilter(Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 859
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoAnimationWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoAnimationWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    .line 862
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsPostViewAnimationStoped:Z

    .line 865
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoAnimationWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 866
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsInterMediatePhotoReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    .line 867
    const/16 v2, 0x10

    iget v3, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 870
    :cond_2
    long-to-double v0, v0

    const-wide v2, 0x407f400000000000L    # 500.0

    div-double/2addr v0, v2

    .line 878
    sget-object v2, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v2, v2, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PostviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PostviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    sub-int v0, v2, v0

    .line 879
    iget-object v1, p1, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PostviewBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 889
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    goto :goto_0
.end method

.method private onIntermediatePhoto(I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1040
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1041
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1043
    iput-boolean v5, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsInterMediatePhotoReady:Z

    .line 1044
    iput p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    .line 1045
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1047
    :cond_0
    if-nez p1, :cond_1

    .line 1050
    iput-boolean v5, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    .line 1051
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1056
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSelfTimerDur:Lcom/htc/camera/Duration;

    .line 1064
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->updateIndicatorUI()V

    .line 1065
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsPostViewAnimationStoped:Z

    if-nez v0, :cond_3

    .line 1067
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "wait for animation finished"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSelfTimerDur:Lcom/htc/camera/Duration;

    goto :goto_1

    .line 1070
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIntermediatePhoto index :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->openCaptureUI()V

    .line 1074
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getNumofPhotos()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_a

    .line 1078
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    if-nez v0, :cond_4

    .line 1079
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/w;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    .line 1080
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_6

    .line 1082
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 1083
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v2}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1084
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    const-string v2, "PhotoBoothUI countdown"

    invoke-interface {v0, v2, v5}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    .line 1087
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_7

    .line 1089
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    const v2, 0x7f070010

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownSoundHandle:Lcom/htc/camera/Handle;

    .line 1090
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    const v2, 0x7f070012

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownSoundMiddleHandle:Lcom/htc/camera/Handle;

    .line 1091
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    const v2, 0x7f070011

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownEndSoundHandle:Lcom/htc/camera/Handle;

    .line 1094
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    if-eqz v0, :cond_a

    .line 1097
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    if-eqz v0, :cond_8

    .line 1099
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1100
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/photopattern/PhotoBoothUI2;->COUNTDOWN_INTERVAL:Lcom/htc/camera/Duration;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1104
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCaptureButtonIconHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_9

    .line 1105
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    sget-object v1, Lcom/htc/camera/ICaptureBar$CaptureButton;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButton;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCaptureButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v6}, Lcom/htc/camera/ICaptureBar;->setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCaptureButtonIconHandle:Lcom/htc/camera/Handle;

    .line 1106
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    const-string v1, "photoBooth countDown"

    sget-object v2, Lcom/htc/camera/photopattern/PhotoBoothUI2;->COUNTDOWN_INTERVAL:Lcom/htc/camera/Duration;

    invoke-virtual {v2}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ICountDownTimer;->startCountDown(Ljava/lang/String;JLcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimerHandle:Lcom/htc/camera/Handle;

    .line 1109
    :cond_a
    iput-boolean v6, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsPostViewAnimationStoped:Z

    .line 1110
    iput-boolean v6, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsInterMediatePhotoReady:Z

    goto/16 :goto_0

    .line 1102
    :cond_b
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/photopattern/PhotoBoothUI2;->COUNTDOWN_INTERVAL:Lcom/htc/camera/Duration;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_2

    .line 1122
    :cond_0
    if-eqz p1, :cond_1

    .line 1123
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1129
    :cond_1
    :goto_0
    return-void

    .line 1128
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onStitchCompleted(Lcom/htc/camera/CaptureHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1136
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1140
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 1141
    if-eqz v0, :cond_4

    .line 1142
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 1145
    :goto_0
    iput-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 1148
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->restoreSelfTimerInterval()V

    .line 1149
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->resetIndicatorUI()V

    .line 1150
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCaptureButtonIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCaptureButtonIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 1153
    iput-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCaptureButtonIconHandle:Lcom/htc/camera/Handle;

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mStitingPhotoBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mStitingPhotoBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1162
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    .line 1163
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    .line 1165
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1166
    return-void

    .line 1144
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onStitchStarted(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1173
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchStarted() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    .line 1179
    iput-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    .line 1180
    iput-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsInterMediatePhotoReady:Z

    .line 1183
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    if-eqz v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    const-string v2, "photobooth stitching"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mStitingPhotoBlockHandle:Lcom/htc/camera/Handle;

    .line 1187
    :cond_0
    if-nez v0, :cond_3

    .line 1189
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 1190
    if-eqz v0, :cond_2

    .line 1191
    if-nez p1, :cond_1

    const v1, 0x7f080170

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 1194
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 1201
    :goto_2
    iput-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    .line 1204
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 1206
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchStarted() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void

    .line 1191
    :cond_1
    const v1, 0x7f080171

    goto :goto_0

    .line 1193
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchStarted() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1197
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "Camera is paused or idle, will not show processing dialog"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private openCaptureUI()V
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureUIOpen:Z

    if-nez v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1222
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_HasError:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_hasPopup:Z

    if-nez v0, :cond_2

    .line 1228
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showHintToast()V

    .line 1235
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private registerEventListeners()V
    .locals 3

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1247
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothUI2$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$10;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1258
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/photopattern/PhotoBoothUI2$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$11;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1278
    return-void
.end method

.method private resetIndicatorUI()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "reset UIstate"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 836
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 837
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "resetIndicatorUI - UI not ready returned"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreSelfTimerInterval()V
    .locals 3

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSelfTimerDur:Lcom/htc/camera/Duration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSelfTimerDur:Lcom/htc/camera/Duration;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSelfTimerDur:Lcom/htc/camera/Duration;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1289
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$12;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1308
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1341
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothUI2$14;

    invoke-direct {v2, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$14;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1352
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothUI2$15;

    invoke-direct {v2, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$15;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1366
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothUI2$16;

    invoke-direct {v2, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$16;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 1375
    return-void
.end method

.method private showCover()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "show preview cover"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/camera/ui/IViewfinder;->showPreviewCover(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto :goto_0
.end method

.method private showHintToast()V
    .locals 0

    .prologue
    .line 1443
    return-void
.end method

.method private startPhotoAnimation(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 844
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PostviewBitmap:Landroid/graphics/Bitmap;

    .line 846
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PostviewBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "startPhotoAnimation - null postView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsPostViewAnimationStoped:Z

    .line 850
    const/16 v2, 0x10

    iget v3, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 854
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoAnimationWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    goto :goto_0
.end method

.method private unlockRotation()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - NO UIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Already unlocked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockRotation() - Lock rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v2, v2, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private updateIndicatorUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 788
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUI !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 793
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "updateUI == -1"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "mIndicatorViewContainer = null "

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 802
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    if-eqz v0, :cond_3

    .line 804
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    packed-switch v0, :pswitch_data_0

    .line 817
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 807
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 811
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 814
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 823
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->resetIndicatorUI()V

    goto :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->exitPhotoBoothMode(I)V

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    .line 215
    invoke-super {p0}, Lcom/htc/camera/photopattern/IPhotoBoothController;->deinitializeOverride()V

    .line 216
    return-void
.end method

.method public enterPhotoBoothMode(ILcom/htc/camera/photopattern/PhotoBoothPattern;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 324
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "already entered !!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "enterPhotoBoothMode() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    iput p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_EntFlag:I

    .line 333
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v6

    .line 336
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showCover()V

    .line 338
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-nez v0, :cond_1

    .line 348
    invoke-virtual {v6}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IAudioManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    .line 352
    :cond_1
    invoke-static {}, Lcom/htc/camera/photopattern/PhotoBoothController2;->isZoomingSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    invoke-virtual {v6}, Lcom/htc/camera/HTCCamera;->lockZoom()V

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_3

    .line 357
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 358
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 365
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    .line 366
    iput-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsInterMediatePhotoReady:Z

    .line 367
    iput-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsPostViewAnimationStoped:Z

    .line 370
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->openCaptureUI()V

    .line 382
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "enterPhotoBoothMode() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to PhotoBooth controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitPhotoBoothMode(I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 390
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "exitPhotoBoothMode() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit PhotoBooth mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 403
    iput-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->closeCaptureUI()V

    .line 409
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "exitPhotoBoothMode - hide preview cover"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 415
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v6

    .line 425
    invoke-virtual {v6}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    .line 428
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    if-eqz v0, :cond_4

    .line 431
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 436
    :goto_1
    invoke-static {}, Lcom/htc/camera/photopattern/PhotoBoothController2;->isZoomingSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 437
    invoke-virtual {v6}, Lcom/htc/camera/HTCCamera;->unlockZoom()V

    .line 440
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->collapseContentLayout()V

    .line 449
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "exitPhotoBoothMode() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "Cannot exit PhotoBooth mode because there is no PhotoBooth controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 593
    const v0, 0x7f030071

    return v0
.end method

.method public getNumofPhotos()I
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->currentPattern:Lcom/htc/camera/property/Property;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getNumberofPhotos()I

    move-result v0

    .line 1017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 623
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 669
    invoke-super {p0, p1}, Lcom/htc/camera/photopattern/IPhotoBoothController;->handleMessage(Landroid/os/Message;)V

    .line 672
    :goto_0
    return-void

    .line 626
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onAborted(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 629
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->unlockRotation()V

    goto :goto_0

    .line 633
    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    .line 634
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->lockRotation()V

    goto :goto_0

    .line 638
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onIntermediatePhoto(I)V

    goto :goto_0

    .line 642
    :sswitch_4
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_currentPhotoIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onIntermediatePhoto(I)V

    goto :goto_0

    .line 646
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onReviewImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 650
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 654
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onStitchStarted(Z)V

    goto :goto_0

    .line 658
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->onCloseErrorToast()V

    goto :goto_0

    .line 662
    :sswitch_9
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->hideToast()V

    goto :goto_0

    .line 666
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->startPhotoAnimation(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 623
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_3
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_0
        0xd -> :sswitch_5
        0xf -> :sswitch_a
        0x10 -> :sswitch_4
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 709
    invoke-super {p0}, Lcom/htc/camera/photopattern/IPhotoBoothController;->initializeOverride()V

    .line 712
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BubbleToastManager:Lcom/htc/camera/u;

    .line 713
    const-class v0, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    .line 715
    const-class v0, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mSettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 720
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->registerEventListeners()V

    .line 723
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->setupPropertyChangedCallbacks()V

    .line 726
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_hasPopup:Z

    .line 728
    const-class v0, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    .line 729
    const-class v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    .line 730
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-nez v0, :cond_0

    .line 731
    const-class v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 744
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/photopattern/PhotoBoothUI2$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$7;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 756
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/photopattern/PhotoBoothUI2$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$8;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 769
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/photopattern/PhotoBoothUI2$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$9;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 782
    const-class v0, Lcom/htc/camera/component/ICountDownTimer;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 784
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    sget-object v1, Lcom/htc/camera/ui/ICameraPreviewOverlay;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothUI2$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$6;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    goto :goto_0
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 966
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 975
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 3

    .prologue
    .line 458
    invoke-super {p0, p1}, Lcom/htc/camera/photopattern/IPhotoBoothController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 460
    instance-of v0, p1, Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onMonitoredComponentAdded() - Set IUIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 463
    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 465
    :cond_0
    instance-of v0, p1, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onMonitoredComponentAdded() - Set ICameraPreviewOverlay"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 468
    check-cast v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    .line 469
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    sget-object v1, Lcom/htc/camera/ui/ICameraPreviewOverlay;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/photopattern/PhotoBoothUI2$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$1;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 477
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showCover()V

    .line 481
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/component/ICountDownTimer;

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "onMonitoredComponentAdded() - Set ICountDownTimer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    if-nez v0, :cond_2

    .line 486
    check-cast p1, Lcom/htc/camera/component/ICountDownTimer;

    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    .line 487
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    if-nez v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "linkToOptionalServiceComponents() - Cannot find ICountDownTimer interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_2
    :goto_0
    return-void

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v0, v0, Lcom/htc/camera/component/ICountDownTimer;->timerTickEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 532
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v0, v0, Lcom/htc/camera/component/ICountDownTimer;->timerCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 552
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v0, v0, Lcom/htc/camera/component/ICountDownTimer;->timerFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;-><init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator1:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 953
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 954
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator3:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 955
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicator4:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 957
    :cond_0
    return-void
.end method

.method public setCurrentPattern(Lcom/htc/camera/photopattern/PhotoBoothPattern;)V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->setPattern(Lcom/htc/camera/photopattern/PhotoBoothPattern;)V

    .line 270
    return-void
.end method

.method public setPattern(Lcom/htc/camera/photopattern/PhotoBoothPattern;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++ setPattern :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->currentPattern:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v5, p1

    .line 284
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v7

    .line 285
    iget-object v0, v7, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :goto_1
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    move-object v5, v0

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, v7, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v7, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    move v6, v0

    .line 288
    :goto_2
    if-eqz v6, :cond_3

    .line 289
    invoke-virtual {v7}, Lcom/htc/camera/HTCCamera;->stopPreview()V

    .line 290
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->showCover()V

    .line 291
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_PHOTO_SIZE_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v5}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getPhotoSizeMode()Lcom/htc/camera/PhotoSizeMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    const/4 v2, 0x5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 294
    if-eqz v6, :cond_4

    .line 295
    invoke-virtual {v7, v3}, Lcom/htc/camera/HTCCamera;->startPreview(Z)Z

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "setPattern - hide preview cover"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_showPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- setPattern currentPattern:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move v6, v3

    .line 287
    goto :goto_2
.end method

.method public final stopCapture()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1383
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1409
    :goto_0
    return v0

    .line 1385
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    if-nez v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v2, "stopCapture() - Not capturing"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1388
    goto :goto_0

    .line 1390
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v2, "photoBoothUI stopCapture !"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iput-boolean v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCaptureButtonPressedBeforeCapture:Z

    .line 1396
    iput-boolean v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z

    .line 1397
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    if-eqz v0, :cond_4

    .line 1398
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1401
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimer:Lcom/htc/camera/component/ICountDownTimer;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ICountDownTimer;->stopCountDown(Lcom/htc/camera/Handle;)V

    .line 1405
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_3

    .line 1406
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1407
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;

    .line 1408
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->resetIndicatorUI()V

    .line 1409
    const/4 v0, 0x1

    goto :goto_0

    .line 1400
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;

    const-string v1, "Cannot stop capturing because there is no PhotoBooth controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
