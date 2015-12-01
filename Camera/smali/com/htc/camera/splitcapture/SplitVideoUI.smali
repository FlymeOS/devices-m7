.class public Lcom/htc/camera/splitcapture/SplitVideoUI;
.super Lcom/htc/camera/splitcapture/ISplitVideoController;
.source "SplitVideoUI.java"


# instance fields
.field private m_1st_Video_Path:Lcom/htc/camera/io/Path;

.field private m_2nd_Video_Path:Lcom/htc/camera/io/Path;

.field private final m_AnimationStopWatch:Lcom/htc/camera/StopWatch;

.field private m_AttachFrameCounter:I

.field private m_BitmapBrush:Lcom/htc/camera/gl/BitmapBrush;

.field private m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

.field private m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

.field private m_CaptureBar:Lcom/htc/camera/ICaptureBar;

.field private m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

.field private m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

.field private m_CaptureUIBlockManager:Lcom/htc/camera/w;

.field private volatile m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

.field private m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

.field private m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

.field private m_CurrentActualDurationTime:Ljava/lang/Long;

.field private m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;

.field private m_CurrentCapturingRotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_CurrentDurationLimit:Lcom/htc/camera/Duration;

.field private m_CurrentDurationTime:Ljava/lang/Long;

.field private m_CurrentVolumeKeyType:Lcom/htc/camera/VolumeKeyType;

.field private m_DisableCaptureHandle:Lcom/htc/camera/Handle;

.field private m_DisableSwitchCameraSlidingHandle:Lcom/htc/camera/Handle;

.field private m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

.field private m_FirstVideoSourceRect:Landroid/graphics/RectF;

.field private m_Flags:I

.field private m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;

.field private m_FullRegion:Lcom/htc/camera/gl/Quadrangle;

.field private final m_FullSourceRect:Landroid/graphics/RectF;

.field private m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;

.field private m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_IsCurrentVolumeKeyHintShowed:Ljava/lang/Boolean;

.field private m_IsDeleteResult:Z

.field private m_IsFirstAttachFrameDrew:Z

.field private m_IsFirstFrameReceivedAfterSwitchMode:Z

.field private m_IsHidingPlaybackSurfaceWhilePreparingRetake:Z

.field private volatile m_IsMediaPlayerPrepared:Z

.field private m_IsMediaPlaying:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsPreviewRendererInitialized:Z

.field private m_IsResultDeletedForRetaking:Z

.field private m_IsRetake1stVideoBefore:Z

.field private final m_IsSplitVideoActiveChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsUIInitialized:Z

.field private m_LatestIsLeft2Right:Z

.field private m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

.field private final m_LeftSourceRect:Landroid/graphics/RectF;

.field private m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

.field private m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

.field private m_MergedCoverImage:Landroid/graphics/Bitmap;

.field private m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private final m_PreviewBoundCalculator:Lcom/htc/camera/ui/a;

.field private m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

.field private final m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

.field private m_PreviewRendererHandle:Lcom/htc/camera/Handle;

.field private final m_PreviewSourceRect:Landroid/graphics/RectF;

.field private m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_PreviousState:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field private m_PreviousToastHandle:Lcom/htc/camera/Handle;

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ProcessingDialogManager:Lcom/htc/camera/ab;

.field private m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

.field private m_Retake1stConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

.field private m_RetakeConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

.field private m_RetakeCounter:I

.field private m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

.field private final m_RightSourceRect:Landroid/graphics/RectF;

.field private m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

.field private m_RotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_ScrollThreshold:I

.field private m_SecondVideoSourceRect:Landroid/graphics/RectF;

.field private m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

.field private m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_ShowRotateDialogHandle:Lcom/htc/camera/Handle;

.field private m_SplitCaptureFullView:Landroid/view/View;

.field private m_SplitCaptureLeftView:Landroid/widget/ImageView;

.field private m_SplitCaptureMainContainer:Landroid/view/View;

.field private m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

.field private m_SplitCaptureReviewView:Landroid/widget/ImageView;

.field private m_SplitCaptureRightView:Landroid/widget/ImageView;

.field private m_SplitVideoFinished:Z

.field private m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field private volatile m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

.field private m_SwipeCounter:I

.field private m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

.field private final m_SwitchPreviewLocationSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private m_SwitchPreviewSurfaceLocationGestureDetector:Landroid/view/GestureDetector;

.field private m_SwitchReviewLocationGestureDetector:Landroid/view/GestureDetector;

.field private final m_SwitchReviewLocationSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final m_Timer:Lcom/htc/camera/StopWatch;

.field private m_ToastHandle:Lcom/htc/camera/Handle;

.field private m_ToastManager:Lcom/htc/camera/ak;

.field private m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

.field private m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

.field private m_isNeedSetReviewImage:Z

.field private m_isNeedSwitchCam:Z

.field private final m_playbackViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 429
    const-string v1, "Split Video UI Controller"

    const/4 v2, 0x1

    const v5, 0x7f0e0108

    const v6, 0x7f0e0201

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/splitcapture/ISplitVideoController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;ZII)V

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v7, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7, v8, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftSourceRect:Landroid/graphics/RectF;

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v9, v8, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightSourceRect:Landroid/graphics/RectF;

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7, v8, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullSourceRect:Landroid/graphics/RectF;

    .line 132
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Timer:Lcom/htc/camera/StopWatch;

    .line 133
    iput-object v10, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousState:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 141
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AnimationStopWatch:Lcom/htc/camera/StopWatch;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I

    .line 153
    iput v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwipeCounter:I

    .line 154
    iput v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeCounter:I

    .line 155
    iput-boolean v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitVideoFinished:Z

    .line 156
    iput-object v10, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 174
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 176
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 177
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 183
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 184
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 211
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_playbackViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 248
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$2;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchReviewLocationSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 299
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$3;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchPreviewLocationSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 375
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$4;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsSplitVideoActiveChangedCallback:Lcom/htc/camera/property/c;

    .line 387
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$5;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    .line 411
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$6;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalculator:Lcom/htc/camera/ui/a;

    .line 430
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ak;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BitmapBrush;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BitmapBrush:Lcom/htc/camera/gl/BitmapBrush;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BitmapBrush;)Lcom/htc/camera/gl/BitmapBrush;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BitmapBrush:Lcom/htc/camera/gl/BitmapBrush;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onDeinitializePreviewRenderer()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onDrawPreview(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onCaptureStateChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onIsLeft2RightPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onIsMediaPlayingPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IViewFinder3D;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/IViewFinder3D;)Lcom/htc/camera/IViewFinder3D;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->linkToController()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/ui/IOpenGLViewfinder;)Lcom/htc/camera/ui/IOpenGLViewfinder;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoController;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/camera/splitcapture/SplitVideoUI;I)V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/CloseableHandleReference;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/a;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalculator:Lcom/htc/camera/ui/a;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onActionScreenStateChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onRecordingStateChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$3802(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsDeleteResult:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ICameraMenuUI;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->resetState(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onFirstPreviewFrameReceived()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showProcessingDialog()V

    return-void
.end method

.method static synthetic access$4802(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoCaptureState;)Lcom/htc/camera/splitcapture/SplitVideoCaptureState;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchPreviewSurfaceLocationGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousToastHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousToastHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchReviewLocationGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareConfirmMenuListView()V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/menu/MenuListView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowRotateDialogHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowRotateDialogHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IRotateDialogManager;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MergedCoverImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/camera/splitcapture/SplitVideoUI;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setReviewImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$6802(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSetReviewImage:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IUIRotationManager;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentCapturingRotation:Lcom/htc/camera/rotate/UIRotation;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareQuadrangle(Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsHidingPlaybackSurfaceWhilePreparingRetake:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsHidingPlaybackSurfaceWhilePreparingRetake:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onRetake1stVideoClicked()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8008(Lcom/htc/camera/splitcapture/SplitVideoUI;)I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeCounter:I

    return v0
.end method

.method static synthetic access$8100(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onRetake2ndVideoClicked()V

    return-void
.end method

.method static synthetic access$8200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;

    return-object v0
.end method

.method static synthetic access$8302(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BufferBrush;)Lcom/htc/camera/gl/BufferBrush;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;

    return-object p1
.end method

.method static synthetic access$8400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/htc/camera/splitcapture/SplitVideoUI;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/BufferBrush;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/BufferBrush;)Lcom/htc/camera/gl/BufferBrush;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/splitcapture/SplitVideoUI;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I

    return v0
.end method

.method static synthetic access$9000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/Quadrangle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/Quadrangle;)Lcom/htc/camera/gl/Quadrangle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/Quadrangle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/Quadrangle;)Lcom/htc/camera/gl/Quadrangle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/gl/Quadrangle;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/gl/Quadrangle;)Lcom/htc/camera/gl/Quadrangle;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9402(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlayerPrepared:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsPreviewRendererInitialized:Z

    return v0
.end method

.method static synthetic access$9800(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private blockCaptureUI(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    if-nez v0, :cond_0

    .line 442
    const-class v0, Lcom/htc/camera/w;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    .line 443
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - cannot find ICaptureUIBlockManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    .line 462
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableCapture(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "disableCapture() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->enableCapture(Lcom/htc/camera/Handle;)V

    .line 475
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->disableCapture(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    .line 477
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "disableCapture() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method private disableSwitchCameraSliding()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "disableSwitchCameraSliding() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    if-nez v0, :cond_0

    .line 488
    const-class v0, Lcom/htc/camera/ai;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ai;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableSwitchCameraSlidingHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableSwitchCameraSlidingHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ai;->enableSliding(Lcom/htc/camera/Handle;)V

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    invoke-virtual {v0}, Lcom/htc/camera/ai;->disableSliding()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableSwitchCameraSlidingHandle:Lcom/htc/camera/Handle;

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "disableSwitchCameraSliding() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "disableSwitchCameraSliding() - m_SwitchCameraSlidingUI is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableCapture()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "enableCapture() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->enableCapture(Lcom/htc/camera/Handle;)V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "enableCapture() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private enableSwitchCameraSliding()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "enableSwitchCameraSliding() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    if-nez v0, :cond_0

    .line 527
    const-class v0, Lcom/htc/camera/ai;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ai;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableSwitchCameraSlidingHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/ai;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableSwitchCameraSlidingHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ai;->enableSliding(Lcom/htc/camera/Handle;)V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_DisableSwitchCameraSlidingHandle:Lcom/htc/camera/Handle;

    .line 540
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "enableSwitchCameraSliding() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "enableSwitchCameraSliding() - m_SwitchCameraSlidingUI is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enterSplitCaptureMode(Z)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 568
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "Rube: enter SplitVideoUI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->threadAccessCheck()V

    .line 572
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 573
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 575
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 577
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Split Video mode is already entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 652
    :cond_0
    :goto_0
    return v5

    .line 581
    :cond_1
    iput v5, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwipeCounter:I

    .line 582
    iput v5, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeCounter:I

    .line 587
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_4

    .line 589
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v6}, Lcom/htc/camera/ui/IOpenGLViewfinder;->force3DPreviewRendering(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalculator:Lcom/htc/camera/ui/a;

    invoke-interface {v1, v2, v5}, Lcom/htc/camera/ui/IOpenGLViewfinder;->addPreviewBoundsCalculator(Lcom/htc/camera/ui/a;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_4

    .line 594
    new-instance v7, Lcom/htc/camera/CloseableHandleReference;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-interface/range {v0 .. v5}, Lcom/htc/camera/ui/IOpenGLViewfinder;->setPreviewSourceRect(FFFFI)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v7, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 598
    :cond_4
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->removeMessages(I)V

    .line 602
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - No SplitVideoController, enter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v5, v6

    .line 625
    goto :goto_0

    .line 628
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Flags:I

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->enter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 635
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->initializeUI()V

    .line 646
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->enableLogs(I)V

    move v5, v6

    .line 649
    goto/16 :goto_0
.end method

.method private getRecordingTimeString(J)Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const-wide/16 v8, 0x64

    .line 786
    const-wide/16 v0, 0xe10

    div-long v0, p1, v0

    rem-long/2addr v0, v8

    .line 787
    div-long v2, p1, v4

    rem-long/2addr v2, v4

    .line 788
    rem-long v4, p1, v4

    .line 789
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const-string v0, ""

    .line 790
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v1, v2, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v1, v4, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 789
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideProcessingDialog()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-nez v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "showProcessingDialog() - cannot find IProcessingDialogManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "hideProcessingDialog()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1285
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeUI() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsUIInitialized:Z

    if-eqz v0, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v1, 0x2723

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1292
    const v0, 0x7f0e0108

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setBaseLayoutId(I)V

    .line 1293
    const v0, 0x7f030084

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setContentLayoutId(I)V

    .line 1295
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureFullView:Landroid/view/View;

    .line 1298
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureMainContainer:Landroid/view/View;

    .line 1299
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureMainContainer:Landroid/view/View;

    const v1, 0x7f0e0203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;

    .line 1300
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureMainContainer:Landroid/view/View;

    const v1, 0x7f0e0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;

    .line 1301
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureMainContainer:Landroid/view/View;

    const v1, 0x7f0e0206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    .line 1302
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureMainContainer:Landroid/view/View;

    const v1, 0x7f0e0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    .line 1305
    invoke-direct {p0, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showSecondPlaybackUI(Z)V

    .line 1306
    invoke-direct {p0, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    .line 1307
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 1308
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 1310
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureMainContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 1311
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureFullView:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 1313
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchPreviewLocationSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchPreviewSurfaceLocationGestureDetector:Landroid/view/GestureDetector;

    .line 1314
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchReviewLocationSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchReviewLocationGestureDetector:Landroid/view/GestureDetector;

    .line 1316
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$24;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$24;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1324
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$25;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$25;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1332
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$26;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$26;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1347
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_playbackViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_playbackViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$27;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$27;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1371
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$28;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$28;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1402
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$29;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$29;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1437
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$30;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$30;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    .line 1469
    :cond_1
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsUIInitialized:Z

    .line 1470
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeUI() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1479
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 1506
    :cond_0
    :goto_0
    return v3

    .line 1483
    :cond_1
    const-class v0, Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    .line 1484
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 1506
    goto :goto_0
.end method

.method private onActionScreenStateChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1514
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionScreenStateChanged() - new state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1592
    :goto_0
    return-void

    .line 1518
    :cond_0
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$UIState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1521
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 1525
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onActionScreenStateChanged() - actionScreenState = Opening, hide common action screen and show retake button"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->hideUI()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;

    .line 1530
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$31;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$31;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->setRetakeAction(Ljava/lang/Runnable;)V

    .line 1564
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/VolumeKeyType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentVolumeKeyType:Lcom/htc/camera/VolumeKeyType;

    .line 1565
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isVolumeKeyHintShown:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsCurrentVolumeKeyHintShowed:Ljava/lang/Boolean;

    .line 1566
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/VolumeKeyType;->None:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1567
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isVolumeKeyHintShown:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1570
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1573
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_2

    .line 1578
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onActionScreenStateChanged() - actionScreenState = Closed, reset capture state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2717

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsDeleteResult:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1580
    invoke-direct {p0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->resetState(Z)V

    .line 1585
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentVolumeKeyType:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1586
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isVolumeKeyHintShown:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsCurrentVolumeKeyHintShowed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1588
    iput-object v7, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentVolumeKeyType:Lcom/htc/camera/VolumeKeyType;

    .line 1589
    iput-object v7, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsCurrentVolumeKeyHintShowed:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1583
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onActionScreenStateChanged() - actionScreenState = Closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1600
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1712
    :goto_0
    return v2

    .line 1605
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    if-nez v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCalculatePreviewBounds() - previewSize is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1612
    :cond_1
    sget-object v3, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 1711
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCalculatePreviewBounds() - bounds = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isDefaultSurface = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->isDefaultPreviewSurface:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", forceUpdatePreview = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", captureState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1712
    goto :goto_0

    .line 1615
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    .line 1619
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1623
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1624
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToRight(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1626
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToLeft(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1630
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1631
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToLeft(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1633
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToRight(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1653
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1654
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToRight(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1656
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToLeft(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1661
    :pswitch_3
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlayerPrepared:Z

    if-nez v0, :cond_7

    .line 1672
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1673
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToRight(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1675
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToLeft(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1679
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1680
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToLeft(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1682
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToRight(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1693
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1694
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToLeft(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1696
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToRight(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1703
    :pswitch_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1704
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToRight(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1706
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->setPreviewToLeft(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 1619
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onCameraThreadRunning()V
    .locals 2

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadRunning()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadRunning() - Enter Split Video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enterSplitCaptureMode(Z)Z

    .line 1726
    :cond_0
    return-void
.end method

.method private onCaptureStateChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/splitcapture/SplitVideoCaptureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/splitcapture/SplitVideoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1733
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1736
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousState:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 1738
    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1982
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    return-void

    .line 1741
    :pswitch_0
    const-string v0, "Recording the 1st video"

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->disableCapture(Ljava/lang/String;)V

    goto :goto_0

    .line 1748
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2724

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1749
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x271b

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1752
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->disableSwitchCameraSliding()V

    .line 1755
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1757
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-ne v0, v1, :cond_1

    .line 1759
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 1760
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 1763
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - switching camera to front cam"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-direct {p0, v6, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 1766
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    .line 1769
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-ne v0, v1, :cond_2

    .line 1770
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2718

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1773
    :cond_2
    invoke-direct {p0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    goto :goto_0

    .line 1777
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - switching camera to front cam later, set m_isNeedSwitchCam to true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto :goto_0

    .line 1783
    :pswitch_2
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureStateChanged() - old state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v2, :cond_4

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v2, :cond_0

    .line 1796
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 1797
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 1801
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x271c

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1802
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2723

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1805
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1807
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1809
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - switching camera to main cam"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    invoke-direct {p0, v6, v6, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 1812
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto/16 :goto_0

    .line 1816
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - switching camera to main cam later, set m_isNeedSwitchCam to true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto/16 :goto_0

    .line 1822
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - switching camera to main cam later due to acitivity pausing/paused, set m_isNeedSwitchCam to true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto/16 :goto_0

    .line 1828
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 1829
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 1830
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitVideoFinished:Z

    .line 1832
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1833
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->resetState(Z)V

    goto/16 :goto_0

    .line 1837
    :pswitch_4
    const-string v0, "Recording the 2nd video"

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->disableCapture(Ljava/lang/String;)V

    .line 1838
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    goto/16 :goto_0

    .line 1841
    :pswitch_5
    const-string v0, "Retaking 1st video"

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->disableCapture(Ljava/lang/String;)V

    .line 1842
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    goto/16 :goto_0

    .line 1846
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 1847
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showSecondPlaybackUI(Z)V

    .line 1850
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1851
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->resetState(Z)V

    goto/16 :goto_0

    .line 1856
    :pswitch_7
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1860
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStateChanged() - switching camera to main cam"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-direct {p0, v6, v6, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 1863
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    .line 1875
    :goto_1
    const-string v0, "Prepare for recapturing 1st video"

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->blockCaptureUI(Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2720

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1881
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_7

    .line 1882
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 1885
    :cond_7
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showSecondPlaybackUI(Z)V

    .line 1886
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    .line 1887
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 1888
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 1889
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->closeActionScreen()V

    .line 1892
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-direct {p0, v3, v0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onPreparing2ndPlaybackSurface(ZLcom/htc/camera/splitcapture/SplitVideoCaptureState;Z)V

    goto/16 :goto_0

    .line 1870
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStateChanged() - switching camera to main cam later, set m_isNeedSwitchCam to true"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto :goto_1

    .line 1897
    :pswitch_8
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsResultDeletedForRetaking:Z

    if-eqz v0, :cond_9

    .line 1899
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 1900
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsResultDeletedForRetaking:Z

    goto/16 :goto_0

    .line 1903
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - m_IsResultDeletedForRetaking is \"false\". The last final video hasn\'t been deleted yet. Unblock capture UI later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1908
    :pswitch_9
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1912
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStateChanged() - switching camera to front cam"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    invoke-direct {p0, v6, v6, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 1915
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    .line 1927
    :goto_2
    const-string v0, "Prepare for recapturing 2nd video"

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->blockCaptureUI(Ljava/lang/String;)V

    .line 1930
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2719

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1933
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_a

    .line 1934
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 1937
    :cond_a
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showSecondPlaybackUI(Z)V

    .line 1938
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    .line 1939
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 1940
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 1941
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->closeActionScreen()V

    .line 1944
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-direct {p0, v3, v0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onPreparing1stPlaybackSurface(ZLcom/htc/camera/splitcapture/SplitVideoCaptureState;Z)V

    goto/16 :goto_0

    .line 1922
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureStateChanged() - switching camera to front cam later, set m_isNeedSwitchCam to true"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto :goto_2

    .line 1949
    :pswitch_a
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsResultDeletedForRetaking:Z

    if-eqz v0, :cond_c

    .line 1951
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 1952
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsResultDeletedForRetaking:Z

    goto/16 :goto_0

    .line 1955
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStateChanged() - m_IsResultDeletedForRetaking is \"false\". The last final video hasn\'t been deleted yet. Unblock capture UI later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1960
    :pswitch_b
    const-string v0, "Retaking 2nd video"

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->disableCapture(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1964
    :pswitch_c
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 1965
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 1968
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1969
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->resetState(Z)V

    goto/16 :goto_0

    .line 1974
    :pswitch_d
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 1977
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v3}, Lcom/htc/camera/ui/IOpenGLViewfinder;->showPreviewCover(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto/16 :goto_0

    .line 1738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onDeinitializePreviewRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1991
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsPreviewRendererInitialized:Z

    if-nez v0, :cond_0

    .line 2025
    :goto_0
    return-void

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onDeinitializePreviewRenderer()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v1, 0x271a

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1998
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    if-eqz v0, :cond_1

    .line 2000
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/SolidColorBrush;->release()V

    .line 2001
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    .line 2003
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    if-eqz v0, :cond_2

    .line 2005
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/BufferBrush;->release()V

    .line 2006
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    .line 2008
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;

    if-eqz v0, :cond_3

    .line 2010
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/BufferBrush;->release()V

    .line 2011
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    .line 2013
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BitmapBrush:Lcom/htc/camera/gl/BitmapBrush;

    if-eqz v0, :cond_4

    .line 2015
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BitmapBrush:Lcom/htc/camera/gl/BitmapBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/BitmapBrush;->release()V

    .line 2016
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BitmapBrush:Lcom/htc/camera/gl/BitmapBrush;

    .line 2019
    :cond_4
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    .line 2020
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    .line 2021
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;

    .line 2024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsPreviewRendererInitialized:Z

    goto :goto_0
.end method

.method private onDrawPreview(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const-wide v10, 0x3fc22d0e56041893L    # 0.142

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    .line 2033
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsPreviewRendererInitialized:Z

    if-eqz v0, :cond_0

    .line 2039
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2042
    iget-boolean v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isDefaultPreviewSurface:Z

    if-nez v0, :cond_2

    .line 2043
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AttachFrameCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AttachFrameCounter:I

    .line 2045
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstAttachFrameDrew:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isDefaultPreviewSurface:Z

    if-nez v0, :cond_3

    .line 2046
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstAttachFrameDrew:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isDefaultPreviewSurface:Z

    if-nez v0, :cond_4

    .line 2048
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2718

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-wide/16 v6, 0xb4

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 2049
    iput-boolean v8, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstAttachFrameDrew:Z

    .line 2053
    :cond_4
    new-instance v1, Landroid/graphics/PointF;

    iget-object v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->size:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    iget-object v2, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->size:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2054
    iget-object v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v2, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float v4, v0, v9

    .line 2055
    iget-object v0, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v2, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float v5, v0, v9

    .line 2056
    new-instance v2, Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    iget v6, v1, Landroid/graphics/PointF;->x:F

    mul-float v7, v4, v9

    add-float/2addr v6, v7

    iget v7, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v5

    invoke-direct {v2, v0, v3, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2057
    new-instance v3, Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/PointF;->x:F

    mul-float v6, v4, v9

    sub-float/2addr v0, v6

    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v5

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v5

    invoke-direct {v3, v0, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2059
    sget-object v6, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2185
    :pswitch_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    :goto_1
    invoke-virtual {v1, v3}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 2187
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsHidingPlaybackSurfaceWhilePreparingRetake:Z

    if-nez v0, :cond_13

    .line 2188
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2193
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    goto/16 :goto_0

    .line 2062
    :pswitch_2
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlayerPrepared:Z

    if-eqz v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v1, v2

    .line 2068
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v4, v2

    .line 2069
    :goto_4
    const/4 v0, 0x0

    .line 2072
    sget-object v5, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoUI$AnimationState:[I

    iget-object v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    invoke-virtual {v6}, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    move-object v5, v0

    .line 2106
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v6, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-ne v0, v6, :cond_6

    .line 2109
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v5, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LatestIsLeft2Right:Z

    if-ne v0, v5, :cond_a

    move-object v5, v4

    .line 2114
    :goto_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v6, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-eq v0, v6, :cond_14

    .line 2116
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v1, v3

    .line 2117
    :goto_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2120
    :goto_8
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoUI$AnimationState:[I

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    invoke-virtual {v3}, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_2

    .line 2148
    :goto_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-ne v0, v2, :cond_6

    move-object v5, v1

    .line 2153
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget v1, v5, Landroid/graphics/RectF;->left:F

    iget v2, v5, Landroid/graphics/RectF;->top:F

    iget v3, v5, Landroid/graphics/RectF;->right:F

    iget v4, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/gl/Quadrangle;->setBounds(FFFF)V

    .line 2154
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2155
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v3

    .line 2067
    goto/16 :goto_3

    :cond_8
    move-object v4, v3

    .line 2068
    goto :goto_4

    .line 2075
    :pswitch_3
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->START_AND_WAIT:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    :pswitch_4
    move-object v5, v1

    .line 2078
    goto :goto_5

    .line 2081
    :pswitch_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AnimationStopWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 2082
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    move-object v5, v1

    .line 2084
    :goto_a
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AnimationStopWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v6

    .line 2085
    const-wide/16 v8, 0x1e

    cmp-long v0, v6, v8

    if-ltz v0, :cond_9

    .line 2087
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LatestIsLeft2Right:Z

    .line 2089
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v6, "onDrawPreview() - animation finished"

    invoke-static {v0, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 2091
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AnimationStopWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 2092
    const/16 v0, 0x271c

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto/16 :goto_5

    .line 2096
    :cond_9
    long-to-float v0, v6

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v0, v5

    float-to-double v5, v0

    .line 2097
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget v8, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v0, v5

    .line 2098
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float v6, v0, v5

    .line 2099
    new-instance v5, Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->top:F

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v0, v7, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2100
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDrawPreview() - current animation rect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2112
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v2

    :goto_b
    move-object v5, v0

    goto/16 :goto_6

    :cond_b
    move-object v0, v3

    goto :goto_b

    :cond_c
    move-object v1, v2

    .line 2116
    goto/16 :goto_7

    :cond_d
    move-object v2, v3

    .line 2117
    goto/16 :goto_8

    .line 2124
    :pswitch_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AnimationStopWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 2125
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    move-object v5, v2

    .line 2127
    :pswitch_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AnimationStopWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v3

    .line 2128
    const-wide/16 v6, 0x12c

    cmp-long v0, v3, v6

    if-ltz v0, :cond_e

    .line 2130
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LatestIsLeft2Right:Z

    .line 2132
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "onDrawPreview() - animation finished"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 2134
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AnimationStopWatch:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 2135
    const/16 v0, 0x271e

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto/16 :goto_9

    .line 2139
    :cond_e
    long-to-float v0, v3

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v0, v3

    float-to-double v3, v0

    .line 2140
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, v5, v2

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 2141
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v0

    .line 2142
    new-instance v5, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v0, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2143
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawPreview() - current animation rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2163
    :pswitch_8
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_c
    invoke-virtual {v1, v2}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 2165
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsHidingPlaybackSurfaceWhilePreparingRetake:Z

    if-nez v0, :cond_11

    .line 2166
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2171
    :goto_d
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    goto/16 :goto_0

    :cond_10
    move-object v2, v3

    .line 2163
    goto :goto_c

    .line 2168
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    goto :goto_d

    .line 2174
    :pswitch_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float v3, v4, v9

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    iget v6, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v9

    add-float/2addr v4, v6

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(FFFF)V

    .line 2176
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullBufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2179
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    goto/16 :goto_0

    :cond_12
    move-object v3, v2

    .line 2185
    goto/16 :goto_1

    .line 2190
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    goto/16 :goto_2

    :cond_14
    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_8

    :pswitch_a
    move-object v5, v0

    goto/16 :goto_a

    .line 2059
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2072
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
    .end packed-switch

    .line 2120
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onFirstPreviewFrameReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2203
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onFirstPreviewFrameReceived()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 2206
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onFirstPreviewFrameReceived() - remove black cover"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 2211
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstFrameReceivedAfterSwitchMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    if-nez v0, :cond_2

    .line 2218
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-ne v0, v1, :cond_2

    .line 2221
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 2225
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstFrameReceivedAfterSwitchMode:Z

    if-nez v0, :cond_3

    .line 2227
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2250
    :cond_3
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    if-nez v0, :cond_4

    .line 2251
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstFrameReceivedAfterSwitchMode:Z

    .line 2252
    :cond_4
    return-void

    .line 2231
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-ne v0, v1, :cond_5

    .line 2232
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2718

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 2235
    :cond_5
    invoke-direct {p0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    goto :goto_0

    .line 2240
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showSecondPlaybackUI(Z)V

    goto :goto_0

    .line 2245
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    goto :goto_0

    .line 2227
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 8

    .prologue
    const/16 v7, 0x2714

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2260
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsPreviewRendererInitialized:Z

    if-eqz v0, :cond_0

    .line 2350
    :goto_0
    return-void

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onInitializePreviewRenderer()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    if-nez v0, :cond_1

    .line 2266
    new-instance v0, Lcom/htc/camera/gl/SolidColorBrush;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Lcom/htc/camera/gl/SolidColorBrush;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    .line 2267
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    if-nez v0, :cond_2

    .line 2268
    new-instance v0, Lcom/htc/camera/gl/BufferBrush;

    invoke-direct {v0}, Lcom/htc/camera/gl/BufferBrush;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    .line 2271
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2712

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/BufferBrush;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2273
    new-instance v0, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v0}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    .line 2274
    new-instance v0, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v0}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    .line 2275
    new-instance v0, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v0}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullRegion:Lcom/htc/camera/gl/Quadrangle;

    .line 2277
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2326
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2327
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MaskBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2331
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSetReviewImage:Z

    if-eqz v0, :cond_3

    .line 2333
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$32;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$32;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2345
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 2348
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsPreviewRendererInitialized:Z

    goto/16 :goto_0

    .line 2280
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/BufferBrush;->setSourceRect(Landroid/graphics/RectF;)V

    .line 2281
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoSourceRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;

    .line 2282
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2283
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 2291
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/BufferBrush;->setSourceRect(Landroid/graphics/RectF;)V

    .line 2292
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoSourceRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;

    .line 2303
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2304
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 2310
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SecondVideoSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/BufferBrush;->setSourceRect(Landroid/graphics/RectF;)V

    .line 2311
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SecondVideoSourceRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;

    .line 2322
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftMaskRegion:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_BufferBrush:Lcom/htc/camera/gl/BufferBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2323
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v2, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 2277
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private onIsLeft2RightPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    .line 3076
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 3078
    const-string v0, "Swap Surface Location Animation"

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->blockCaptureUI(Ljava/lang/String;)V

    .line 3080
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 3081
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->showPreviewCover(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 3084
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 3085
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->enableHighFrameRate()Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 3088
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$39;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$39;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 3101
    :cond_0
    :goto_0
    return-void

    .line 3099
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onIsLeft2RightPropertyChanged() - incorrect state. Skip."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onIsMediaPlayingPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2357
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onMediaPlayingStart()V

    .line 2361
    :goto_0
    return-void

    .line 2360
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onMediaPlayingComplete()V

    goto :goto_0
.end method

.method private onMediaPlayingComplete()V
    .locals 3

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onMediaPlayingComplete() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_2

    .line 2373
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onMediaPlayingComplete() - start common action screen\'s auto close timer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 2380
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 2382
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_1

    .line 2384
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onMediaPlayingComplete() - show common action screen"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Lcom/htc/camera/Handle;)V

    .line 2386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;

    .line 2391
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 2392
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 2395
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onMediaPlayingComplete() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    return-void
.end method

.method private onMediaPlayingPrepared()V
    .locals 7

    .prologue
    const/16 v2, 0x2718

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2430
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onMediaPlayingPrepared()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    iput-boolean v6, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlayerPrepared:Z

    .line 2433
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_2

    .line 2435
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2438
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 2439
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->hideProcessingDialog()V

    .line 2440
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v6, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 2471
    :cond_1
    :goto_0
    return-void

    .line 2443
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_7

    .line 2445
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_3

    .line 2446
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 2449
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->START_AND_WAIT:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-ne v0, v1, :cond_6

    .line 2452
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_5

    .line 2454
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 2455
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v3}, Lcom/htc/camera/ui/IOpenGLViewfinder;->showPreviewCover(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 2456
    const/16 v3, 0x271d

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 2462
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->hideProcessingDialog()V

    goto :goto_0

    .line 2460
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_1

    .line 2464
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 2469
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto/16 :goto_0
.end method

.method private onMediaPlayingStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2403
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onMediaPlayingStart() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2408
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onMediaPlayingStart() - Stop common action screen\'s auto close timer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->stopAutoCloseTimer()V

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 2419
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 2422
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onMediaPlayingStart() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    return-void
.end method

.method private onPreparing1stPlaybackSurface(ZLcom/htc/camera/splitcapture/SplitVideoCaptureState;Z)V
    .locals 4

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "set brush to quadrangle - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoSourceRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    new-instance v3, Lcom/htc/camera/splitcapture/SplitVideoUI$34;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/htc/camera/splitcapture/SplitVideoUI$34;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoCaptureState;ZZ)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareBufferBrush(Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;Landroid/graphics/RectF;ZLjava/lang/Runnable;)V

    .line 2642
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "set brush to quadrangle - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    return-void
.end method

.method private onPreparing2ndPlaybackSurface(ZLcom/htc/camera/splitcapture/SplitVideoCaptureState;Z)V
    .locals 4

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "set brush to quadrangle - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->HALF_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SecondVideoSourceRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    new-instance v3, Lcom/htc/camera/splitcapture/SplitVideoUI$35;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/htc/camera/splitcapture/SplitVideoUI$35;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoCaptureState;ZZ)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareBufferBrush(Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;Landroid/graphics/RectF;ZLjava/lang/Runnable;)V

    .line 2683
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "set brush to quadrangle - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    return-void
.end method

.method private onPreviewStarted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2692
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->initializeUI()V

    .line 2694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 2696
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted() - isPreviewStarted = true, m_isNeedSwitchCam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    if-eqz v0, :cond_0

    .line 2700
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2761
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2703
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-ne v0, v1, :cond_1

    .line 2705
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 2706
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 2709
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewStarted() - isPreviewStarted = true, switch to front video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    invoke-direct {p0, v4, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 2712
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto :goto_0

    .line 2722
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 2723
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 2725
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewStarted() - isPreviewStarted = true, switch to main video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    invoke-direct {p0, v4, v4, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 2728
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto :goto_0

    .line 2738
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 2739
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 2741
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewStarted() - isPreviewStarted = true, switch to front video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    invoke-direct {p0, v4, v4, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 2744
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto :goto_0

    .line 2756
    :pswitch_4
    invoke-direct {p0, v4, v4, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 2757
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto :goto_0

    .line 2700
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private onRecordingStateChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2768
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2984
    :cond_0
    :goto_0
    return-void

    .line 2771
    :pswitch_0
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 2801
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showSecondPlaybackUI(Z)V

    .line 2802
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    .line 2803
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 2804
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 2775
    :pswitch_3
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x271d

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2777
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2778
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_1

    .line 2780
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentCapturingRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 2781
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentCapturingRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    .line 2785
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableActionScreen()V

    goto :goto_0

    .line 2788
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2791
    :pswitch_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2794
    :pswitch_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2809
    :pswitch_7
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_2

    .line 2811
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onRecordingStateChanged() - recording start failed."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 2813
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 2815
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    .line 2828
    :cond_2
    :goto_1
    :pswitch_8
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_0

    .line 2830
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_3

    .line 2880
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_0

    .line 2885
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->hideRecordingTimer(Lcom/htc/camera/Handle;)V

    .line 2886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    .line 2888
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 2889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 2819
    :pswitch_9
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    goto :goto_1

    .line 2822
    :pswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showSecondPlaybackUI(Z)V

    goto :goto_1

    .line 2835
    :pswitch_b
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightSourceRect:Landroid/graphics/RectF;

    :goto_3
    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoSourceRect:Landroid/graphics/RectF;

    .line 2836
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

    .line 2837
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2722

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2839
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onPreparing1stPlaybackSurface(ZLcom/htc/camera/splitcapture/SplitVideoCaptureState;Z)V

    .line 2840
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    goto :goto_2

    .line 2835
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftSourceRect:Landroid/graphics/RectF;

    goto :goto_3

    .line 2844
    :pswitch_c
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightSourceRect:Landroid/graphics/RectF;

    :goto_4
    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoSourceRect:Landroid/graphics/RectF;

    .line 2845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsRetake1stVideoBefore:Z

    .line 2848
    :pswitch_d
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftSourceRect:Landroid/graphics/RectF;

    :goto_5
    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SecondVideoSourceRect:Landroid/graphics/RectF;

    .line 2849
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_8

    .line 2850
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2856
    :cond_4
    :goto_6
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 2857
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2862
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;->FULL_VIDEO:Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FullSourceRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    new-instance v3, Lcom/htc/camera/splitcapture/SplitVideoUI$36;

    invoke-direct {v3, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$36;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareBufferBrush(Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;Landroid/graphics/RectF;ZLjava/lang/Runnable;)V

    .line 2872
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    goto/16 :goto_2

    .line 2844
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LeftSourceRect:Landroid/graphics/RectF;

    goto :goto_4

    .line 2848
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RightSourceRect:Landroid/graphics/RectF;

    goto :goto_5

    .line 2851
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_9

    .line 2852
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    .line 2853
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_4

    .line 2854
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    .line 2896
    :pswitch_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstAttachFrameDrew:Z

    .line 2897
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_AttachFrameCounter:I

    .line 2898
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_4

    :pswitch_f
    goto/16 :goto_0

    .line 2902
    :pswitch_10
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_0

    .line 2905
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-nez v0, :cond_d

    .line 2907
    new-instance v1, Lcom/htc/camera/widget/ShadowTextDrawable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x9

    cmp-long v0, v3, v5

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    .line 2908
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f090294

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 2912
    :goto_8
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_a

    .line 2913
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 2914
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    sget-object v1, Lcom/htc/camera/ICaptureBar$CaptureButton;->Video:Lcom/htc/camera/ICaptureBar$CaptureButton;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/ICaptureBar;->setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    .line 2916
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureBar;->showRecordingTimer(Ljava/lang/CharSequence;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    .line 2917
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_b

    .line 2918
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z

    .line 2921
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onRecordingStateChanged() - start to show recording timer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2922
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Timer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 2923
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentActualDurationTime:Ljava/lang/Long;

    .line 2924
    const/16 v2, 0x2719

    const/4 v3, -0x1

    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->INCREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Lcom/htc/camera/Duration;Z)Z

    goto/16 :goto_0

    .line 2907
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v3}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 2911
    :cond_d
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x9

    cmp-long v0, v3, v5

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v3}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 2934
    :pswitch_11
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_0

    .line 2937
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2939
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-nez v0, :cond_11

    .line 2941
    new-instance v0, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-direct {p0, v8, v9}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getRecordingTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/widget/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    .line 2942
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f090294

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 2946
    :goto_a
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_f

    .line 2947
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 2948
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    sget-object v1, Lcom/htc/camera/ICaptureBar$CaptureButton;->Video:Lcom/htc/camera/ICaptureBar$CaptureButton;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/ICaptureBar;->setCaptureIcon(Lcom/htc/camera/ICaptureBar$CaptureButton;Landroid/graphics/drawable/Drawable;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    .line 2950
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureBar;->showRecordingTimer(Ljava/lang/CharSequence;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    .line 2951
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_10

    .line 2952
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    const-wide/16 v3, 0x2

    rem-long v3, v8, v3

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z

    .line 2953
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentActualDurationTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    sub-long v10, v0, v2

    .line 2954
    const/16 v2, 0x2719

    long-to-int v3, v8

    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->DECREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v10, v11}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Lcom/htc/camera/Duration;Z)Z

    .line 2956
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStateChanged() - duration diff. of last seconds is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, autual = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentActualDurationTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, conter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2945
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-direct {p0, v8, v9}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getRecordingTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 2952
    :cond_12
    const/4 v0, 0x0

    goto :goto_b

    .line 2963
    :pswitch_12
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_5

    :pswitch_13
    goto/16 :goto_0

    .line 2968
    :pswitch_14
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Timer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 2969
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Timer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentActualDurationTime:Ljava/lang/Long;

    .line 2970
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStateChanged() - m_CurrentActualDurationTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentActualDurationTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2721

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentActualDurationTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto/16 :goto_0

    .line 2979
    :pswitch_15
    const/16 v0, 0x2719

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->removeMessages(I)V

    goto/16 :goto_0

    .line 2768
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_e
        :pswitch_12
    .end packed-switch

    .line 2771
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 2815
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 2830
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 2898
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
    .end packed-switch

    .line 2963
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method private onRetake1stVideoClicked()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2991
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "onRetake1stVideoClicked()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v1, v2, :cond_3

    .line 2994
    iget-boolean v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsRetake1stVideoBefore:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SecondVideoSourceRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2996
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v1, :cond_2

    .line 2998
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$37;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI$37;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)V

    invoke-interface {v1, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 3032
    :cond_2
    :goto_0
    return-void

    .line 3025
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 3026
    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->resetState(Z)V

    .line 3029
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-eqz v0, :cond_2

    .line 3030
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowRotateDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    goto :goto_0
.end method

.method private onRetake2ndVideoClicked()V
    .locals 3

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "onRetake2ndVideoClicked()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentBufferBrushSourceRect:Landroid/graphics/RectF;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3043
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v1, :cond_0

    .line 3045
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$38;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI$38;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)V

    invoke-interface {v1, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 3068
    :cond_0
    return-void

    .line 3041
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareBufferBrush(Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;Landroid/graphics/RectF;ZLjava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 3152
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsPreviewRendererInitialized:Z

    if-nez v0, :cond_0

    .line 3154
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "prepareNewBufferBrush() - preview renderer hasn\'t been initialized"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    :goto_0
    return-void

    .line 3158
    :cond_0
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$42;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/htc/camera/splitcapture/SplitVideoUI$42;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 3205
    if-eqz p3, :cond_1

    .line 3206
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3209
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v1, :cond_2

    .line 3210
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3212
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "prepareNewBufferBrush() - m_ViewFinder is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareConfirmMenuListView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 3108
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "prepareConfirmMenuListView()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    new-instance v0, Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

    .line 3111
    new-instance v0, Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Retake1stConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

    .line 3113
    new-instance v0, Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f08041d

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 3114
    new-instance v1, Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7f08041c

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 3116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3117
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3118
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Retake1stConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v3, v2}, Lcom/htc/camera/menu/MenuListView;->setItems(Ljava/util/List;)V

    .line 3119
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Retake1stConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

    new-instance v3, Lcom/htc/camera/splitcapture/SplitVideoUI$40;

    invoke-direct {v3, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI$40;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/menu/MenuItem;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/menu/MenuListView;->setOnMenuItemClickedListener(Lcom/htc/camera/menu/e;)V

    .line 3129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3130
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3131
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3132
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v3, v2}, Lcom/htc/camera/menu/MenuListView;->setItems(Ljava/util/List;)V

    .line 3133
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;

    new-instance v3, Lcom/htc/camera/splitcapture/SplitVideoUI$41;

    invoke-direct {v3, p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI$41;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/menu/MenuItem;Lcom/htc/camera/menu/MenuItem;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/menu/MenuListView;->setOnMenuItemClickedListener(Lcom/htc/camera/menu/e;)V

    .line 3145
    return-void
.end method

.method private prepareQuadrangle(Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;Z)V
    .locals 6

    .prologue
    .line 3221
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$43;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoUI$43;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$QuadrangleType;Lcom/htc/camera/splitcapture/SplitVideoUI$BrushType;ZLjava/lang/Runnable;)V

    .line 3274
    if-eqz p3, :cond_0

    .line 3275
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3283
    :goto_0
    return-void

    .line 3278
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v1, :cond_1

    .line 3279
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3281
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "prepareNewQuadrangle() - m_ViewFinder is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetState(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3290
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "resetState() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    if-eqz p1, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v1, 0x271c

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 3298
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v1, 0x2723

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 3301
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3304
    invoke-direct {p0, v4, v4, v4}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(ZZZ)V

    .line 3310
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 3311
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 3314
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsDeleteResult:Z

    .line 3315
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsRetake1stVideoBefore:Z

    .line 3316
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    .line 3317
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousToastHandle:Lcom/htc/camera/Handle;

    .line 3320
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 3322
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_1

    .line 3324
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 3325
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    .line 3330
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    .line 3333
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableSwitchCameraSliding()V

    .line 3336
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 3339
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3342
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3345
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3347
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_3

    .line 3349
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$44;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$44;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 3376
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 3377
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v0, :cond_2

    .line 3378
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 3380
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 3384
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showSecondPlaybackUI(Z)V

    .line 3385
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showFirstPlaybackUI(Z)V

    .line 3386
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewPlayBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 3387
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 3390
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 3391
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 3394
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->hideProcessingDialog()V

    .line 3396
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "resetState() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitVideoFinished:Z

    if-eqz v0, :cond_5

    .line 3398
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    iget v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwipeCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 3399
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI;->EVENT_SPLIT_CAPTRUE_FINISHED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;

    invoke-direct {v2, v0}, Lcom/htc/camera/splitcapture/SplitCaptureEventArgs;-><init>([Ljava/lang/Integer;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 3400
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitVideoFinished:Z

    .line 3401
    iput v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwipeCounter:I

    .line 3402
    iput v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeCounter:I

    .line 3404
    :cond_5
    return-void

    .line 3307
    :cond_6
    iput-boolean v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_isNeedSwitchCam:Z

    goto/16 :goto_0
.end method

.method private setPreviewToLeft(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3420
    .line 3423
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v2, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    invoke-static {v0, v1, v3}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/htc/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 3426
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 3427
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 3428
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 3429
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 3430
    return-void
.end method

.method private setPreviewToRight(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3437
    .line 3440
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v2, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p1, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    invoke-static {v0, v1, v3}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/htc/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 3443
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 3444
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 3445
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 3446
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 3447
    return-void
.end method

.method private setReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    .line 3456
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$45;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoUI$45;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 3468
    :cond_0
    return-void
.end method

.method private showFirstPlaybackUI(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3475
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3476
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 3480
    :goto_0
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsUIInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I

    if-gtz v0, :cond_0

    .line 3483
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I

    .line 3484
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFirstPlaybackUI() - initialized scroll threshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    :cond_0
    return-void

    .line 3478
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private showProcessingDialog()V
    .locals 2

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-nez v0, :cond_1

    .line 3514
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "showProcessingDialog() - cannot find IProcessingDialogManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3531
    :cond_0
    :goto_0
    return-void

    .line 3519
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 3521
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "showProcessingDialog() - handle exists! Close the last one first"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->hideProcessingDialog()V

    .line 3526
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-eqz v0, :cond_0

    .line 3528
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "showProcessingDialog()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private showSecondPlaybackUI(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3493
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3494
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    .line 3498
    :goto_0
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsUIInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I

    if-gtz v0, :cond_0

    .line 3501
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I

    .line 3502
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSecondPlaybackUI() - initialized scroll threshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    :cond_0
    return-void

    .line 3496
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3579
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchMode() - CameraType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cameraMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startPreview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", showPreviewCover = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    .line 3582
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 3584
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 3585
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v2, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->showPreviewCover(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 3588
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    .line 3589
    iput-boolean v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstFrameReceivedAfterSwitchMode:Z

    .line 3593
    return-void

    :cond_2
    move v0, v1

    .line 3580
    goto :goto_0
.end method

.method private switchMode(ZZZ)V
    .locals 5

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

    if-nez v0, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "switchMode() - m_FirstVideoCameraType is null. Reset to \"MAIN\""

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3541
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

    .line 3544
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3545
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3546
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3547
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3548
    const/4 v2, 0x0

    .line 3550
    if-nez p3, :cond_1

    .line 3552
    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 3571
    :goto_0
    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    .line 3572
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    .line 3575
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;ZZ)V

    .line 3576
    return-void

    .line 3557
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 3564
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3569
    goto :goto_0

    .line 3552
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private unblockCaptureUI()V
    .locals 2

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "unblockCaptureUI() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3603
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    if-nez v0, :cond_0

    .line 3605
    const-class v0, Lcom/htc/camera/w;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    .line 3606
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    if-nez v0, :cond_0

    .line 3608
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "unblockCaptureUI() - cannot find ICaptureUIBlockManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3623
    :goto_0
    return-void

    .line 3614
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 3616
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 3617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockHandle:Lcom/htc/camera/Handle;

    .line 3622
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "blockCaptureUI() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3620
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "unblockCaptureUI() - no handle was found"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateRecordingTime(Ljava/lang/Long;)V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    const/4 v5, 0x0

    const/16 v2, 0x2719

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    .line 3630
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-nez v0, :cond_0

    .line 3631
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "updateRecordingTime() - m_CaptureBar is null. Cannot update timer."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_6

    .line 3635
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3636
    sget-object v3, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    .line 3660
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getRecordingTimeString(J)Ljava/lang/String;

    move-result-object v0

    .line 3664
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v1, :cond_2

    .line 3666
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RecordingTimerDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 3667
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBarIconHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->invalidateCaptureButtonIcon(Lcom/htc/camera/Handle;)V

    .line 3669
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, v7}, Lcom/htc/camera/ICaptureBar;->updateRecordingTimer(Lcom/htc/camera/Handle;Z)Z

    .line 3673
    :goto_1
    return-void

    .line 3640
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v3}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 3641
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_3

    .line 3642
    iput-object v10, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationTime:Ljava/lang/Long;

    .line 3643
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v8

    long-to-int v3, v0

    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->INCREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->ordinal()I

    move-result v4

    invoke-static {v11, v12}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Lcom/htc/camera/Duration;Z)Z

    .line 3646
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3647
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-gez v1, :cond_1

    .line 3648
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 3640
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    .line 3656
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 3657
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v8

    long-to-int v3, v0

    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->DECREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->ordinal()I

    move-result v4

    invoke-static {v11, v12}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Lcom/htc/camera/Duration;Z)Z

    move-object v0, v10

    goto/16 :goto_0

    :cond_5
    move-wide v0, v8

    .line 3656
    goto :goto_3

    .line 3672
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "updateRecordingTime() - m_ShowCaptureBarTimerHandle is null. Cannot update timer."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public enter(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 549
    iput p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Flags:I

    .line 551
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "enter() - switch camera and enter video mode now"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    sget-object v3, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;ZZ)V

    .line 564
    invoke-direct {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enterSplitCaptureMode(Z)Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 552
    goto :goto_0
.end method

.method public exit(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 661
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "exit() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->threadAccessCheck()V

    .line 665
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Split Video mode is not entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_d

    .line 679
    const/4 v0, 0x1

    .line 680
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v2}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 682
    const/high16 v2, 0x10000

    and-int/2addr v2, p1

    if-nez v2, :cond_b

    .line 683
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 689
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 692
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 698
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/ICaptureBar;->restoreCaptureIcon(Lcom/htc/camera/Handle;)V

    .line 699
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowCaptureBarTimerHandle:Lcom/htc/camera/Handle;

    .line 703
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 706
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 709
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableSwitchCameraSliding()V

    .line 712
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->hideProcessingDialog()V

    .line 715
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentVolumeKeyType:Lcom/htc/camera/VolumeKeyType;

    if-eqz v0, :cond_5

    .line 717
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentVolumeKeyType:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 718
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentVolumeKeyType:Lcom/htc/camera/VolumeKeyType;

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsCurrentVolumeKeyHintShowed:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 724
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isVolumeKeyHintShown:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsCurrentVolumeKeyHintShowed:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 725
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentVolumeKeyType:Lcom/htc/camera/VolumeKeyType;

    .line 729
    :cond_6
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_c

    .line 731
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "exit() - No SplitVideoController"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 744
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 745
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureMainContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 746
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureMainContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 747
    :cond_8
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->collapseContentLayout()V

    .line 748
    iput-boolean v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsUIInitialized:Z

    .line 752
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 754
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    .line 755
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousToastHandle:Lcom/htc/camera/Handle;

    .line 757
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_a

    .line 760
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_9

    .line 762
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V

    .line 763
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewRendererHandle:Lcom/htc/camera/Handle;

    .line 767
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewBoundCalcHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 770
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewSourceRectHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 773
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 775
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 778
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 685
    :cond_b
    const/16 v0, 0x2713

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto/16 :goto_2

    .line 736
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v2, "exitSplitVideoMode()"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->exit(I)V

    goto :goto_3

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 799
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 965
    invoke-super {p0, p1}, Lcom/htc/camera/splitcapture/ISplitVideoController;->handleMessage(Landroid/os/Message;)V

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 802
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "Rube: handleMessage() - MSG_ZOE_ACTIVE_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto :goto_0

    .line 810
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - MSG_VIDEO_SAVED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/Path;

    .line 813
    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 817
    :pswitch_3
    if-eqz v0, :cond_1

    .line 818
    new-instance v1, Lcom/htc/camera/io/Path;

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_1st_Video_Path:Lcom/htc/camera/io/Path;

    .line 819
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - MSG_VIDEO_SAVED : 1st video path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_1st_Video_Path:Lcom/htc/camera/io/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - MSG_VIDEO_SAVED : video path is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :pswitch_4
    if-eqz v0, :cond_2

    .line 827
    new-instance v1, Lcom/htc/camera/io/Path;

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_2nd_Video_Path:Lcom/htc/camera/io/Path;

    .line 828
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - MSG_VIDEO_SAVED : 2nd video path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_2nd_Video_Path:Lcom/htc/camera/io/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - MSG_VIDEO_SAVED : video path is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 838
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_MergedCoverImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/16 v1, 0x2717

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto/16 :goto_0

    .line 858
    :pswitch_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 863
    :pswitch_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 868
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->onMediaPlayingPrepared()V

    goto/16 :goto_0

    .line 873
    :pswitch_9
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_5

    .line 874
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    goto/16 :goto_0

    .line 876
    :cond_5
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsResultDeletedForRetaking:Z

    goto/16 :goto_0

    .line 880
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->DECREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 881
    iget v0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->updateRecordingTime(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 882
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->INCREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 883
    iget v0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->updateRecordingTime(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 887
    :pswitch_b
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 888
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->showProcessingDialog()V

    goto/16 :goto_0

    .line 892
    :pswitch_c
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->hideProcessingDialog()V

    goto/16 :goto_0

    .line 897
    :pswitch_d
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 899
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 900
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->enableCapture()V

    .line 902
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_0

    .line 905
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsFirstFrameReceivedAfterSwitchMode:Z

    if-eqz v0, :cond_7

    .line 906
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 909
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto/16 :goto_0

    .line 916
    :pswitch_e
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 920
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->enableHighFrameRate()Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 923
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$7;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 936
    :pswitch_f
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->unblockCaptureUI()V

    .line 940
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowPreviewCoverHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 946
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HighFrameRateHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 949
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$8;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 959
    iget v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwipeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwipeCounter:I

    goto/16 :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 813
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 998
    invoke-super {p0}, Lcom/htc/camera/splitcapture/ISplitVideoController;->initializeOverride()V

    .line 1001
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v7}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1002
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "SplitVideoUI.m_IsMediaPlaying"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;

    .line 1003
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v7}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 1005
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$9;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1017
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$10;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1029
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$11;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1041
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1042
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/splitcapture/SplitVideoUI$12;

    invoke-direct {v3, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$12;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/component/UIComponentManager;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1096
    const-class v1, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1097
    const-class v1, Lcom/htc/camera/w;

    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1098
    const-class v1, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1099
    const-class v1, Lcom/htc/camera/ab;

    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1100
    const-class v1, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1101
    const-class v1, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1102
    const-class v1, Lcom/htc/camera/ICameraMenuUI;

    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1103
    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1104
    const-class v1, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-virtual {p0, v1, v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 1106
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$13;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1118
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->elapsedRecordingSeconds:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$14;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$14;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1130
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$15;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$15;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1142
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->switchingCameraModeEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$16;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$16;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1162
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->deletingLatestMediaEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$17;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$17;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1171
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$18;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$18;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1212
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$19;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/splitcapture/SplitVideoUI$19;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$20;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/splitcapture/SplitVideoUI$20;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$21;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/splitcapture/SplitVideoUI$21;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$22;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/splitcapture/SplitVideoUI$22;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoUI$23;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI$23;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    .line 2479
    invoke-super {p0, p1}, Lcom/htc/camera/splitcapture/ISplitVideoController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 2522
    instance-of v0, p1, Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2524
    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 2525
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 2528
    :cond_0
    instance-of v0, p1, Lcom/htc/camera/w;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 2530
    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureUIBlockManager:Lcom/htc/camera/w;

    .line 2531
    const-class v0, Lcom/htc/camera/w;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 2534
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 2536
    check-cast v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    .line 2537
    const-class v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 2540
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/ab;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 2542
    check-cast v0, Lcom/htc/camera/ab;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    .line 2543
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 2546
    :cond_3
    instance-of v0, p1, Lcom/htc/camera/IRotateDialogManager;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 2548
    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;

    .line 2549
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 2552
    :cond_4
    instance-of v0, p1, Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 2554
    check-cast v0, Lcom/htc/camera/ICaptureBar;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    .line 2555
    const-class v0, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 2558
    :cond_5
    instance-of v0, p1, Lcom/htc/camera/ICameraMenuUI;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 2560
    check-cast v0, Lcom/htc/camera/ICameraMenuUI;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    .line 2561
    const-class v0, Lcom/htc/camera/ICameraMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 2563
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    if-eqz v0, :cond_6

    .line 2565
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    iget-object v0, v0, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoUI$33;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoUI$33;-><init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2594
    :cond_6
    instance-of v0, p1, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 2595
    check-cast v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    .line 2597
    :cond_7
    instance-of v0, p1, Lcom/htc/camera/ak;

    if-eqz v0, :cond_8

    .line 2599
    check-cast p1, Lcom/htc/camera/ak;

    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 2600
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 2602
    :cond_8
    return-void
.end method

.method public setDuration(Lcom/htc/camera/Duration;)V
    .locals 0

    .prologue
    .line 3412
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentDurationLimit:Lcom/htc/camera/Duration;

    .line 3413
    return-void
.end method
