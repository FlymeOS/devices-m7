.class public final Lcom/htc/camera/component/SwitchCameraSlidingUI;
.super Lcom/htc/camera/ai;
.source "SwitchCameraSlidingUI.java"


# static fields
.field private static final BEGIN_ANIMATION_MOVING_THRESHOLD:I


# instance fields
.field private mCaptureUIBlockManager:Lcom/htc/camera/w;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsTouchDownOnEdge:Z

.field private mShowSystemBarHandle:Lcom/htc/camera/Handle;

.field private mSwitchingCameraBlockHandle:Lcom/htc/camera/Handle;

.field private m_Animator:Landroid/view/ViewPropertyAnimator;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_CaptureModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModesInitialized:Z

.field private m_Container:Landroid/view/ViewGroup;

.field private m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

.field private final m_DisableSlidingHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

.field private m_IsChangingZoom:Z

.field private m_IsOneFingerSwipe:Z

.field private m_LastFrontCameraCaptureModeName:Ljava/lang/String;

.field private m_LastHumanJointCameraCaptureModeName:Ljava/lang/String;

.field private m_LastMainCameraCaptureModeName:Ljava/lang/String;

.field private m_LastSplitCameraCaptureModeName:Ljava/lang/String;

.field private m_MaxSlidingMoving:I

.field private m_NeedWaitFirstFrameReady:Z

.field private m_OnTouchSlidingView:Landroid/view/View;

.field private m_PendingUIRotation:Z

.field private m_Point1Down:Landroid/graphics/Point;

.field private m_Point2Down:Landroid/graphics/Point;

.field private m_PointMoving:Landroid/graphics/Point;

.field private m_SlidingDistance:I

.field private m_SlidingMoving:I

.field private m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

.field private m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

.field private m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

.field private m_TouchFromArea:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

.field private m_TypeImageView:Landroid/widget/ImageView;

.field private m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

.field private m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

.field private m_UIRotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->BEGIN_ANIMATION_MOVING_THRESHOLD:I

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    const-string v0, "Switch Camera Sliding"

    const v1, 0x7f0e0105

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/htc/camera/ai;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DisableSlidingHandles:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    .line 107
    iput v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 108
    iput v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingMoving:I

    .line 109
    iput v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_MaxSlidingMoving:I

    .line 110
    iput-boolean v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsChangingZoom:Z

    .line 111
    iput-boolean v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_PendingUIRotation:Z

    .line 112
    iput-boolean v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsOneFingerSwipe:Z

    .line 113
    iput-boolean v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mIsTouchDownOnEdge:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_NeedWaitFirstFrameReady:Z

    .line 115
    iput-boolean v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModesInitialized:Z

    .line 116
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point1Down:Landroid/graphics/Point;

    .line 117
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point2Down:Landroid/graphics/Point;

    .line 118
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_PointMoving:Landroid/graphics/Point;

    .line 119
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 121
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->BEGIN_DRAG_THRESHOLD:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    .line 122
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_LANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TouchFromArea:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    .line 123
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 131
    iput-object v4, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    .line 132
    iput-object v4, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Animator:Landroid/view/ViewPropertyAnimator;

    .line 162
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->disableFakeUIRotation()V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/SwitchCameraSlidingUI;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingMoving:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/component/SwitchCameraSlidingUI;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingMoving:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->saveCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/SwitchCameraSlidingUI;Z)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->sendHideUIMessage(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSwipeCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModesInitialized:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/camera/component/SwitchCameraSlidingUI;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModesInitialized:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isMainCaptureModeSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSelfieCaptureModeSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/SwitchCameraSlidingUI;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->updateSlidingDistance(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSplitCaptureModeSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/camera/component/SwitchCameraSlidingUI;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsChangingZoom:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/htc/camera/component/SwitchCameraSlidingUI;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->showFullScreenSwitchTypeIcon()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/camera/component/SwitchCameraSlidingUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/camera/component/SwitchCameraSlidingUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/camera/component/SwitchCameraSlidingUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastHumanJointCameraCaptureModeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/camera/component/SwitchCameraSlidingUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastHumanJointCameraCaptureModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->changeStatusBySliding()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/dualcamera/IDualCameraController;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/dualcamera/IDualCameraController;)Lcom/htc/camera/dualcamera/IDualCameraController;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->switchCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->cancelDragging()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->switchCaptureMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private autoSlidingDown2DAnimation()V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->WAITING_STARTPREVIEW:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    .line 172
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Animator:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 173
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 175
    return-void
.end method

.method private cancelDragging()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->BEGIN_DRAG_THRESHOLD:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 186
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mSwitchingCameraBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->resetTouchDownPt()V

    .line 189
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "cancelDragging"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private changeStatusByMotionUp()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsChangingZoom:Z

    .line 199
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->resetTouchDownPt()V

    .line 201
    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 203
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SlidingState:[I

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "BeginDragThreshold changeStatusByMotionUp"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->autoSlidingDown2DAnimation()V

    .line 214
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->resetTouchDownPt()V

    .line 215
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "DraggingTilt changeStatusByMotionUp"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "WaitingStratPreview changeStatusByMotionUp"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changeStatusBySliding()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SlidingState:[I

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isOverBeginAnimationThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iput v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 239
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->reset2DAnimation()V

    .line 240
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->closeExpandableMenu()V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->showUI(Landroid/view/View;ZZ)V

    .line 244
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 245
    instance-of v1, v0, Lcom/htc/camera/effect/HdrScene;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/htc/camera/effect/EisScene;

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/htc/camera/manualcapture/ManualCaptureScene;

    if-eqz v0, :cond_3

    .line 248
    :cond_2
    iput-boolean v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_NeedWaitFirstFrameReady:Z

    .line 253
    :goto_1
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->DRAGGING_TILT:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    .line 254
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Animator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 256
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    goto :goto_0

    .line 251
    :cond_3
    iput-boolean v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_NeedWaitFirstFrameReady:Z

    goto :goto_1

    .line 262
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->autoSlidingDown2DAnimation()V

    .line 263
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->resetTouchDownPt()V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMainCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 675
    const/4 v6, 0x0

    .line 679
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_7

    .line 680
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 681
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move v3, v5

    :goto_0
    if-ltz v4, :cond_6

    .line 683
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 684
    instance-of v2, v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v2}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/camera/capturemode/c;

    if-eqz v2, :cond_1

    move v2, v4

    .line 695
    :goto_1
    if-eq v3, v5, :cond_4

    .line 696
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 698
    :goto_2
    if-eq v2, v5, :cond_3

    .line 699
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v1, v0

    move v0, v2

    .line 702
    :goto_3
    if-ne v3, v5, :cond_0

    if-ne v0, v5, :cond_0

    .line 703
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "getMainCaptureMode() - no MainCaptureMode !!!"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_0
    return-object v1

    .line 689
    :cond_1
    instance-of v2, v1, Lcom/htc/camera/capturemode/d;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/htc/camera/capturemode/e;

    if-nez v2, :cond_2

    instance-of v1, v1, Lcom/htc/camera/capturemode/c;

    if-eqz v1, :cond_5

    :cond_2
    move v1, v4

    .line 681
    :goto_4
    add-int/lit8 v4, v4, -0x1

    move v3, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move-object v1, v6

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v2, v5

    goto :goto_1

    :cond_7
    move v0, v5

    move v3, v5

    move-object v1, v6

    goto :goto_3
.end method

.method private getSelfieCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 713
    const/4 v6, 0x0

    .line 717
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_6

    .line 718
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 719
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    move v4, v5

    :goto_0
    if-ltz v3, :cond_5

    .line 721
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 722
    instance-of v2, v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v2}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/camera/capturemode/b;

    if-eqz v2, :cond_1

    move v2, v3

    .line 731
    :goto_1
    if-eq v4, v5, :cond_3

    .line 732
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 734
    :goto_2
    if-eq v2, v5, :cond_2

    .line 735
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v1, v0

    move v0, v2

    .line 738
    :goto_3
    if-ne v4, v5, :cond_0

    if-ne v0, v5, :cond_0

    .line 739
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "getSelfieCaptureMode() - no SelfieCaptureMode !!!"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_0
    return-object v1

    .line 727
    :cond_1
    instance-of v1, v1, Lcom/htc/camera/capturemode/b;

    if-eqz v1, :cond_4

    move v1, v3

    .line 719
    :goto_4
    add-int/lit8 v3, v3, -0x1

    move v4, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move-object v1, v6

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_4

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    move v0, v5

    move v4, v5

    move-object v1, v6

    goto :goto_3
.end method

.method private getSplitCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 750
    const/4 v6, 0x0

    .line 754
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_6

    .line 755
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 756
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    move v4, v5

    :goto_0
    if-ltz v3, :cond_5

    .line 758
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 759
    instance-of v2, v1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 760
    check-cast v2, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v2}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSplitCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 770
    :goto_1
    if-eq v4, v5, :cond_3

    .line 771
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 773
    :goto_2
    if-eq v2, v5, :cond_2

    .line 774
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v1, v0

    move v0, v2

    .line 777
    :goto_3
    if-ne v4, v5, :cond_0

    if-ne v0, v5, :cond_0

    .line 778
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "getSplitCaptureMode() - no SplitCaptureMode !!!"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_0
    return-object v1

    .line 766
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSplitCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 756
    :goto_4
    add-int/lit8 v3, v3, -0x1

    move v4, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move-object v1, v6

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_4

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    move v0, v5

    move v4, v5

    move-object v1, v6

    goto :goto_3
.end method

.method private getSwipeCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;
    .locals 4

    .prologue
    .line 649
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 651
    instance-of v1, p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v1, :cond_0

    .line 652
    check-cast p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {p1}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object p1

    .line 654
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isMainCaptureModeGroup(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 665
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "getCurrentSwipeCaptureMode() - nowSwipeCaptureMode:"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 666
    return-object v0

    .line 656
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSelfieCaptureModeGroup(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SELFIE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    goto :goto_0

    .line 658
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSplitCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 659
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SPLIT_CAPTURE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    goto :goto_0

    .line 663
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSwipeCaptureMode() - !!! not a swipeCaptureMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hideSlidingUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 788
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->showUI(Landroid/view/View;ZZ)V

    .line 790
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mShowSystemBarHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mShowSystemBarHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->hideNavigationBar(Lcom/htc/camera/Handle;)V

    .line 793
    iput-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mShowSystemBarHandle:Lcom/htc/camera/Handle;

    .line 796
    :cond_0
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->BEGIN_DRAG_THRESHOLD:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    .line 797
    iput v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 798
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mSwitchingCameraBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirstPreviewFrameReceived m_SlidingDistance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_2

    .line 802
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;

    invoke-direct {v2, p0, v3}, Lcom/htc/camera/component/SwitchCameraSlidingUI$GestureListener;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/component/SwitchCameraSlidingUI$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mGestureDetector:Landroid/view/GestureDetector;

    .line 803
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_PendingUIRotation:Z

    if-eqz v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 805
    :cond_3
    return-void
.end method

.method private ifTouchOnEdge()Z
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point1Down:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point2Down:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x6

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point1Down:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point2Down:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_2

    .line 852
    :cond_1
    const/4 v0, 0x1

    .line 854
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMainCaptureModeGroup(Lcom/htc/camera/capturemode/CaptureMode;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 868
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 869
    instance-of v2, p1, Lcom/htc/camera/capturemode/d;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/htc/camera/capturemode/e;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/htc/camera/capturemode/c;

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 873
    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v2, p1, Lcom/htc/camera/capturemode/c;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/htc/camera/zoe/ZoeCaptureMode;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/htc/camera/panorama/PanoramaCaptureMode;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isMainCaptureModeSupported()Z
    .locals 4

    .prologue
    .line 883
    const/4 v2, 0x0

    .line 884
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 886
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_1

    .line 887
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-direct {p0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isMainCaptureModeGroup(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    const/4 v0, 0x1

    .line 893
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "isMainCaptureModeSupported() isSupport:"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 894
    return v0

    .line 886
    :cond_0
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private isOverBeginAnimationThreshold()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 979
    .line 981
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    sget v3, Lcom/htc/camera/component/SwitchCameraSlidingUI;->BEGIN_ANIMATION_MOVING_THRESHOLD:I

    if-le v0, v3, :cond_2

    .line 982
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_LANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TouchFromArea:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    move v0, v1

    .line 986
    :goto_0
    iget v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    sget v4, Lcom/htc/camera/component/SwitchCameraSlidingUI;->BEGIN_ANIMATION_MOVING_THRESHOLD:I

    neg-int v4, v4

    if-ge v3, v4, :cond_0

    .line 987
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_INVERSELANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TouchFromArea:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    move v0, v1

    .line 991
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isTouchOnEdge()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsChangingZoom:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 994
    :goto_1
    return v1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private isSelfieCaptureModeGroup(Lcom/htc/camera/capturemode/CaptureMode;)Z
    .locals 1

    .prologue
    .line 901
    instance-of v0, p1, Lcom/htc/camera/capturemode/b;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelfieCaptureModeSupported()Z
    .locals 4

    .prologue
    .line 909
    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 912
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_1

    .line 913
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-direct {p0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSelfieCaptureModeGroup(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    const/4 v0, 0x1

    .line 919
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "isSelfieCaptureModeSupported() isSupport:"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 920
    return v0

    .line 912
    :cond_0
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private isSplitCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z
    .locals 1

    .prologue
    .line 927
    instance-of v0, p1, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    return v0
.end method

.method private isSplitCaptureModeSupported()Z
    .locals 4

    .prologue
    .line 934
    const/4 v2, 0x0

    .line 935
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 937
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v3, :cond_1

    .line 938
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-direct {p0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSplitCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    const/4 v0, 0x1

    .line 944
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "isSplitCaptureModeSupported() isSupport:"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 945
    return v0

    .line 937
    :cond_0
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private reset2DAnimation()V
    .locals 13

    .prologue
    const v12, 0x7f020217

    const v11, 0x7f020213

    const v10, 0x7f020200

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 1013
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1019
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$TouchFromArea:[I

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TouchFromArea:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v2

    move v3, v2

    move v4, v2

    .line 1044
    :goto_0
    if-ltz v3, :cond_1

    if-ge v3, v5, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 1050
    :goto_1
    sget-object v3, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_1

    .line 1068
    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1069
    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset2DAnimation() - unknown previousSwipeCaptureMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :goto_2
    if-ltz v4, :cond_2

    if-ge v4, v5, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 1081
    :goto_3
    sget-object v3, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 1099
    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1100
    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    const v4, 0x7f0200df

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1103
    :goto_4
    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reset2DAnimation() - unknown SwipeCaptureMode:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_5
    if-ltz v1, :cond_4

    if-ge v1, v5, :cond_4

    .line 1110
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 1115
    :goto_6
    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_3

    .line 1133
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1134
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset2DAnimation() - unknown nextSwipeCaptureMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :goto_7
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1139
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1150
    return-void

    .line 1022
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1023
    if-lez v5, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    rem-int v1, v0, v5

    .line 1025
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int v3, v0, v5

    .line 1026
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v4, v3

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    .line 1032
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1033
    if-lez v5, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1035
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    rem-int v3, v0, v5

    .line 1036
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x2

    rem-int/2addr v0, v5

    move v4, v3

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    .line 1047
    :cond_1
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 1048
    iget-object v6, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reset2DAnimation() - arraySize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " idxModeTopOfLand:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1052
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 1056
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 1060
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 1078
    :cond_2
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 1079
    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset2DAnimation() - arraySize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " idxModeCenter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1083
    :pswitch_5
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    const v3, 0x7f0200a7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1087
    :pswitch_6
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    const v3, 0x7f0200ba

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1091
    :pswitch_7
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    const v3, 0x7f0200de

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1102
    :cond_3
    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    const v4, 0x7f0200e0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1112
    :cond_4
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 1113
    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reset2DAnimation() - arraySize:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " idxModeTopOfInverseLand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1117
    :pswitch_8
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 1121
    :pswitch_9
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 1125
    :pswitch_a
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1050
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1081
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1115
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private resetTouchDownPt()V
    .locals 3

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point1Down:Landroid/graphics/Point;

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v2, Lcom/htc/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1158
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point2Down:Landroid/graphics/Point;

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_CENTER_X:I

    sget v2, Lcom/htc/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mIsTouchDownOnEdge:Z

    .line 1160
    return-void
.end method

.method private saveCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 3

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_0

    .line 1169
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSplitCaptureModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSplitCaptureModeSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1173
    const-class v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 1176
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1214
    :cond_3
    :goto_0
    return-void

    .line 1180
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1182
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    invoke-direct {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSwipeCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1210
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCaptureMode() - not support capturemode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :pswitch_0
    instance-of v0, p1, Lcom/htc/camera/capturemode/c;

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/capturemode/c;

    if-eqz v0, :cond_3

    .line 1186
    :cond_5
    invoke-virtual {p1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    .line 1187
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_last_main_camera_capture_mode"

    iget-object v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1192
    :pswitch_1
    instance-of v0, p1, Lcom/htc/camera/capturemode/b;

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/capturemode/b;

    if-eqz v0, :cond_3

    .line 1194
    :cond_6
    invoke-virtual {p1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;

    .line 1195
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_last_front_camera_capture_mode"

    iget-object v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1200
    :pswitch_2
    invoke-virtual {p1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;

    .line 1201
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_last_split_camera_capture_mode"

    iget-object v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendHideUIMessage(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 811
    const/4 v3, 0x1

    .line 812
    if-eqz p1, :cond_0

    move v3, v4

    .line 814
    :cond_0
    const/16 v2, 0x2712

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 815
    return-void
.end method

.method private showFullScreenSwitchTypeIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1346
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v2, v2, v2}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    .line 1347
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1348
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1350
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1360
    :goto_0
    return-void

    .line 1353
    :pswitch_0
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    goto :goto_0

    .line 1357
    :pswitch_1
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    goto :goto_0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private switchCamera()Z
    .locals 3

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mSwitchingCameraBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1225
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->switchingCameraSlidingEvent:Lcom/htc/camera/event/Event;

    sget-object v2, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1227
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    move-result v0

    .line 1230
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    move-result v0

    goto :goto_0
.end method

.method private switchCaptureMode()Z
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mSwitchingCameraBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "switchCaptureMode() - No ICaptureModeManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v0, 0x0

    .line 1249
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TouchFromArea:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->toNextCaptureMode(Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;)Z

    move-result v0

    goto :goto_0
.end method

.method private toNextCaptureMode(Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;)Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1260
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "toNextCaptureMode() - No ICaptureModeManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :goto_0
    return v6

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1269
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_LANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    if-ne p1, v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    move v4, v0

    .line 1276
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 1277
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    if-ne v0, v2, :cond_3

    .line 1278
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toNextCaptureMode() - SameMode m_CurrentSwipeCaptureMode"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " nextSwipeCaptureMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchFromArea:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    move v4, v0

    goto :goto_1

    .line 1274
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "toNextCaptureMode() - m_CaptureModes.size is 0 !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto :goto_1

    .line 1281
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "toNextCaptureMode() - "

    const-string v3, " idxNext:"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " touchFromArea:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1286
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    invoke-virtual {v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1316
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toNextCaptureMode() - unknown SwipeCaptureMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1320
    :goto_2
    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1322
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "toNextCaptureMode() - the same mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1288
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1289
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    move-object v1, v7

    move-object v7, v0

    goto :goto_2

    .line 1291
    :cond_6
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getMainCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    move-object v1, v0

    .line 1292
    goto :goto_2

    .line 1295
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1296
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;

    move-object v1, v7

    move-object v7, v0

    goto :goto_2

    .line 1298
    :cond_7
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSelfieCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    move-object v1, v0

    .line 1299
    goto :goto_2

    .line 1302
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1303
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;

    move-object v1, v7

    move-object v7, v0

    goto :goto_2

    .line 1305
    :cond_8
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSplitCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    move-object v1, v0

    .line 1306
    goto :goto_2

    .line 1326
    :cond_9
    if-eqz v7, :cond_a

    .line 1327
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v7}, Lcom/htc/camera/capturemode/ICaptureModeManager;->setCaptureMode(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0

    .line 1329
    :cond_a
    if-eqz v1, :cond_b

    .line 1330
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/ICaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v6

    goto/16 :goto_0

    .line 1332
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "toNextCaptureMode() - no avaliable capture mode set to MainCaptureMode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1334
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/ICaptureModeManager;->setCaptureMode(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_0

    .line 1336
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getMainCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/ICaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v6

    goto/16 :goto_0

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSlidingDistance(I)V
    .locals 2

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->WAITING_STARTPREVIEW:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    if-ne v0, v1, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1380
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    mul-int/lit8 v1, p1, 0x2

    neg-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 1381
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-lt v0, v1, :cond_0

    .line 1382
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    goto :goto_0

    .line 1386
    :pswitch_1
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 1387
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-lt v0, v1, :cond_0

    .line 1388
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    goto :goto_0

    .line 1392
    :pswitch_2
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    mul-int/lit8 v1, p1, 0x2

    neg-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 1393
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    if-lt v0, v1, :cond_0

    .line 1394
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    goto :goto_0

    .line 1398
    :pswitch_3
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    .line 1399
    iget v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    if-lt v0, v1, :cond_0

    .line 1400
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingDistance:I

    goto :goto_0

    .line 1378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public disableSliding(I)Lcom/htc/camera/Handle;
    .locals 5

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->threadAccessCheck()V

    .line 285
    new-instance v0, Lcom/htc/camera/Handle;

    const-string v1, "DisableSliding"

    invoke-direct {v0, v1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DisableSlidingHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "disableSliding() - Create handle : "

    const-string v3, ", handle count : "

    iget-object v4, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DisableSlidingHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DisableSlidingHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->cancelDragging()V

    .line 292
    :cond_0
    return-object v0
.end method

.method public enableSliding(Lcom/htc/camera/Handle;I)V
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->threadAccessCheck()V

    .line 305
    if-nez p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "enableSliding() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DisableSlidingHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "enableSliding() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "enableSliding() - Handle : "

    const-string v2, ", handle count : "

    iget-object v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DisableSlidingHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 331
    invoke-super {p0, p1}, Lcom/htc/camera/ai;->handleMessage(Landroid/os/Message;)V

    .line 334
    :goto_0
    return-void

    .line 325
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_NeedWaitFirstFrameReady:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v1, "wait for first preview callback to hide sliding ui"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->hideSlidingUI()V

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 341
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DisableSlidingHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/DistortionEffect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    if-nez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 382
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 384
    return v4

    .line 355
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsOneFingerSwipe:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->BEGIN_DRAG_THRESHOLD:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    if-ne v0, v1, :cond_2

    .line 356
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point1Down:Landroid/graphics/Point;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 357
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point2Down:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point1Down:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point1Down:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 359
    :cond_2
    iput v3, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_MaxSlidingMoving:I

    .line 360
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->ifTouchOnEdge()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mIsTouchDownOnEdge:Z

    goto :goto_0

    .line 365
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->changeStatusByMotionUp()V

    goto :goto_0

    .line 368
    :pswitch_3
    iget-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsOneFingerSwipe:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->BEGIN_DRAG_THRESHOLD:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    if-ne v0, v1, :cond_3

    .line 369
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point1Down:Landroid/graphics/Point;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 370
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Point2Down:Landroid/graphics/Point;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 372
    :cond_3
    iput-boolean v4, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_IsChangingZoom:Z

    goto :goto_0

    .line 375
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->WAITING_STARTPREVIEW:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    if-eq v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_PointMoving:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 389
    invoke-super {p0}, Lcom/htc/camera/ai;->initializeOverride()V

    .line 391
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 394
    const v0, 0x7f0e0104

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    .line 395
    const v0, 0x7f0e0106

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    .line 396
    const v0, 0x7f0e0105

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    .line 397
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    const v2, 0x7f0200e0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 398
    const v0, 0x7f0e0107

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_OnTouchSlidingView:Landroid/view/View;

    .line 399
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    .line 400
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Animator:Landroid/view/ViewPropertyAnimator;

    .line 401
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Animator:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 402
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Animator:Landroid/view/ViewPropertyAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x40733333    # 3.8f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 403
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_Animator:Landroid/view/ViewPropertyAnimator;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 448
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 449
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/w;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mCaptureUIBlockManager:Lcom/htc/camera/w;

    .line 450
    const-class v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    .line 453
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_OnTouchSlidingView:Landroid/view/View;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$2;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 464
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_last_main_camera_capture_mode"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;

    .line 469
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_last_front_camera_capture_mode"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;

    .line 470
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_last_split_camera_capture_mode"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v2, "pref_last_human_joint_capture_mode"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastHumanJointCameraCaptureModeName:Ljava/lang/String;

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeChangingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$3;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 486
    :goto_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$4;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 498
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 526
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$6;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 536
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$7;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 546
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_STOPPING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$8;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 554
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SwitchCameraSlidingUI$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$9;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 564
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$10;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 574
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;-><init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 604
    :cond_1
    return-void

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - No ICaptureModeManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isTouchOnEdge()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->mIsTouchDownOnEdge:Z

    return v0
.end method

.method public notifyTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1002
    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1004
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1005
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfInverseLand:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_TypeImageViewTopOfLand:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->DRAGGING_TILT:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    if-ne v0, v1, :cond_3

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_PendingUIRotation:Z

    .line 840
    :goto_0
    return-void

    .line 837
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_PendingUIRotation:Z

    .line 839
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_UIRotation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_UIRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateMaxSlidingMoving(I)V
    .locals 2

    .prologue
    .line 1363
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 1364
    iput p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_MaxSlidingMoving:I

    .line 1365
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_MaxSlidingMoving:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1366
    iput p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_MaxSlidingMoving:I

    .line 1367
    :cond_1
    return-void
.end method
