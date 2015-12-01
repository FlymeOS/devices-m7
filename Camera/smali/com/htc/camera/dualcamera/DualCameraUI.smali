.class final Lcom/htc/camera/dualcamera/DualCameraUI;
.super Lcom/htc/camera/dualcamera/IDualCameraController;
.source "DualCameraUI.java"


# instance fields
.field private final m_AccelerometerValuesChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<[F>;"
        }
    .end annotation
.end field

.field private m_BorderDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

.field private m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

.field private m_CaptureUIBlockManager:Lcom/htc/camera/w;

.field private m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

.field private m_CpuCountLockHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_CpuFrequencyLockHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_DefaultPreviewBound:Landroid/graphics/RectF;

.field private m_DrawingPreviewBorderBound:Landroid/graphics/RectF;

.field private m_DrawingPreviewBound:Landroid/graphics/RectF;

.field private m_DualCamSecondaryView:Landroid/view/View;

.field private m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_HasReviewBitmap:Z

.field private volatile m_IsPreviewAdapterAvailable:Z

.field private m_IsPreviewRendererInitialized:Z

.field private m_IsSetupUI:Z

.field private m_IsShowPreviewResizeUI:Z

.field private m_IsWaitingForFirstPreviewFrame:Z

.field private final m_LastAccelerometerValues:[F

.field private m_LastPreviewFrameTime:J

.field private final m_MaxPreviewSize:Lcom/htc/camera/imaging/Size;

.field private final m_MinPreviewSize:Lcom/htc/camera/imaging/Size;

.field private m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

.field private final m_PreviewAdapterSyncRoot:Ljava/lang/Object;

.field private m_PreviewBGBrush:Lcom/htc/camera/gl/DrawableBrush;

.field private m_PreviewBGQuadrangle:Lcom/htc/camera/gl/Quadrangle;

.field private m_PreviewBorderBound:Landroid/graphics/RectF;

.field private m_PreviewBorderOffset:I

.field private m_PreviewBorderWidth:I

.field private m_PreviewBound:Landroid/graphics/RectF;

.field private m_PreviewBoundLock:Ljava/lang/Object;

.field private m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private final m_PreviewBoundsCalculator:Lcom/htc/camera/ui/a;

.field private m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

.field private m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_PreviewMargin:I

.field private m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

.field private final m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

.field private m_PreviewRendererHandle:Lcom/htc/camera/Handle;

.field private m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_PreviewResizeBorderWidth:I

.field private m_PreviewResizeIconOffset:I

.field private m_PreviewResizeIconWidth:I

.field private m_PreviewResizedBorderBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewResizedBorderBrush:Lcom/htc/camera/gl/SolidColorBrush;

.field private m_PreviewResizedBorderQuadrangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/gl/Quadrangle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewResizedBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewResizedBrush:Lcom/htc/camera/gl/DrawableBrush;

.field private m_PreviewResizedQuadrangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/gl/Quadrangle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewResizedTouchBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewSrcRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_PreviewSurfaceBound:Landroid/graphics/Rect;

.field private m_PreviewTouchBound:Landroid/graphics/RectF;

.field private m_PreviewTouchOffset:I

.field private m_PreviewTouchResizeWidth:I

.field private m_PreviewTouchWidth:I

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ProcessingDialogManager:Lcom/htc/camera/ab;

.field private m_ReminderToastShown:Z

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_StartPreviewDrawingTime:J

.field private m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;

.field private m_ToastManager:Lcom/htc/camera/ak;

.field private final m_TouchListener:Landroid/view/View$OnTouchListener;

.field private m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

.field private m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 733
    const-string v0, "Dual-Camera UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/dualcamera/IDualCameraController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 105
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$1;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_AccelerometerValuesChangedCallback:Lcom/htc/camera/property/c;

    .line 127
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CpuCountLockHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 128
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CpuFrequencyLockHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBorderBound:Landroid/graphics/RectF;

    .line 133
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedQuadrangles:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderQuadrangles:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_MinPreviewSize:Lcom/htc/camera/imaging/Size;

    .line 153
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_MaxPreviewSize:Lcom/htc/camera/imaging/Size;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapterSyncRoot:Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$2;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundsCalculator:Lcom/htc/camera/ui/a;

    .line 165
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundLock:Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 171
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 172
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSrcRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    .line 197
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraUI$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$3;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    .line 227
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraUI$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_TouchListener:Landroid/view/View$OnTouchListener;

    .line 734
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/dualcamera/DualCameraUI;[FZ)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraUI;->copyAccelerometerValues([FZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/dualcamera/DualCameraController;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_MaxPreviewSize:Lcom/htc/camera/imaging/Size;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_MinPreviewSize:Lcom/htc/camera/imaging/Size;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->checkOutOfPreviewSurface(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/dualcamera/DualCameraUI;)[F
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->updatePreviewBound(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/dualcamera/DualCameraUI;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->showPreviewResizeUI(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/camera/dualcamera/DualCameraUI;)Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->linkToController()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/camera/dualcamera/DualCameraUI;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_HasReviewBitmap:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/htc/camera/dualcamera/DualCameraUI;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_HasReviewBitmap:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraUI;->onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/dualcamera/DualCameraUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/camera/dualcamera/DualCameraUI;I)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->unlockCpu()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->lockOrUnlockCpu()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->onDeinitializePreviewRenderer()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->resetPreviewRenderingStates()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->resetPreviewBound()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->onPreviewAdapterDestroyed()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->onPreviewAdapterCreated(Lcom/htc/camera/CameraPreviewAdapter;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSurfaceBound:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/gl/CameraPreviewBrush;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/htc/camera/dualcamera/DualCameraUI;J)J
    .locals 0

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_StartPreviewDrawingTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->onDrawPreview(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    return-void
.end method

.method static synthetic access$5002(Lcom/htc/camera/dualcamera/DualCameraUI;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsWaitingForFirstPreviewFrame:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->setupUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkOutOfPreviewSurface(Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 742
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewMargin:I

    add-int/2addr v1, v2

    .line 743
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewMargin:I

    add-int/2addr v2, v3

    .line 744
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewMargin:I

    sub-int/2addr v3, v4

    .line 745
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewMargin:I

    sub-int/2addr v0, v4

    .line 747
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v5, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v4, v5}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 748
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    .line 751
    if-nez v4, :cond_1

    .line 753
    iget v5, p1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 754
    int-to-float v1, v1

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 755
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    int-to-float v5, v3

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 756
    int-to-float v1, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 770
    :cond_1
    if-nez v4, :cond_3

    .line 772
    iget v1, p1, Landroid/graphics/RectF;->top:F

    int-to-float v3, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 773
    iget v1, p1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 774
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 775
    iget v1, p1, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 787
    :cond_3
    return-void
.end method

.method private copyAccelerometerValues([FZ)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 794
    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 796
    if-eqz p2, :cond_0

    aget v0, p1, v3

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    aget v0, p1, v4

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    aget v0, p1, v5

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F

    aget v1, p1, v3

    aput v1, v0, v3

    .line 799
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F

    aget v1, p1, v4

    aput v1, v0, v4

    .line 800
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F

    aget v1, p1, v5

    aput v1, v0, v5

    .line 809
    :cond_1
    :goto_0
    return-void

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F

    aput v2, v0, v3

    .line 806
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F

    aput v2, v0, v4

    .line 807
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F

    aput v2, v0, v5

    goto :goto_0
.end method

.method private handleImperfectHumanJointResult(I)V
    .locals 3

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImperfectHumanJointResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    packed-switch p1, :pswitch_data_0

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1145
    :pswitch_0
    const v0, 0x7f08043c

    move v1, v0

    .line 1167
    :goto_1
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 1168
    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1148
    :pswitch_1
    const v0, 0x7f08043e

    move v1, v0

    .line 1149
    goto :goto_1

    .line 1151
    :pswitch_2
    const v0, 0x7f080439

    move v1, v0

    .line 1152
    goto :goto_1

    .line 1154
    :pswitch_3
    const v0, 0x7f08043b

    move v1, v0

    .line 1155
    goto :goto_1

    .line 1157
    :pswitch_4
    const v0, 0x7f08043d

    move v1, v0

    .line 1158
    goto :goto_1

    .line 1160
    :pswitch_5
    const v0, 0x7f08043a

    move v1, v0

    .line 1161
    goto :goto_1

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private linkToController()Z
    .locals 1

    .prologue
    .line 1459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->linkToController(Z)Z

    move-result v0

    return v0
.end method

.method private linkToController(Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 1463
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    if-eqz v0, :cond_0

    move v0, v2

    .line 1485
    :goto_0
    return v0

    .line 1467
    :cond_0
    if-eqz p1, :cond_2

    .line 1469
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    .line 1470
    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->start()V

    move-object v1, v0

    .line 1476
    :cond_1
    :goto_1
    const-class v0, Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    .line 1477
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    if-eqz v0, :cond_3

    .line 1479
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraController;->link(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    .line 1480
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z

    move v0, v2

    .line 1481
    goto :goto_0

    .line 1473
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 1483
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 1485
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockOrUnlockCpu()V
    .locals 0

    .prologue
    .line 1519
    return-void
.end method

.method private onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1527
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1538
    :goto_0
    return v0

    .line 1531
    :cond_0
    new-instance v1, Lcom/htc/camera/imaging/Size;

    iget-object v2, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 1534
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v4, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v4, v4, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v1}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/htc/camera/imaging/Size;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1535
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1538
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onCompleteCapture(Lcom/htc/camera/CaptureHandle;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1546
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v2, "onCompleteCapture() - Handle : "

    invoke-static {v0, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1549
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 1552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 1556
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1558
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1559
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getFullScreenCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e0181

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 1560
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1562
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1563
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_HasReviewBitmap:Z

    .line 1581
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1582
    return-void

    :cond_2
    move v0, v1

    .line 1563
    goto :goto_0

    .line 1567
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v2, "onCompleteCapture() - No review image view"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    if-eqz p2, :cond_4

    .line 1569
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1570
    :cond_4
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_HasReviewBitmap:Z

    goto :goto_1

    .line 1575
    :cond_5
    if-eqz p2, :cond_6

    .line 1576
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1577
    :cond_6
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_HasReviewBitmap:Z

    goto :goto_1
.end method

.method private onDeinitializePreviewRenderer()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1590
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsPreviewRendererInitialized:Z

    if-nez v0, :cond_0

    .line 1651
    :goto_0
    return-void

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onDeinitializePreviewRenderer()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    if-eqz v0, :cond_1

    .line 1599
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapterSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 1601
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsPreviewAdapterAvailable:Z

    .line 1602
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->release()V

    .line 1603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 1604
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraUI$16;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$16;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1617
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    if-eqz v0, :cond_2

    .line 1619
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/CameraPreviewBrush;->release()V

    .line 1620
    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    .line 1622
    :cond_2
    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 1624
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGBrush:Lcom/htc/camera/gl/DrawableBrush;

    if-eqz v0, :cond_3

    .line 1626
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGBrush:Lcom/htc/camera/gl/DrawableBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/DrawableBrush;->release()V

    .line 1627
    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGBrush:Lcom/htc/camera/gl/DrawableBrush;

    .line 1629
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 1631
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBrush:Lcom/htc/camera/gl/DrawableBrush;

    if-eqz v0, :cond_4

    .line 1633
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBrush:Lcom/htc/camera/gl/DrawableBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/DrawableBrush;->release()V

    .line 1634
    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBrush:Lcom/htc/camera/gl/DrawableBrush;

    .line 1636
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedQuadrangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1638
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBrush:Lcom/htc/camera/gl/SolidColorBrush;

    if-eqz v0, :cond_5

    .line 1640
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/SolidColorBrush;->release()V

    .line 1641
    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBrush:Lcom/htc/camera/gl/SolidColorBrush;

    .line 1643
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderQuadrangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1646
    iput-boolean v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsPreviewRendererInitialized:Z

    .line 1647
    iput-wide v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastPreviewFrameTime:J

    .line 1648
    iput-wide v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_StartPreviewDrawingTime:J

    .line 1649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsWaitingForFirstPreviewFrame:Z

    goto :goto_0

    .line 1604
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onDrawPreview(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 12

    .prologue
    const/16 v7, 0x2756

    const/4 v11, 0x4

    const-wide/16 v9, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1659
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1662
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsPreviewRendererInitialized:Z

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->updatePreviewFrame()V

    .line 1675
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsWaitingForFirstPreviewFrame:Z

    if-nez v0, :cond_5

    .line 1701
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->getLastPreviewFrameTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastPreviewFrameTime:J

    .line 1711
    if-nez v1, :cond_2

    .line 1713
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_StartPreviewDrawingTime:J

    sub-long/2addr v0, v3

    const-wide v3, 0x12a05f200L

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onDrawPreview() - Timeout, draw preview directly"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p0, p0, v7}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1719
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1720
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsWaitingForFirstPreviewFrame:Z

    .line 1726
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1727
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1728
    iget-boolean v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isDefaultPreviewSurface:Z

    if-nez v1, :cond_3

    .line 1730
    if-eqz v0, :cond_a

    .line 1731
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1735
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBorderBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1736
    iget-boolean v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isDefaultPreviewSurface:Z

    if-nez v1, :cond_4

    .line 1738
    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSurfaceBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v3, v5

    .line 1739
    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v5, v1

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSurfaceBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v7, v1

    div-double/2addr v5, v7

    .line 1741
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    iget v7, v1, Landroid/graphics/RectF;->left:F

    float-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-float v7, v7

    iput v7, v1, Landroid/graphics/RectF;->left:F

    .line 1742
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    iget v7, v1, Landroid/graphics/RectF;->top:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    double-to-float v7, v7

    iput v7, v1, Landroid/graphics/RectF;->top:F

    .line 1743
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    iget v7, v1, Landroid/graphics/RectF;->right:F

    float-to-double v7, v7

    mul-double/2addr v3, v7

    double-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 1744
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 1746
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBorderBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1747
    if-nez v0, :cond_4

    .line 1748
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBorderBound:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 1752
    :cond_4
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1754
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 1755
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBorderBound:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 1756
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGBrush:Lcom/htc/camera/gl/DrawableBrush;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBorderBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBorderBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/gl/DrawableBrush;->setSize(II)V

    move v3, v2

    .line 1758
    :goto_3
    if-ge v3, v11, :cond_b

    .line 1760
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedQuadrangles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 1761
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderQuadrangles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 1677
    :cond_5
    iget-wide v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastPreviewFrameTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_9

    .line 1680
    iget-wide v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastPreviewFrameTime:J

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->getLastPreviewFrameTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7

    move v0, v1

    .line 1689
    :goto_4
    iget-boolean v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsWaitingForFirstPreviewFrame:Z

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 1691
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v4, "onDrawPreview() - First secondary preview frame received"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    invoke-virtual {p0, p0, v7}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1693
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v3}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1695
    :cond_6
    if-nez v0, :cond_8

    :goto_5
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsWaitingForFirstPreviewFrame:Z

    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 1680
    goto :goto_4

    :cond_8
    move v1, v2

    .line 1695
    goto :goto_5

    :cond_9
    move v1, v2

    .line 1698
    goto/16 :goto_1

    .line 1733
    :cond_a
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DrawingPreviewBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSurfaceBound:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSurfaceBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_2

    .line 1763
    :cond_b
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1766
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGBrush:Lcom/htc/camera/gl/DrawableBrush;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v1, v1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v3

    iget v3, v3, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/DrawableBrush;->setOrientation(I)V

    .line 1769
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    .line 1770
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1772
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    .line 1773
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsShowPreviewResizeUI:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isDefaultPreviewSurface:Z

    if-eqz v0, :cond_c

    .line 1775
    :goto_6
    if-ge v2, v11, :cond_c

    .line 1777
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderQuadrangles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    .line 1778
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedQuadrangles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    .line 1775
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1763
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1784
    :cond_c
    iget-boolean v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isDefaultPreviewSurface:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1787
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IOpenGLViewfinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewAdapter;

    .line 1788
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->previewAdapter:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewAdapter;->getLastPreviewFrameTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 1789
    if-eqz v0, :cond_e

    .line 1791
    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->getLastPreviewFrameTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    .line 1792
    cmp-long v0, v2, v9

    if-gtz v0, :cond_d

    cmp-long v0, v4, v9

    if-lez v0, :cond_0

    .line 1793
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "DrawTime - PreviewTime(Primary) = "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms, DrawTime - PreviewTime(Secondary) = "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, " ms"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1797
    :cond_e
    cmp-long v0, v4, v9

    if-lez v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "DrawTime - PreviewTime(Secondary) = "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private onFirstSecondaryPreviewFrameReceived()V
    .locals 2

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onFirstSecondaryPreviewFrameReceived()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1810
    return-void
.end method

.method private onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1818
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsPreviewRendererInitialized:Z

    if-eqz v0, :cond_0

    .line 1899
    :goto_0
    return-void

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onInitializePreviewRenderer()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    if-nez v0, :cond_2

    .line 1827
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapterSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 1829
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsPreviewAdapterAvailable:Z

    .line 1830
    new-instance v0, Lcom/htc/camera/CameraPreviewAdapter;

    invoke-direct {v0}, Lcom/htc/camera/CameraPreviewAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 1831
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1833
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 1834
    new-instance v1, Lcom/htc/camera/dualcamera/DualCameraUI$17;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI$17;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CameraPreviewAdapter;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1847
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastPreviewFrameTime:J

    .line 1848
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_StartPreviewDrawingTime:J

    .line 1849
    iput-boolean v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsWaitingForFirstPreviewFrame:Z

    .line 1853
    new-instance v0, Lcom/htc/camera/gl/CameraPreviewBrush;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-direct {v0, v1}, Lcom/htc/camera/gl/CameraPreviewBrush;-><init>(Lcom/htc/camera/CameraPreviewAdapter;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    .line 1859
    new-instance v0, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v0}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 1860
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 1862
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/gl/CameraPreviewBrush;->setSourceRect(FFFF)V

    .line 1865
    :cond_1
    new-instance v0, Lcom/htc/camera/gl/DrawableBrush;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f020048

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/gl/DrawableBrush;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGBrush:Lcom/htc/camera/gl/DrawableBrush;

    .line 1866
    new-instance v0, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v0}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 1867
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBGBrush:Lcom/htc/camera/gl/DrawableBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 1870
    new-instance v0, Lcom/htc/camera/gl/DrawableBrush;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_BorderDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-direct {v0, v1}, Lcom/htc/camera/gl/DrawableBrush;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBrush:Lcom/htc/camera/gl/DrawableBrush;

    .line 1871
    new-instance v0, Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getCategoryColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/camera/gl/SolidColorBrush;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBrush:Lcom/htc/camera/gl/SolidColorBrush;

    .line 1872
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 1874
    new-instance v1, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v1}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    .line 1875
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBrush:Lcom/htc/camera/gl/DrawableBrush;

    invoke-virtual {v1, v2}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 1876
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedQuadrangles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1878
    new-instance v1, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v1}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    .line 1879
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v1, v2}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 1880
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderQuadrangles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1831
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1844
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->bindToTexture()V

    goto/16 :goto_1

    .line 1884
    :cond_3
    iput-boolean v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsPreviewRendererInitialized:Z

    goto/16 :goto_0
.end method

.method private onPreviewAdapterCreated(Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1941
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewAdapterCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    const/16 v2, 0x2714

    move-object v0, p0

    move v4, v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1948
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->previewAdapter:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1949
    return-void

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewAdapterCreated() - Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPreviewAdapterDestroyed()V
    .locals 3

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewAdapterDestroyed()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    const/16 v1, 0x2715

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1960
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->previewAdapter:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1961
    return-void
.end method

.method private onProcessingFinalImage()V
    .locals 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onProcessingFinalImage()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 2140
    :goto_0
    return-void

    .line 2139
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "onProcessingFinalImage() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSecondaryPreviewStarted()V
    .locals 2

    .prologue
    .line 2147
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReminderToastShown:Z

    if-eqz v0, :cond_1

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2151
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ToastManager:Lcom/htc/camera/ak;

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 2154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReminderToastShown:Z

    goto :goto_0
.end method

.method private resetPreviewBound()V
    .locals 7

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-nez v0, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "resetPreviewBound() - Cannot find IOpenGLViewfinder"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    :goto_0
    return-void

    .line 1989
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/Rect;

    .line 1990
    new-instance v5, Lcom/htc/camera/Reference;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/htc/camera/Reference;-><init>(Ljava/lang/Object;)V

    .line 1991
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DefaultPreviewBound:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 1992
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DefaultPreviewBound:Landroid/graphics/RectF;

    .line 1993
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DefaultPreviewBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_MinPreviewSize:Lcom/htc/camera/imaging/Size;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_MaxPreviewSize:Lcom/htc/camera/imaging/Size;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDefaultSecondaryPreviewBounds(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/Reference;)V

    .line 1994
    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewMargin:I

    .line 2109
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/dualcamera/DualCameraUI$19;

    invoke-direct {v1, p0, v6}, Lcom/htc/camera/dualcamera/DualCameraUI$19;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 2126
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DefaultPreviewBound:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->updatePreviewBound(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private resetPreviewRenderingStates()V
    .locals 2

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/dualcamera/DualCameraUI$20;

    invoke-direct {v1, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$20;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 2177
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->showPreviewCover()V

    .line 2178
    return-void
.end method

.method private setupUI()V
    .locals 4

    .prologue
    const v3, 0x7f02014b

    .line 2287
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsSetupUI:Z

    if-nez v0, :cond_2

    .line 2290
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 2291
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2293
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v2, "setupUI() - Capture UI is not loaded yet, setup later"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$21;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$21;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 2339
    :cond_0
    :goto_0
    return-void

    .line 2307
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getFullScreenCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e010a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 2310
    const v2, 0x7f0e0182

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DualCamSecondaryView:Landroid/view/View;

    .line 2312
    const v0, 0x7f0a044a

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderWidth:I

    .line 2313
    iget v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderWidth:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderOffset:I

    .line 2314
    const v0, 0x7f0a044b

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchWidth:I

    .line 2315
    iget v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderOffset:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchWidth:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchOffset:I

    .line 2316
    const v0, 0x7f0a044c

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchResizeWidth:I

    .line 2317
    const v0, 0x7f0a044e

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    .line 2318
    invoke-virtual {p0, v3}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    .line 2319
    const v0, 0x7f0a044d

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    .line 2322
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2323
    new-instance v2, Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-direct {v2, v1, v0}, Lcom/htc/camera/widget/ColorMultiplyDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_BorderDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    .line 2325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsSetupUI:Z

    .line 2331
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DualCamSecondaryView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_TouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2334
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->resetPreviewBound()V

    .line 2337
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 2328
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "setupUI() - UI already setup"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showPreviewCover()V
    .locals 3

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2351
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->showPreviewCover(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 2353
    :cond_0
    return-void
.end method

.method private showPreviewResizeUI(Z)V
    .locals 0

    .prologue
    .line 2360
    iput-boolean p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsShowPreviewResizeUI:Z

    .line 2361
    return-void
.end method

.method private unlockCpu()V
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CpuCountLockHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CpuCountLockHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 2427
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CpuFrequencyLockHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CpuFrequencyLockHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 2428
    return-void
.end method

.method private updatePreviewBound(Landroid/graphics/RectF;)V
    .locals 9

    .prologue
    .line 2435
    if-nez p1, :cond_0

    .line 2548
    :goto_0
    return-void

    .line 2438
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2440
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 2442
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;

    .line 2443
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    .line 2444
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2445
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 2446
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    .line 2447
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 2450
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2451
    iget v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchResizeWidth:I

    .line 2452
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    int-to-float v8, v0

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2453
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    int-to-float v8, v0

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2454
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2455
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    add-float/2addr v0, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v0, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2458
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2459
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2463
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2467
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2471
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2477
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2478
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2482
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v0, v7

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2486
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2490
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v0, v7

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2547
    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2497
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2498
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2499
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2500
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 2501
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2502
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 2505
    iget v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchResizeWidth:I

    .line 2506
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    int-to-float v7, v1

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2507
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2508
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2509
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    add-float/2addr v1, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v1, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2512
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2516
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2520
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2524
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderBound:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeIconOffset:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2530
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v1

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2534
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v1, v7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2538
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v1

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2542
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBorderBounds:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v5, 0x3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedBounds:Ljava/util/List;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizeBorderWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v1, v7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public enter(I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 818
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Dual-camera mode is already entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v2, "enter("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 827
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 828
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_5

    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v1

    .line 829
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v2, v4}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    :goto_2
    sget-object v4, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v3, v2, v4, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    .line 834
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_2

    .line 835
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v2, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->force3DPreviewRendering(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 836
    :cond_2
    const/16 v0, 0x2742

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->removeMessages(I)V

    .line 840
    invoke-direct {p0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->linkToController(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 842
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0, v5}, Lcom/htc/camera/dualcamera/DualCameraController;->enter(I)V

    .line 843
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 853
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->lockOrUnlockCpu()V

    .line 856
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_3

    .line 857
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundsCalculator:Lcom/htc/camera/ui/a;

    invoke-interface {v1, v2, v5}, Lcom/htc/camera/ui/IOpenGLViewfinder;->addPreviewBoundsCalculator(Lcom/htc/camera/ui/a;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 860
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_4

    .line 861
    new-instance v6, Lcom/htc/camera/CloseableHandleReference;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface/range {v0 .. v5}, Lcom/htc/camera/ui/IOpenGLViewfinder;->setPreviewSourceRect(FFFFI)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSrcRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 864
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isLaunching:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 865
    const/16 v0, 0x274c

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 870
    :goto_3
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->resetPreviewRenderingStates()V

    .line 873
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_AccelerometerValuesChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    goto/16 :goto_0

    :cond_5
    move v0, v5

    .line 828
    goto/16 :goto_1

    .line 829
    :cond_6
    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    goto/16 :goto_2

    .line 847
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto/16 :goto_0

    .line 867
    :cond_8
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->setupUI()V

    goto :goto_3
.end method

.method public exit(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 883
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v2, "exit("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 890
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_8

    .line 891
    const/4 v0, 0x1

    .line 892
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v2}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    const/high16 v2, 0x10000

    and-int/2addr v2, p1

    if-nez v2, :cond_6

    .line 895
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 901
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundsCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 904
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSrcRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSrcRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 907
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$5;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-interface {v0, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 920
    :cond_2
    const/16 v0, 0x274c

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->removeMessages(I)V

    .line 923
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 924
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->exit(I)V

    .line 929
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 931
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v2}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 932
    iput-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    .line 934
    :cond_3
    const/16 v0, 0x2715

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->removeMessages(I)V

    .line 937
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 938
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReminderToastShown:Z

    .line 941
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 943
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V

    .line 944
    iput-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    .line 948
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 951
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DualCamSecondaryView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 952
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_DualCamSecondaryView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 955
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_AccelerometerValuesChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 958
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->unlockCpu()V

    goto/16 :goto_0

    .line 897
    :cond_6
    const/16 v2, 0x2742

    invoke-virtual {p0, p0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto/16 :goto_2

    .line 926
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v2, "exit() - Cannot link to controller"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method final getDefaultSecondaryPreviewBounds(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/Reference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;",
            "Landroid/graphics/RectF;",
            "Lcom/htc/camera/imaging/Size;",
            "Lcom/htc/camera/imaging/Size;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-nez v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultSecondaryPreviewBounds() - No IViewfinder interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 981
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    .line 982
    new-instance v3, Lcom/htc/camera/imaging/Size;

    invoke-direct {v3}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 983
    const/4 v1, 0x0

    .line 984
    sget-object v4, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    invoke-virtual {p1}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1052
    :goto_2
    sget-object v4, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    invoke-virtual {p1}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 1102
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    .line 1103
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, v3, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 1104
    int-to-float v4, v2

    int-to-float v5, v0

    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p2, v4, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1110
    :goto_3
    if-eqz p5, :cond_0

    .line 1111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    goto :goto_0

    .line 978
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    sget-object v2, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    goto :goto_1

    .line 987
    :pswitch_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 988
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 989
    if-eqz p3, :cond_3

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3e666666    # 0.225f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Lcom/htc/camera/imaging/Size;->width:I

    .line 992
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3e666666    # 0.225f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Lcom/htc/camera/imaging/Size;->height:I

    .line 994
    :cond_3
    if-eqz p4, :cond_4

    .line 996
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3ec00000    # 0.375f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p4, Lcom/htc/camera/imaging/Size;->width:I

    .line 997
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3ec00000    # 0.375f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p4, Lcom/htc/camera/imaging/Size;->height:I

    .line 999
    :cond_4
    const v1, 0x7f0a0449

    invoke-virtual {p0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDimension(I)I

    move-result v1

    iget v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBorderWidth:I

    add-int/2addr v1, v4

    .line 1000
    goto/16 :goto_2

    .line 1002
    :pswitch_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 1003
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 1004
    if-eqz p3, :cond_5

    .line 1006
    iget v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    iput v1, p3, Lcom/htc/camera/imaging/Size;->width:I

    .line 1007
    iget v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    iput v1, p3, Lcom/htc/camera/imaging/Size;->height:I

    .line 1009
    :cond_5
    if-eqz p4, :cond_6

    .line 1011
    iget v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    iput v1, p4, Lcom/htc/camera/imaging/Size;->width:I

    .line 1012
    iget v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    iput v1, p4, Lcom/htc/camera/imaging/Size;->height:I

    .line 1014
    :cond_6
    const/4 v1, 0x0

    .line 1015
    goto/16 :goto_2

    .line 1017
    :pswitch_2
    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1019
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 1020
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 1021
    if-eqz p3, :cond_7

    .line 1023
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3e666666    # 0.225f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Lcom/htc/camera/imaging/Size;->width:I

    .line 1024
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3e666666    # 0.225f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Lcom/htc/camera/imaging/Size;->height:I

    .line 1037
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_HUMAN_JOINT_MASK_TYPE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v4}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    if-eq v1, v4, :cond_8

    .line 1039
    iget v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 1040
    iget v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 1042
    :cond_8
    if-eqz p4, :cond_9

    .line 1044
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p4, Lcom/htc/camera/imaging/Size;->width:I

    .line 1045
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p4, Lcom/htc/camera/imaging/Size;->height:I

    .line 1047
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1029
    :cond_a
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 1030
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 1031
    if-eqz p3, :cond_7

    .line 1033
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Lcom/htc/camera/imaging/Size;->width:I

    .line 1034
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Lcom/htc/camera/imaging/Size;->height:I

    goto :goto_4

    .line 1056
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1057
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    neg-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_3

    .line 1062
    :pswitch_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v6, v6

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v3, v3

    invoke-virtual {p2, v4, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1063
    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1065
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1066
    sget-object v4, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    if-ne v2, v4, :cond_b

    .line 1068
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p2, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto/16 :goto_3

    .line 1075
    :cond_b
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto/16 :goto_3

    .line 1083
    :cond_c
    sget-object v3, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    if-ne v2, v3, :cond_d

    .line 1085
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p2, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto/16 :goto_3

    .line 1092
    :cond_d
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto/16 :goto_3

    .line 984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1052
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final getPreviewAdapterSyncRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewAdapterSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPreviewBound()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBoundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;

    monitor-exit v1

    return-object v0

    .line 1130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1178
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1229
    invoke-super {p0, p1}, Lcom/htc/camera/dualcamera/IDualCameraController;->handleMessage(Landroid/os/Message;)V

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1181
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->onSecondaryPreviewStarted()V

    goto :goto_0

    .line 1185
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1189
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1194
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->onFirstSecondaryPreviewFrameReceived()V

    goto :goto_0

    .line 1198
    :sswitch_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1206
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->onProcessingFinalImage()V

    goto :goto_0

    .line 1211
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1212
    aget-object v1, v0, v2

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->onCompleteCapture(Lcom/htc/camera/CaptureHandle;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1217
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->handleImperfectHumanJointResult(I)V

    goto :goto_0

    .line 1221
    :sswitch_7
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto :goto_0

    .line 1225
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->setupUI()V

    goto :goto_0

    .line 1178
    nop

    :sswitch_data_0
    .sparse-switch
        0x2713 -> :sswitch_0
        0x2715 -> :sswitch_1
        0x2716 -> :sswitch_3
        0x271a -> :sswitch_4
        0x271b -> :sswitch_5
        0x2724 -> :sswitch_6
        0x2742 -> :sswitch_7
        0x274c -> :sswitch_8
        0x2756 -> :sswitch_2
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1241
    invoke-super {p0}, Lcom/htc/camera/dualcamera/IDualCameraController;->initializeOverride()V

    .line 1244
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0, v4}, Lcom/htc/camera/dualcamera/DualCameraUI;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 1245
    const-class v0, Lcom/htc/camera/IObjectTracker;

    invoke-virtual {p0, v0, v4}, Lcom/htc/camera/dualcamera/DualCameraUI;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 1246
    const-class v0, Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {p0, v0, v4}, Lcom/htc/camera/dualcamera/DualCameraUI;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 1247
    const-class v0, Lcom/htc/camera/IViewFinder3D;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    .line 1248
    const-class v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    .line 1249
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 1250
    const-class v0, Lcom/htc/camera/w;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    .line 1253
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1254
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->switchingCameraEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$6;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1268
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->switchingCameraModeEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$7;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1288
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$8;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1308
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$9;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1323
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$10;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1334
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->triggers:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$11;

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/htc/camera/dualcamera/DualCameraUI$11;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 1383
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$12;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1396
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$13;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1417
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v1, :cond_0

    .line 1419
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    sget-object v2, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    new-instance v3, Lcom/htc/camera/dualcamera/DualCameraUI$14;

    invoke-direct {v3, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$14;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-interface {v1, v2, v3}, Lcom/htc/camera/ui/IOpenGLViewfinder;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 1436
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraUI$15;

    const-string v3, "Settings.HumanJointMaskType"

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/dualcamera/DualCameraUI$15;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 1444
    return-void

    .line 1433
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - No IOpenGLViewfinder interface"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPreviewAdapterAvailable()Z
    .locals 1

    .prologue
    .line 1451
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsPreviewAdapterAvailable:Z

    return v0
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    .line 1907
    instance-of v0, p1, Lcom/htc/camera/ab;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1908
    check-cast v0, Lcom/htc/camera/ab;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    .line 1933
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/camera/dualcamera/IDualCameraController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 1934
    return-void

    .line 1909
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/IObjectTracker;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1911
    check-cast v0, Lcom/htc/camera/IObjectTracker;

    .line 1912
    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->detectedObjects:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/dualcamera/DualCameraUI$18;

    invoke-direct {v1, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$18;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    goto :goto_0

    .line 1931
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/component/SwitchCameraSlidingUI;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1932
    check-cast v0, Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 1970
    invoke-super {p0, p1, p2}, Lcom/htc/camera/dualcamera/IDualCameraController;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1973
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 1974
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->resetPreviewBound()V

    .line 1975
    :cond_0
    return-void
.end method

.method public setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 2188
    if-nez p1, :cond_1

    .line 2190
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureStyle() - No style specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    :cond_0
    :goto_0
    return v3

    .line 2195
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->threadAccessCheck()V

    .line 2196
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 2197
    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 2203
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCaptureStyle() - Taking picture state is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2206
    :pswitch_0
    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    .line 2212
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCaptureStyle() - Recording state is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2217
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2219
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureStyle("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2220
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    .line 2223
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2226
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2229
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->lockOrUnlockCpu()V

    .line 2232
    sget-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    if-ne p1, v0, :cond_2

    .line 2233
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    const/16 v2, 0x2738

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_HUMAN_JOINT_MASK_TYPE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2236
    :cond_2
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    invoke-virtual {p1}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 2251
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_4

    .line 2254
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 2257
    sget-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    if-ne v6, v0, :cond_7

    .line 2258
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSrcRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSrcRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 2264
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->resetPreviewRenderingStates()V

    .line 2268
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->resetPreviewBound()V

    :cond_6
    move v3, v10

    .line 2270
    goto/16 :goto_0

    .line 2240
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2242
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureStyle() - Fail to switch camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0, v6}, Lcom/htc/camera/dualcamera/DualCameraController;->setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z

    .line 2244
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2259
    :cond_7
    sget-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    if-ne p1, v0, :cond_4

    .line 2260
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v3

    invoke-interface/range {v4 .. v9}, Lcom/htc/camera/ui/IOpenGLViewfinder;->setPreviewSourceRect(FFFFI)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSrcRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto :goto_1

    .line 2276
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureStyle() - Not controller, apply capture style later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 2277
    goto/16 :goto_0

    .line 2197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2206
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2236
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
