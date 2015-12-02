.class public Lcom/htc/camera/splitcapture/SplitPhotoUI;
.super Lcom/htc/camera/splitcapture/ISplitPhotoController;
.source "SplitPhotoUI.java"


# instance fields
.field private m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

.field private m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

.field private m_EffectPanelUI:Lcom/htc/camera/effect/EffectPanelUI;

.field private m_EnterFlags:I

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashProvider:Lcom/htc/camera/FlashProvider;

.field private m_FlashProviderHandle:Lcom/htc/camera/Handle;

.field private m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_GLAnimationDstBounds:Landroid/graphics/RectF;

.field private m_GLAnimationSrcBounds:Landroid/graphics/RectF;

.field private m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

.field private m_GLAnimationStopWatch:Lcom/htc/camera/StopWatch;

.field private m_GLAnimationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

.field private m_GLBitmapBrushes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/gl/BitmapBrush;",
            ">;"
        }
    .end annotation
.end field

.field private m_GLBitmapQuadrangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/gl/Quadrangle;",
            ">;"
        }
    .end annotation
.end field

.field private m_GLPanelBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_GestureDetector:Landroid/view/GestureDetector;

.field private m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private m_IsPreviewRendererInitialized:Z

.field private m_IsSetupUI:Z

.field private m_LockRotateHandle:Lcom/htc/camera/Handle;

.field private m_LockSlidingCameraHandle:Lcom/htc/camera/Handle;

.field private m_PanelBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_PreviewBoundsID:I

.field private m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_PreviewHighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private final m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

.field private m_PreviewRendererHandle:Lcom/htc/camera/Handle;

.field private m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ProcessingDialogManager:Lcom/htc/camera/ab;

.field private m_RetakeCounter:I

.field private m_RetakeDialogHandle:Lcom/htc/camera/Handle;

.field private m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

.field private m_SlidingCameraUI:Lcom/htc/camera/ai;

.field private m_SplitPanelInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_SplitPhotoFinished:Z

.field private m_SplitPhotoMainContainer:Landroid/view/View;

.field private m_SplitPhotoPanel:Landroid/view/View;

.field private m_SwipeCountWhenReviewing:I

.field private m_SwipeCounter:I

.field private final m_TouchListener:Landroid/view/View$OnTouchListener;

.field private m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

.field private m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

.field private nextCameraType:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 400
    const-string v1, "Split Photo UI"

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/splitcapture/ISplitPhotoController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;ZII)V

    .line 255
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 257
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$1;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 330
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Stop:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 331
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationStopWatch:Lcom/htc/camera/StopWatch;

    .line 332
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->None:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapBrushes:Ljava/util/List;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLPanelBounds:Ljava/util/List;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    .line 341
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    .line 343
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 344
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewHighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 346
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    .line 356
    iput v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCounter:I

    .line 357
    iput v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeCounter:I

    .line 358
    iput-boolean v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoFinished:Z

    .line 359
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$2;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_TouchListener:Landroid/view/View$OnTouchListener;

    .line 374
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$3;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    .line 402
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "SplitPhotoUI.NextCameraType"

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    .line 404
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 405
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->enablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V

    .line 406
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/actionscreen/CommonActionScreen;)Lcom/htc/camera/actionscreen/CommonActionScreen;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/splitcapture/SplitPhotoUI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/splitcapture/SplitPhotoUI;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelLongPressed(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endNextImageProcessing()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/splitcapture/SplitPhotoUI;I)Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/splitcapture/SplitPhotoUI;I)V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->processFinalImage()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hideProcessingDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onNormalComponentsInitialized()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->prepareNextCapture()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/splitcapture/SplitPhotoUI;JJ)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->swipePanelInfo(JJ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hidePreviewCover()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onTakingPicture()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/StopWatch;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationStopWatch:Lcom/htc/camera/StopWatch;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockRotation()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockSlidingCameraUI()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->lockRotation()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->lockSlidingCameraUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onSwipingPanelWhenReviewing()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLPanelBounds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapBrushes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/htc/camera/splitcapture/SplitPhotoUI;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/htc/camera/splitcapture/SplitPhotoUI;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/splitcapture/SplitPhotoController;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->prepareNextCapture(Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/splitcapture/SplitPhotoUI;FF)Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->findPanelInfoFromLocation(FF)Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5008(Lcom/htc/camera/splitcapture/SplitPhotoUI;)I
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeCounter:I

    return v0
.end method

.method static synthetic access$5100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeDialogHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeDialogHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/IRotateDialogManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onDeinitializePreviewRenderer()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onDrawPreviewRenderer(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V

    return-void
.end method

.method private addPostViewJpegData(JLandroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 414
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 420
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPostViewJpegData() - Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_0
    return-void

    .line 424
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "addPostViewJpegData() - ID: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", bitmap: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "x"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->findPanelInfoFromID(J)Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    move-result-object v0

    .line 427
    if-nez v0, :cond_1

    .line 429
    long-to-int v2, p1

    .line 430
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v2, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "addPostViewJpegData() - Larger bounds index"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_0
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;-><init>(Landroid/graphics/RectF;Lcom/htc/camera/CameraType;JLandroid/graphics/Bitmap;)V

    .line 436
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    :cond_2
    iput-object p3, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private completeTakingPicture(Z)V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "completeTakingPicture() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 459
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 461
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeTakingPicture() - Invalid taking picture state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_2
    if-nez p1, :cond_3

    .line 466
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableActionScreen()V

    .line 468
    :cond_3
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->cancelPendingCapture()V

    .line 469
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 472
    if-nez p1, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    goto :goto_0
.end method

.method private endNextImageProcessing()V
    .locals 2

    .prologue
    .line 494
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 505
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "endNextImageProcessing()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void

    .line 499
    :pswitch_1
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 500
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setActionScreenButtonsEnabled(Z)V

    .line 501
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hideProcessingDialog()V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private endTakingSplitPhoto()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 514
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "endTakingSplitPhoto()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->TakingPicture:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v1, :cond_0

    .line 517
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->completeTakingPicture(Z)V

    .line 519
    :cond_0
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 525
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockRotation()V

    .line 527
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockSlidingCameraUI()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 531
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 533
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 535
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    .line 538
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 541
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoFinished:Z

    if-eqz v0, :cond_2

    .line 542
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    iget v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 543
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI;->EVENT_SPLIT_CAPTRUE_FINISHED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;

    invoke-direct {v2, v0}, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;-><init>([Ljava/lang/Integer;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 544
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SPLIT_CAPTRUE_FINISHED, Swipe:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Retake:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoFinished:Z

    .line 546
    iput v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCounter:I

    .line 547
    iput v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeCounter:I

    .line 549
    :cond_2
    return-void
.end method

.method private findNextCameraType()Lcom/htc/camera/CameraType;
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 723
    packed-switch v0, :pswitch_data_0

    .line 732
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    :goto_0
    return-object v0

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    goto :goto_0

    .line 729
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private findPanelInfoFromID(J)Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;
    .locals 4

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    .line 764
    iget-wide v2, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 768
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findPanelInfoFromLocation(FF)Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    .line 778
    iget-object v2, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findPreviewBoundsID()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 741
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 754
    :cond_0
    :goto_0
    return v0

    .line 744
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 745
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    iget-wide v5, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 748
    :goto_2
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 750
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    .line 754
    goto :goto_0
.end method

.method private hidePreviewCover()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 864
    return-void
.end method

.method private hideProcessingDialog()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 876
    :cond_0
    return-void
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1082
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 1090
    :cond_0
    :goto_0
    return v3

    .line 1084
    :cond_1
    const-class v0, Lcom/htc/camera/splitcapture/SplitPhotoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    .line 1085
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 1088
    goto :goto_0
.end method

.method private lockRotation()V
    .locals 3

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockRotateHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockRotateHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockRotateHandle:Lcom/htc/camera/Handle;

    .line 1104
    :cond_1
    return-void

    .line 1102
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    goto :goto_0
.end method

.method private lockSlidingCameraUI()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SlidingCameraUI:Lcom/htc/camera/ai;

    if-nez v0, :cond_0

    .line 1112
    const-class v0, Lcom/htc/camera/ai;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ai;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SlidingCameraUI:Lcom/htc/camera/ai;

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SlidingCameraUI:Lcom/htc/camera/ai;

    if-eqz v0, :cond_1

    .line 1116
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockSlidingCameraUI()V

    .line 1117
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SlidingCameraUI:Lcom/htc/camera/ai;

    invoke-virtual {v0}, Lcom/htc/camera/ai;->disableSliding()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockSlidingCameraHandle:Lcom/htc/camera/Handle;

    .line 1120
    :cond_1
    return-void
.end method

.method private onAbnormalReset()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onAbnormalReset()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 1130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->completeTakingPicture(Z)V

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hideProcessingDialog()V

    .line 1133
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V

    .line 1134
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    .line 1135
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V

    .line 1136
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V

    .line 1137
    return-void
.end method

.method private onAnimationDrawOnce()V
    .locals 2

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1146
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V

    .line 1148
    :cond_1
    return-void
.end method

.method private onAnimationPrepared()V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1158
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V

    .line 1160
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$14;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 1170
    :cond_0
    return-void
.end method

.method private onAnimationStopped()V
    .locals 2

    .prologue
    .line 1178
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1196
    :goto_0
    return-void

    .line 1181
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1183
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->startActionScreenTimer()V

    .line 1184
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingNextSwiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1188
    :cond_0
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1189
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hidePreviewCover()V

    .line 1190
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->prepareNextCapture()V

    goto :goto_0

    .line 1178
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 13

    .prologue
    .line 1203
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    if-nez v0, :cond_1

    .line 1204
    :cond_0
    const/4 v0, 0x0

    .line 1244
    :goto_0
    return v0

    .line 1207
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v4, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v4, v4, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    invoke-static {v0, v1}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/htc/camera/imaging/Size;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1208
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 1209
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1210
    iget-object v0, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v4, v0, 0x2

    .line 1211
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 1214
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1215
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 1217
    iget-object v5, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v5, v5, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v5, v4

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v6, v2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1218
    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    .line 1219
    int-to-float v7, v2

    add-float/2addr v7, v5

    .line 1220
    int-to-float v8, v3

    add-float/2addr v8, v6

    .line 1221
    iget-object v9, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    iget-object v9, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "onCalculatePreviewBounds() - Panel["

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "]: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v10, v11

    const/4 v5, 0x4

    const-string v11, ", "

    aput-object v11, v10, v5

    const/4 v5, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v10, v5

    const/4 v5, 0x6

    const-string v6, ", "

    aput-object v6, v10, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v10, v5

    const/16 v5, 0x8

    const-string v6, ", "

    aput-object v6, v10, v5

    const/16 v5, 0x9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v10, v5

    invoke-static {v9, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1225
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelBoundsChanged()V

    .line 1231
    iget-object v0, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1240
    :goto_2
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1242
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onCalculatePreviewBounds() - IsDefault: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->isDefaultPreviewSurface:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ", preview size: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    invoke-virtual {v4}, Lcom/htc/camera/imaging/Size;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, ", container size: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    invoke-virtual {v4}, Lcom/htc/camera/imaging/Size;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ", rotation: "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->rotation:Lcom/htc/camera/rotate/UIRotation;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ", result: "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ", ratio bounds: "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1244
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1236
    :cond_3
    iget-object v0, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v0, v4

    iget v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v2

    sub-int/2addr v0, v3

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method

.method private onCameraThreadRunning()V
    .locals 2

    .prologue
    .line 1252
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingForController:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v1, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadRunning() - Re-enter split photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_EnterFlags:I

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->enter(I)Z

    .line 1257
    :cond_0
    return-void
.end method

.method private onCaptureCanceled()V
    .locals 2

    .prologue
    .line 1264
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 1271
    :goto_0
    return-void

    .line 1268
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onSavingImageFailed()V

    goto :goto_0

    .line 1264
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private onDeinitializePreviewRenderer()V
    .locals 2

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_IsPreviewRendererInitialized:Z

    if-nez v0, :cond_0

    .line 1290
    :goto_0
    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapBrushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/BitmapBrush;

    .line 1284
    invoke-virtual {v0}, Lcom/htc/camera/gl/BitmapBrush;->release()V

    goto :goto_1

    .line 1285
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapBrushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1286
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1287
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLPanelBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_IsPreviewRendererInitialized:Z

    goto :goto_0
.end method

.method private onDrawPreviewRenderer(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1298
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_IsPreviewRendererInitialized:Z

    if-nez v0, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$SplitPhotoUI$AnimationState:[I

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1369
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    .line 1370
    iget-object v2, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v2}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    goto :goto_2

    .line 1310
    :pswitch_0
    const/16 v0, 0x2720

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1311
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Stop:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    goto :goto_1

    .line 1315
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 1316
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->ExchangeLeftRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1317
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 1318
    :cond_3
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Prepared:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 1319
    const/16 v0, 0x271f

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_1

    .line 1323
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationStopWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedNanoSeconds()J

    move-result-wide v0

    .line 1324
    const-wide/32 v2, 0x11e1a300

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 1326
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 1329
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Stop:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 1330
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    .line 1331
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    .line 1332
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationStopWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 1334
    const/16 v0, 0x2721

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto/16 :goto_1

    .line 1338
    :cond_4
    long-to-float v0, v0

    const v1, 0x4d8f0d18    # 3.0E8f

    div-float/2addr v0, v1

    .line 1339
    float-to-double v0, v0

    const-wide v2, 0x3fc22d0e56041893L    # 0.142

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v1, v0

    .line 1343
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    .line 1344
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float v3, v2, v0

    .line 1348
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/htc/camera/gl/Quadrangle;->setBounds(FFFF)V

    .line 1350
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->ExchangeLeftRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    invoke-virtual {v0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 1353
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float v2, v1, v0

    .line 1354
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/htc/camera/gl/Quadrangle;->setBounds(FFFF)V

    goto/16 :goto_1

    .line 1360
    :pswitch_3
    iget-boolean v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isPreviewCoverVisible:Z

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 1307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_IsPreviewRendererInitialized:Z

    if-eqz v0, :cond_0

    .line 1384
    :goto_0
    return-void

    .line 1383
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_IsPreviewRendererInitialized:Z

    goto :goto_0
.end method

.method private onNormalComponentsInitialized()V
    .locals 2

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setupUI()V

    .line 1431
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-nez v0, :cond_0

    .line 1433
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    .line 1434
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-nez v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onNormalComponentsInitialized() - Cannot find IRotateDialogManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_1

    .line 1439
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 1440
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onNormalComponentsInitialized() - Cannot find IUIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    if-nez v0, :cond_2

    .line 1445
    const-class v0, Lcom/htc/camera/ICameraMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICameraMenuUI;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    .line 1446
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    if-eqz v0, :cond_3

    .line 1448
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    iget-object v0, v0, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$16;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1478
    :cond_2
    :goto_0
    return-void

    .line 1476
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onNormalComponentsInitialized() - Cannot find ICameraMenuUI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPanelBoundsChanged()V
    .locals 4

    .prologue
    .line 1485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1487
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1492
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$17;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$17;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 1506
    :cond_1
    return-void
.end method

.method private onPanelInfosChanged()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1514
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1516
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    .line 1519
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v4, "onPanelInfosChanged() - ImageID: "

    iget-wide v6, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, " Rect: "

    iget-object v8, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v4, v6, v7, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1520
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1533
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1534
    iget v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    if-ne v1, v9, :cond_2

    .line 1536
    new-instance v1, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1537
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1541
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->None:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    move-object v5, v0

    move-object v4, v1

    .line 1568
    :goto_1
    iget-object v6, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Ljava/util/List;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-interface {v6, v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 1605
    :cond_1
    return-void

    .line 1543
    :cond_2
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Swiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    if-nez v3, :cond_3

    if-ne v1, v9, :cond_3

    .line 1545
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1546
    new-instance v5, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v5, v3, v4, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1547
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->MoveToRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    move-object v4, v1

    goto :goto_1

    .line 1549
    :cond_3
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Swiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    if-ne v3, v9, :cond_4

    if-ne v1, v9, :cond_4

    .line 1551
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1552
    new-instance v5, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v5, v3, v4, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1553
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->MoveToLeft:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    move-object v4, v1

    goto :goto_1

    .line 1555
    :cond_4
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Swiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v3, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 1557
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1558
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1559
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->ExchangeLeftRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    move-object v5, v1

    move-object v4, v0

    goto/16 :goto_1

    .line 1565
    :cond_5
    sget-object v3, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->None:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    move-object v4, v5

    goto/16 :goto_1
.end method

.method private onPanelLongPressed(I)V
    .locals 2

    .prologue
    .line 1612
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->EVENT_LONG_PRESS_TO_RETAKE:Lcom/htc/camera/base/EventKey;

    sget-object v1, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 1613
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showRetakePictureDialog()V

    .line 1614
    return-void
.end method

.method private onSavingImageComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1622
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onSavingImageComplete()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1625
    sget-object v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    sparse-switch v0, :sswitch_data_0

    .line 1651
    :goto_0
    return-void

    .line 1629
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->completeTakingPicture(Z)V

    .line 1630
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoFinished:Z

    .line 1631
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1633
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->reviewCapture()V

    .line 1643
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hideProcessingDialog()V

    goto :goto_0

    .line 1636
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V

    .line 1637
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    .line 1638
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V

    .line 1639
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V

    goto :goto_1

    .line 1648
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endNextImageProcessing()V

    goto :goto_0

    .line 1625
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private onSavingImageFailed()V
    .locals 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onSavingImageFailed()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 1681
    :goto_0
    return-void

    .line 1666
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->completeTakingPicture(Z)V

    .line 1668
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V

    .line 1669
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    .line 1670
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V

    .line 1671
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V

    .line 1673
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hideProcessingDialog()V

    goto :goto_0

    .line 1677
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endNextImageProcessing()V

    .line 1678
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V

    goto :goto_0

    .line 1661
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private onSwipingPanelWhenReviewing()V
    .locals 6

    .prologue
    .line 1688
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setActionScreenButtonsEnabled(Z)V

    .line 1689
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->stopActionScreenTimer()V

    .line 1690
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->swipePanelInfo(JJ)V

    .line 1693
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCountWhenReviewing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCountWhenReviewing:I

    .line 1694
    const/16 v2, 0x2729

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 1695
    return-void
.end method

.method private onTakingPicture()V
    .locals 2

    .prologue
    .line 1703
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1718
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->TakingPicture:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1719
    :goto_1
    return-void

    .line 1706
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onTakingPicture() - Capture not ready"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1711
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 1712
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->lockRotation()V

    .line 1713
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->lockSlidingCameraUI()V

    goto :goto_0

    .line 1703
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTakingPictureComplete()V
    .locals 3

    .prologue
    .line 1726
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1732
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTakingPictureComplete() - Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->completeTakingPicture(Z)V

    .line 1754
    :cond_0
    :goto_0
    return-void

    .line 1738
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "onTakingPictureComplete() - Handle:"

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1740
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1743
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->completeTakingPicture(Z)V

    .line 1745
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1747
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->prepareNextCapture()V

    goto :goto_0

    .line 1752
    :cond_1
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private prepareNextCapture()V
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->prepareNextCapture(Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;)V

    .line 1762
    return-void
.end method

.method private prepareNextCapture(Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prepareNextCapture() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printStackTrace(Ljava/lang/String;)V

    .line 1768
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 1778
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareNextCapture() - Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1774
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V

    .line 1783
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 1784
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->closeActionScreen()V

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->findNextCameraType()Lcom/htc/camera/CameraType;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1789
    const-wide/16 v0, -0x1

    .line 1790
    if-nez p1, :cond_2

    .line 1792
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->findPreviewBoundsID()I

    move-result v4

    iput v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    move-wide v4, v0

    .line 1809
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "prepareNextCapture() - CameraType: "

    aput-object v6, v1, v3

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const-string v7, ", CameraMode: "

    aput-object v7, v1, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-string v7, ", NextCameraType: "

    aput-object v7, v1, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v7}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, ", ID: "

    aput-object v7, v1, v6

    const/4 v6, 0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    const/16 v6, 0x8

    const-string v7, ", IsPreviewStarted: "

    aput-object v7, v1, v6

    const/16 v6, 0x9

    iget-object v7, v2, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v7}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1812
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1814
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v1, :cond_3

    .line 1816
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V

    .line 1817
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    .line 1846
    :goto_1
    return-void

    .line 1796
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v4, p1, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->cameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1797
    iget-wide v0, p1, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    .line 1800
    iget-object v4, p1, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    .line 1801
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    .line 1802
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1803
    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1804
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V

    .line 1806
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->findPreviewBoundsID()I

    move-result v4

    iput v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsID:I

    move-wide v4, v0

    goto/16 :goto_0

    .line 1822
    :cond_3
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Draw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    .line 1823
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1824
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hidePreviewCover()V

    .line 1829
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_5

    .line 1830
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 1833
    :cond_5
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    const/16 v2, 0x271a

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1836
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 1838
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockRotation()V

    .line 1839
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->unlockSlidingCameraUI()V

    .line 1840
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V

    .line 1841
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1844
    :cond_6
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1768
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private processFinalImage()V
    .locals 3

    .prologue
    .line 1853
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCountWhenReviewing:I

    .line 1854
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCountWhenReviewing:I

    .line 1857
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1859
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endNextImageProcessing()V

    .line 1868
    :goto_0
    return-void

    .line 1863
    :cond_0
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1865
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showProcessingDialog()V

    .line 1867
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    const/16 v1, 0x2729

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    goto :goto_0
.end method

.method private reviewCapture()V
    .locals 2

    .prologue
    .line 1875
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1877
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCountWhenReviewing:I

    .line 1878
    return-void
.end method

.method private setActionScreenButtonsEnabled(Z)V
    .locals 3

    .prologue
    .line 1885
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v1, :cond_3

    .line 1887
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-nez v0, :cond_0

    .line 1888
    const-class v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_1

    .line 1891
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "setActionScreenButtonsEnabled() - Enabled action screen: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1892
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setDeleteButtonEnabled(Z)V

    .line 1893
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    .line 1894
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setShareButtonEnabled(Z)V

    .line 1895
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setBackKeyEnabled(Z)V

    .line 1896
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0, p1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setRetakeKeyEnabled(Z)V

    .line 1898
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_EffectPanelUI:Lcom/htc/camera/effect/EffectPanelUI;

    if-nez v0, :cond_2

    .line 1899
    const-class v0, Lcom/htc/camera/effect/EffectPanelUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectPanelUI;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_EffectPanelUI:Lcom/htc/camera/effect/EffectPanelUI;

    .line 1900
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_EffectPanelUI:Lcom/htc/camera/effect/EffectPanelUI;

    if-eqz v0, :cond_3

    .line 1902
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "setActionScreenButtonsEnabled() - Enabled effect panel button: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1903
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_EffectPanelUI:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-virtual {v0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->setEffectButtonDisabled(Z)V

    .line 1906
    :cond_3
    return-void
.end method

.method private setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V
    .locals 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$19;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$19;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 1924
    :cond_0
    return-void
.end method

.method private setupUI()V
    .locals 2

    .prologue
    .line 1932
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    .line 1934
    const v0, 0x7f0e0109

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setBaseLayoutId(I)V

    .line 1935
    const v0, 0x7f030083

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setContentLayoutId(I)V

    .line 1938
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoMainContainer:Landroid/view/View;

    .line 1939
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoMainContainer:Landroid/view/View;

    const v1, 0x7f0e0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoPanel:Landroid/view/View;

    .line 1941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_IsSetupUI:Z

    .line 1949
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_TouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1950
    return-void

    .line 1945
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoMainContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPreviewCover()V
    .locals 3

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1958
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->showPreviewCover(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1959
    :cond_0
    return-void
.end method

.method private showProcessingDialog()V
    .locals 2

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-nez v0, :cond_0

    .line 1967
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    .line 1968
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-eqz v0, :cond_1

    .line 1970
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hideProcessingDialog()V

    .line 1971
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 1973
    :cond_1
    return-void
.end method

.method private showRetakePictureDialog()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1980
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    .line 1981
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-nez v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "showRetakePictureDialog() - No IRotateDialogManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    :goto_0
    return-void

    .line 1986
    :cond_0
    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1988
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "showRetakePictureDialog() - Already paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1991
    :cond_1
    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1993
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "showRetakePictureDialog() - Has dialog"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1997
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "showRetakePictureDialog()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 2001
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 2003
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    .line 2005
    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2006
    new-instance v3, Lcom/htc/camera/menu/MenuItem;

    const v6, 0x7f08041d

    invoke-direct {v3, v4, v6, v2}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 2009
    :goto_2
    invoke-virtual {v3, v1}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 2011
    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2012
    invoke-interface {v5, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2001
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2008
    :cond_3
    new-instance v3, Lcom/htc/camera/menu/MenuItem;

    const v6, 0x7f08041c

    invoke-direct {v3, v4, v6, v2}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    goto :goto_2

    .line 2014
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2018
    :cond_5
    new-instance v0, Lcom/htc/camera/menu/MenuListView;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/htc/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2019
    invoke-virtual {v0, v5}, Lcom/htc/camera/menu/MenuListView;->setItems(Ljava/util/List;)V

    .line 2020
    new-instance v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$20;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuListView;->setOnMenuItemClickedListener(Lcom/htc/camera/menu/e;)V

    .line 2042
    new-instance v1, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08041a

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    .line 2048
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$21;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$21;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    const/4 v3, 0x1

    sget v5, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a016a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int v4, v5, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeDialogHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0
.end method

.method private startActionScreenTimer()V
    .locals 2

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "startActionScreenTimer()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 2070
    :cond_0
    return-void
.end method

.method private stopActionScreenTimer()V
    .locals 2

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-nez v0, :cond_0

    .line 2078
    const-class v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_1

    .line 2081
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "stopActionScreenTimer()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->stopAutoCloseTimer()V

    .line 2084
    :cond_1
    return-void
.end method

.method private swipePanelInfo(JJ)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2091
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Swiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2092
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCounter:I

    .line 2094
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    .line 2096
    iget-wide v4, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_1

    .line 2098
    iput-wide p3, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    .line 2099
    new-instance v4, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    iget-wide v5, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    long-to-int v5, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->bounds:Landroid/graphics/RectF;

    goto :goto_0

    .line 2101
    :cond_1
    iget-wide v4, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    cmp-long v1, v4, p3

    if-nez v1, :cond_0

    .line 2103
    iput-wide p1, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    .line 2104
    new-instance v4, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PanelBounds:Ljava/util/List;

    iget-wide v5, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    long-to-int v5, v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->bounds:Landroid/graphics/RectF;

    goto :goto_0

    .line 2108
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V

    .line 2110
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    const/16 v2, 0x2724

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2111
    return-void
.end method

.method private unlockRotation()V
    .locals 2

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockRotateHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockRotateHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 2121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockRotateHandle:Lcom/htc/camera/Handle;

    .line 2123
    :cond_0
    return-void
.end method

.method private unlockSlidingCameraUI()V
    .locals 2

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockSlidingCameraHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SlidingCameraUI:Lcom/htc/camera/ai;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockSlidingCameraHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ai;->enableSliding(Lcom/htc/camera/Handle;)V

    .line 2133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_LockSlidingCameraHandle:Lcom/htc/camera/Handle;

    .line 2135
    :cond_0
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    invoke-virtual {v0}, Lcom/htc/camera/FlashProvider;->release()V

    .line 485
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->deinitializeOverride()V

    .line 486
    return-void
.end method

.method public enter(I)Z
    .locals 9

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 559
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingForController:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-eq v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Already entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    :goto_0
    return v8

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "enter("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 569
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v7

    .line 570
    iput v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SwipeCounter:I

    .line 571
    iput v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_RetakeCounter:I

    .line 573
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 576
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 577
    iput p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_EnterFlags:I

    .line 580
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->nextCameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v7, v0, v1, v5}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    .line 584
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_2

    .line 587
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V

    .line 590
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v8}, Lcom/htc/camera/ui/IOpenGLViewfinder;->force3DPreviewRendering(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 591
    const/16 v0, 0x2724

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->removeMessages(I)V

    .line 594
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$4;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-interface {v1, v2, v5}, Lcom/htc/camera/ui/IOpenGLViewfinder;->addPreviewBoundsCalculator(Lcom/htc/camera/ui/a;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 604
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v4, v0

    sub-float v1, v4, v0

    .line 605
    add-float v3, v1, v4

    .line 606
    new-instance v6, Lcom/htc/camera/CloseableHandleReference;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface/range {v0 .. v5}, Lcom/htc/camera/ui/IOpenGLViewfinder;->setPreviewSourceRect(FFFFI)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v6, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 609
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    .line 611
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->enableHighFrameRate()Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewHighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 615
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 617
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    const/16 v3, 0x2712

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 629
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    invoke-interface {v0, v1, v5}, Lcom/htc/camera/IFlashController;->setFlashProvider(Lcom/htc/camera/FlashProvider;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    .line 634
    :cond_3
    :pswitch_1
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 637
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v7, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onNormalComponentsInitialized()V

    goto/16 :goto_0

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Cannot link to controller, re-enter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingForController:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public exit(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 654
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Already exited"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitPhotoController;

    const/16 v2, 0x2713

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "exit()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 668
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 672
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7

    .line 673
    const/4 v0, 0x1

    .line 674
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v1}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 676
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_6

    .line 677
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 683
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 686
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 689
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 691
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V

    .line 692
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewHighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_PreviewHighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 699
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 701
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v4}, Lcom/htc/camera/IFlashController;->restoreFlashProvider(Lcom/htc/camera/Handle;I)V

    .line 702
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    .line 706
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->hidePreviewCover()V

    .line 709
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endNextImageProcessing()V

    .line 710
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V

    .line 713
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_IsSetupUI:Z

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPhotoMainContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 679
    :cond_6
    const/16 v1, 0x2724

    invoke-virtual {p0, p0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 790
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 853
    invoke-super {p0, p1}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->handleMessage(Landroid/os/Message;)V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 793
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 794
    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aget-object v0, v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->addPostViewJpegData(JLandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 798
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onTakingPictureComplete()V

    goto :goto_0

    .line 802
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onSavingImageComplete()V

    goto :goto_0

    .line 806
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onSavingImageFailed()V

    goto :goto_0

    .line 810
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onCaptureCanceled()V

    goto :goto_0

    .line 814
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onAnimationPrepared()V

    goto :goto_0

    .line 818
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onAnimationDrawOnce()V

    goto :goto_0

    .line 822
    :sswitch_7
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onAnimationStopped()V

    goto :goto_0

    .line 826
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 827
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "Set capture handle: "

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 828
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->TakingPicture:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-eq v0, v1, :cond_1

    .line 830
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "Current state is "

    sget-object v2, Lcom/htc/camera/splitcapture/SplitPhotoUI;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ", complete capture"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    invoke-direct {p0, v4}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->completeTakingPicture(Z)V

    goto :goto_0

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_SplitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->showProcessingDialog()V

    goto :goto_0

    .line 841
    :sswitch_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0, v4}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto :goto_0

    .line 845
    :sswitch_a
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->processFinalImage()V

    goto :goto_0

    .line 849
    :sswitch_b
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->onAbnormalReset()V

    goto :goto_0

    .line 790
    :sswitch_data_0
    .sparse-switch
        0x271a -> :sswitch_0
        0x271b -> :sswitch_1
        0x271c -> :sswitch_2
        0x271d -> :sswitch_3
        0x271e -> :sswitch_4
        0x271f -> :sswitch_5
        0x2720 -> :sswitch_6
        0x2721 -> :sswitch_7
        0x2722 -> :sswitch_8
        0x2724 -> :sswitch_9
        0x2729 -> :sswitch_a
        0x2742 -> :sswitch_b
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 884
    invoke-super {p0}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->initializeOverride()V

    .line 887
    const-class v0, Lcom/htc/camera/IViewFinder3D;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    .line 888
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot find IViewFinder3D"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_0
    const-class v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    .line 891
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-nez v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot find IOpenGLViewfinder"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_1
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 894
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_2

    .line 895
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 896
    :cond_2
    const-class v0, Lcom/htc/camera/ui/IThumbnailImageButton;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 899
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 900
    new-instance v1, Lcom/htc/camera/splitcapture/c;

    invoke-direct {v1, v0}, Lcom/htc/camera/splitcapture/c;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    .line 903
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$5;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 940
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$6;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 967
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$7;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 976
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$8;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 985
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$9;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$9;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1009
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$10;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1027
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$11;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1038
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_ACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$12;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1049
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1073
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 1074
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1075
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 3

    .prologue
    .line 1392
    instance-of v0, p1, Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1394
    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 1395
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProvider:Lcom/htc/camera/FlashProvider;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/IFlashController;->setFlashProvider(Lcom/htc/camera/FlashProvider;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_FlashProviderHandle:Lcom/htc/camera/Handle;

    .line 1419
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 1420
    return-void

    .line 1398
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/ui/IThumbnailImageButton;

    if-eqz v0, :cond_0

    .line 1400
    sget-object v0, Lcom/htc/camera/ui/IThumbnailImageButton;->EVENT_BUTTON_CLICKED:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$15;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$15;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/component/Component;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    goto :goto_0
.end method
