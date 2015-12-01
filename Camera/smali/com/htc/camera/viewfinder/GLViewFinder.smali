.class final Lcom/htc/camera/viewfinder/GLViewFinder;
.super Lcom/htc/camera/IViewFinder3D;
.source "GLViewFinder.java"

# interfaces
.implements Lcom/htc/camera/ui/ICameraPreviewOverlay;
.implements Lcom/htc/camera/ui/IOpenGLViewfinder;
.implements Lcom/htc/camera/ui/ISurfaceHolderViewfinder;


# static fields
.field private static final ARGB_CONFIG_ATTRS:[I

.field private static final FORCE_OPENGL_PREVIEW_RENDERING:Z

.field private static final NORMAL_PREVIEW_RENDERING_INTERVAL:J

.field private static final RECORDING_RENDERING_INTERVAL:J

.field private static final RGB_CONFIG_ATTRS:[I

.field private static final VIEW_ANGLE_RADIANS:F


# instance fields
.field private final m_AttachedSurfaceHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_BeginChangePreviewSrcRectRunnable:Ljava/lang/Runnable;

.field private final m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

.field private m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

.field private final m_DisablePreviewRenderingHandles:Lcom/htc/camera/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/s",
            "<",
            "Lcom/htc/camera/CloseableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DrawPreviewOverlayHandlers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_EGL:Ljavax/microedition/khronos/egl/EGL10;

.field private m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private final m_EGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private final m_EGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private m_Enable3DPreviewHandle:Lcom/htc/camera/Handle;

.field private final m_Force3DPreviewRenderingHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GLFpsSyncRoot:Ljava/lang/Object;

.field private m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

.field private m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

.field private m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private m_GLThread:Ljava/lang/Thread;

.field private final m_HighFpsEnableHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsDirectOutputSurfaceAvailable:Z

.field private m_IsGLRenderingEnabled:Z

.field private m_IsPreviewRenderingEnabled:Z

.field private volatile m_IsSwitchingPreviewSurface:Z

.field private m_IsWaitingForFirstPreviewFrame:Z

.field private m_LastPreviewFrameTime:J

.field private volatile m_NumberOfDrawnGLFrames:I

.field private volatile m_NumberOfReceivedPreviewFrames:I

.field private final m_OneShotPreviewCallback:Lcom/htc/camera/o;

.field private volatile m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

.field private m_PreviewAdapterInUIThread:Lcom/htc/camera/CameraPreviewAdapter;

.field private final m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

.field private volatile m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

.field private m_PreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

.field private m_PreviewCoverBrush:Lcom/htc/camera/gl/SolidColorBrush;

.field private final m_PreviewCoverHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewCoverQuadrangle:Lcom/htc/camera/gl/Quadrangle;

.field private m_PreviewFilter:Landroid/view/View;

.field private m_PreviewFilterRendererCount:I

.field private final m_PreviewFilterRendererHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewFrameDropCount:I

.field private m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

.field private volatile m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

.field private final m_PreviewResourcesLock:Ljava/lang/Object;

.field private m_PreviewSourceRect:Landroid/graphics/RectF;

.field private final m_PreviewSourceRectHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewSrcChangingCounter:I

.field private m_PreviousFpsCheckTime:J

.field private final m_RecreateSurfacesRunnable:Ljava/lang/Runnable;

.field private final m_RendererSyncRoot:Ljava/lang/Object;

.field private final m_UpdateViewfinderBoundsRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 98
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->force3DPreviewRendering()Z

    move-result v0

    sput-boolean v0, Lcom/htc/camera/viewfinder/GLViewFinder;->FORCE_OPENGL_PREVIEW_RENDERING:Z

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->ARGB_CONFIG_ATTRS:[I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->RGB_CONFIG_ATTRS:[I

    .line 466
    invoke-static {}, Lcom/htc/camera/CameraNativeLibrary;->initialize()V

    .line 467
    const v0, 0x3f860a92

    sput v0, Lcom/htc/camera/viewfinder/GLViewFinder;->VIEW_ANGLE_RADIANS:F

    .line 468
    const-wide/32 v0, 0x1fca055

    sput-wide v0, Lcom/htc/camera/viewfinder/GLViewFinder;->NORMAL_PREVIEW_RENDERING_INTERVAL:J

    .line 469
    const-wide/32 v0, 0x220f4ed

    sput-wide v0, Lcom/htc/camera/viewfinder/GLViewFinder;->RECORDING_RENDERING_INTERVAL:J

    .line 470
    return-void

    .line 106
    nop

    :array_0
    .array-data 4
        0x3032
        0x1
        0x3031
        0x2
        0x3025
        0x10
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    .line 118
    :array_1
    .array-data 4
        0x3032
        0x1
        0x3031
        0x2
        0x3025
        0x10
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 477
    const-string v0, "Viewfinder (OpenGL)"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/htc/camera/IViewFinder3D;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 148
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$1;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_BeginChangePreviewSrcRectRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DrawPreviewOverlayHandlers:Ljava/util/LinkedList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Force3DPreviewRenderingHandles:Ljava/util/ArrayList;

    .line 161
    iput-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLFpsSyncRoot:Ljava/lang/Object;

    .line 164
    iput-boolean v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsGLRenderingEnabled:Z

    .line 167
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;

    .line 172
    sget-boolean v0, Lcom/htc/camera/viewfinder/GLViewFinder;->FORCE_OPENGL_PREVIEW_RENDERING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    :goto_0
    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    .line 173
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    .line 176
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$2;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_RecreateSurfacesRunnable:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$3;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_OneShotPreviewCallback:Lcom/htc/camera/o;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {v0, v3, v1, v3}, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;-><init>(Landroid/view/Surface;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/ao;)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    .line 203
    new-instance v0, Lcom/htc/camera/s;

    invoke-direct {v0}, Lcom/htc/camera/s;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DisablePreviewRenderingHandles:Lcom/htc/camera/s;

    .line 210
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_HighFpsEnableHandles:Ljava/util/ArrayList;

    .line 214
    iput-boolean v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsPreviewRenderingEnabled:Z

    .line 215
    iput-boolean v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsWaitingForFirstPreviewFrame:Z

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_RendererSyncRoot:Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$4;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_UpdateViewfinderBoundsRunnable:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$5;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 261
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$6;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 478
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->enablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V

    .line 479
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->enablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V

    .line 480
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->initialize()V

    .line 481
    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    goto/16 :goto_0
.end method

.method static synthetic access$004(Lcom/htc/camera/viewfinder/GLViewFinder;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSrcChangingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSrcChangingCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->startRatioChangeAnimation(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->recreateSurfaces()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/camera/viewfinder/GLViewFinder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->onSharedEGLContextCreated(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->hidePreviewCover(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->removePreviewBoundsCalculator(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->restorePreviewSourceRect(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->addPreviewFilterRendererInternal(Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->attachRenderingSurfaceInternal(Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->onPreviewGLResourcesCleared()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/viewfinder/GLViewFinder;FFFF)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/viewfinder/GLViewFinder;->onPreviewSourceRectChanged(FFFF)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->onPreviewGLResourcesCreated(Lcom/htc/camera/CameraPreviewAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/component/Component;IZ)Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->detachRenderingSurfaceInternal(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->disableHighFrameRateInternal(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CloseableHandle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->enablePreviewRenderingInternal(Lcom/htc/camera/CloseableHandle;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CloseableHandle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->disablePreviewRenderingInternal(Lcom/htc/camera/CloseableHandle;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->disableHighFrameRate(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->enableHighFrameRateInternal(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->release3DPreviewRendering(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method static synthetic access$3902(Lcom/htc/camera/viewfinder/GLViewFinder;Z)Z
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsWaitingForFirstPreviewFrame:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/imaging/Size;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V

    return-void
.end method

.method static synthetic access$4002(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;)Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/StopWatch;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/StopWatch;)Lcom/htc/camera/StopWatch;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->onDirectOutputSurfaceCreated()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->onDirectOutputSurfaceDestroyed()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->onGLSurfaceViewCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/viewfinder/GLViewFinder;->onGLSurfaceViewChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->onDrawGLSurfaceView(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->suspendGLRendering(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->ARGB_CONFIG_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->resumeGLRendering()V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/camera/viewfinder/GLViewFinder;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/camera/viewfinder/GLViewFinder;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsDirectOutputSurfaceAvailable:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/camera/viewfinder/GLViewFinder;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsGLRenderingEnabled:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/CameraPreviewAdapter;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapterInUIThread:Lcom/htc/camera/CameraPreviewAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/viewfinder/GLViewFinder;->createEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/camera/viewfinder/GLViewFinder;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/htc/camera/viewfinder/GLViewFinder;Z)Z
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->onFirstPreviewFrameReceived()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p6}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_RecreateSurfacesRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/camera/viewfinder/GLViewFinder;I)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->hidePreviewCoverInternal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_RendererSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$7100(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->onCameraThreadPreviewStarted()V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/o;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_OneShotPreviewCallback:Lcom/htc/camera/o;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->removePreviewFilterRendererInternal(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->restorePreviewSourceRectInternal(Lcom/htc/camera/Handle;I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->onRendererThreadResumed()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->setPreviewSourceRectInternal(Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/htc/camera/viewfinder/GLViewFinder;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->onDrawPreviewFilter(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->onRendererThreadSuspended(Z)V

    return-void
.end method

.method static synthetic access$8300(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/htc/camera/viewfinder/GLViewFinder;ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/viewfinder/GLViewFinder;->calculatePreviewBounds(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addPreviewFilterRendererInternal(Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;)V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "addPreviewFilterRendererInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 597
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsPreviewRenderingEnabled:Z

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;->renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->initialize()V

    .line 602
    :cond_0
    return-void
.end method

.method private attachRenderingSurfaceInternal(Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;)V
    .locals 6

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "attachRenderingSurfaceInternal() - Handle : "

    const-string v2, ", size : "

    iget-object v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 660
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget-object v4, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->rotation:Lcom/htc/camera/rotate/UIRotation;

    iget-object v5, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->calculatePreviewBounds(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V

    .line 661
    iget-object v0, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v1, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    iget-object v2, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->mvpMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->calculateMvpMatrix(II[F)V

    .line 662
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    return-void
.end method

.method private calculateMvpMatrix(II[F)V
    .locals 15

    .prologue
    .line 670
    move/from16 v0, p1

    int-to-float v1, v0

    move/from16 v0, p2

    int-to-float v2, v0

    div-float v4, v1, v2

    .line 671
    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 672
    const/16 v2, 0x10

    new-array v13, v2, [F

    .line 673
    move/from16 v0, p2

    int-to-double v2, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    sget v7, Lcom/htc/camera/viewfinder/GLViewFinder;->VIEW_ANGLE_RADIANS:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v2, v5

    double-to-float v14, v2

    .line 674
    const/4 v2, 0x0

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x459c4000    # 5000.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 675
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v2, v13

    move v6, v14

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 676
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object v4, v1

    move-object v6, v13

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 677
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 678
    const/4 v1, 0x0

    div-int/lit8 v2, p1, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 679
    return-void
.end method

.method private calculatePreviewBounds(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    const v5, 0x3d8f5c29    # 0.07f

    .line 687
    if-nez p2, :cond_8

    .line 689
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    .line 690
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    .line 692
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {p4}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 693
    new-instance v2, Lcom/htc/camera/imaging/Size;

    iget v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-direct {v2, v1, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 697
    :goto_1
    if-eqz v2, :cond_3

    .line 699
    iget v0, p3, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v0, v0

    iget v1, v2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 700
    iget v1, p3, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v1, v1

    iget v3, v2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 701
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 702
    iget v0, v2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 703
    iget v3, v2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 704
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->keepPreviewRatio()Z

    move-result v3

    if-nez v3, :cond_6

    .line 706
    iget v3, p3, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 707
    iget v0, p3, Lcom/htc/camera/imaging/Size;->width:I

    .line 708
    :cond_0
    iget v3, p3, Lcom/htc/camera/imaging/Size;->height:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_6

    .line 709
    iget v1, p3, Lcom/htc/camera/imaging/Size;->height:I

    move v6, v1

    move v1, v0

    move v0, v6

    .line 719
    :goto_2
    iget v3, p3, Lcom/htc/camera/imaging/Size;->height:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 720
    iget v4, p3, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 721
    iput v4, p5, Landroid/graphics/Rect;->left:I

    .line 722
    iput v3, p5, Landroid/graphics/Rect;->top:I

    .line 723
    iget v3, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, p5, Landroid/graphics/Rect;->right:I

    .line 724
    iget v1, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 727
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;

    monitor-enter v3

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 730
    if-lez v1, :cond_1

    .line 732
    if-nez v2, :cond_5

    .line 733
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 734
    :goto_3
    new-instance v2, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;

    invoke-direct {v2, p1, p3, v0, p4}, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;-><init>(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;)V

    .line 735
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 736
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_1

    .line 738
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;->calculator:Lcom/htc/camera/ui/a;

    invoke-interface {v0, v2, v4}, Lcom/htc/camera/ui/a;->onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 740
    invoke-virtual {p5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 745
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    return-void

    .line 690
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 714
    :cond_3
    iget v1, p3, Lcom/htc/camera/imaging/Size;->width:I

    .line 715
    iget v0, p3, Lcom/htc/camera/imaging/Size;->height:I

    goto :goto_2

    .line 736
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 745
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move-object v0, v2

    goto :goto_3

    :cond_6
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2

    :cond_7
    move-object v2, v0

    goto/16 :goto_1

    :cond_8
    move-object v0, p2

    goto/16 :goto_0
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 756
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEglError() - Operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_0
    return-void
.end method

.method private checkFps()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 766
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLFpsSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 768
    :try_start_0
    iget-wide v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviousFpsCheckTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 770
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviousFpsCheckTime:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    .line 771
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_NumberOfDrawnGLFrames:I

    int-to-double v6, v0

    div-double/2addr v6, v4

    .line 772
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_NumberOfReceivedPreviewFrames:I

    int-to-double v8, v0

    div-double v4, v8, v4

    .line 773
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "checkGLFps() - GL FPS : %.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "checkGLFps() - Preview FPS : %.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_NumberOfDrawnGLFrames:I

    .line 777
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_NumberOfReceivedPreviewFrames:I

    .line 778
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviousFpsCheckTime:J

    .line 780
    const/16 v2, 0x271a

    const/4 v5, 0x0

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 781
    return-void

    .line 778
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private clearPreviewGLResources(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 788
    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 789
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/CameraPreviewBrush;->release()V

    .line 792
    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverBrush:Lcom/htc/camera/gl/SolidColorBrush;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v0}, Lcom/htc/camera/gl/SolidColorBrush;->release()V

    .line 797
    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverBrush:Lcom/htc/camera/gl/SolidColorBrush;

    .line 799
    :cond_1
    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 800
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    if-eqz v0, :cond_2

    .line 802
    if-eqz p1, :cond_3

    .line 804
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$9;

    invoke-direct {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$9;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 812
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "clearPreviewGLResources() - Release preview adapter [start]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->release()V

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 817
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "clearPreviewGLResources() - Release preview adapter [end]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_2
    :goto_0
    return-void

    .line 817
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 821
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->releaseTexture()V

    goto :goto_0
.end method

.method private createEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 890
    new-array v5, v4, [I

    .line 891
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .line 892
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v0, v5, v6

    if-gtz v0, :cond_1

    .line 893
    :cond_0
    const/4 v0, 0x0

    .line 894
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v3, v6

    goto :goto_0
.end method

.method private createPreviewGLResources(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 902
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "createPreviewGLResources()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "createPreviewGLResources() - Resources are already created"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-direct {p0, v4}, Lcom/htc/camera/viewfinder/GLViewFinder;->clearPreviewGLResources(Z)V

    .line 915
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    if-nez v0, :cond_2

    .line 916
    new-instance v0, Lcom/htc/camera/CameraPreviewAdapter;

    invoke-direct {v0}, Lcom/htc/camera/CameraPreviewAdapter;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 919
    :goto_1
    new-instance v0, Lcom/htc/camera/gl/CameraPreviewBrush;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-direct {v0, v1}, Lcom/htc/camera/gl/CameraPreviewBrush;-><init>(Lcom/htc/camera/CameraPreviewAdapter;)V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    .line 920
    new-instance v0, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v0}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 921
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 924
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    .line 927
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "createPreviewGLResources() - Source rectangle handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 928
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "createPreviewGLResources() - Rect : ("

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->left:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->top:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->right:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->bottom:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ")"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    iget v2, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->left:F

    iget v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->top:F

    sub-float v3, v6, v3

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->right:F

    iget v5, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->bottom:F

    sub-float v5, v6, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/camera/gl/CameraPreviewBrush;->setSourceRect(FFFF)V

    .line 930
    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$10;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder$10;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 942
    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$11;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder$11;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CameraPreviewAdapter;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->bindToTexture()V

    goto/16 :goto_1
.end method

.method private detachRenderingSurfaceInternal(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 994
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "detachRenderingSurfaceInternal() - Handle"

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 995
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    check-cast p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v0, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 998
    if-eqz v0, :cond_0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detachRenderingSurfaceInternal() - Fail to destroy EGL surface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "detachRenderingSurfaceInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableHighFrameRate(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "disableHighFrameRate() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :goto_0
    return-void

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 1025
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "disableHighFrameRate() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "disableHighFrameRate() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$13;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$13;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1045
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "disableHighFrameRate() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableHighFrameRateInternal(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "disableHighFrameRateInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_HighFpsEnableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "disableHighFrameRateInternal() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_HighFpsEnableHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1058
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "disableHighFrameRateInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disablePreviewRenderingInternal(Lcom/htc/camera/CloseableHandle;)V
    .locals 3

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DisablePreviewRenderingHandles:Lcom/htc/camera/s;

    invoke-virtual {v0, p1}, Lcom/htc/camera/s;->addLast(Ljava/lang/Object;)V

    .line 1117
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablePreviewRenderingInternal() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handle count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DisablePreviewRenderingHandles:Lcom/htc/camera/s;

    invoke-virtual {v2}, Lcom/htc/camera/s;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method private enableHighFrameRateInternal(Lcom/htc/camera/Handle;)V
    .locals 3

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "enableHighFrameRateInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1171
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_HighFpsEnableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "enableHighFrameRateInternal() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_HighFpsEnableHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1173
    return-void
.end method

.method private enablePreviewRenderingInternal(Lcom/htc/camera/CloseableHandle;)V
    .locals 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DisablePreviewRenderingHandles:Lcom/htc/camera/s;

    invoke-virtual {v0, p1}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePreviewRenderingInternal() - Handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handle count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DisablePreviewRenderingHandles:Lcom/htc/camera/s;

    invoke-virtual {v2}, Lcom/htc/camera/s;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hidePreviewCover(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 1341
    if-nez p1, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "hidePreviewCover() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 1349
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "hidePreviewCover() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "hidePreviewCover() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1357
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->hidePreviewCoverInternal(Z)V

    goto :goto_0
.end method

.method private hidePreviewCoverInternal(Z)V
    .locals 2

    .prologue
    .line 1362
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSrcChangingCounter:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->Waiting:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    if-ne v0, v1, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "hidePreviewCoverInternal()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    if-eqz p1, :cond_5

    .line 1370
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->FadingOut:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 1371
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    if-nez v0, :cond_2

    .line 1372
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    .line 1373
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 1376
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_4

    .line 1378
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$21;

    invoke-direct {v1, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$21;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1395
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_3

    .line 1396
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invalidateOverlay()V

    .line 1397
    :cond_3
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_IS_PREVIEW_COVER_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1391
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "hidePreviewCoverInternal() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1394
    :cond_5
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    goto :goto_1
.end method

.method private onCameraThreadPreviewStarted()V
    .locals 6

    .prologue
    .line 1851
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadPreviewStarted() - Start waiting for first preview frame"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$39;

    invoke-direct {v1, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$39;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1864
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    if-nez v0, :cond_1

    .line 1865
    const/16 v2, 0x2739

    const-wide/16 v3, 0x64

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 1866
    :cond_1
    return-void
.end method

.method private onCameraThreadRunning()V
    .locals 2

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$38;

    invoke-direct {v1, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$38;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1843
    return-void
.end method

.method private onDirectOutputSurfaceCreated()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1873
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onDirectOutputSurfaceCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    iput-boolean v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsDirectOutputSurfaceAvailable:Z

    .line 1877
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    .line 1879
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1881
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1883
    :try_start_0
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1884
    monitor-exit v1

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1887
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onDirectOutputSurfaceCreated() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDirectOutputSurfaceDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1896
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onDirectOutputSurfaceDestroyed()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iput-boolean v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsDirectOutputSurfaceAvailable:Z

    .line 1900
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    .line 1902
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1904
    :try_start_0
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1905
    monitor-exit v1

    .line 1907
    :cond_0
    return-void

    .line 1905
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onDrawGLSurfaceView(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 1916
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_1

    .line 1921
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v1, 0x3059

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1922
    const-string v0, "Get default draw surface"

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkEglError(Ljava/lang/String;)V

    .line 1923
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v1, 0x305a

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1924
    const-string v0, "Get default read surface"

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkEglError(Ljava/lang/String;)V

    .line 1925
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onDrawGLSurfaceView() - EGL surface (draw) : "

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1926
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onDrawGLSurfaceView() - EGL surface (read) : "

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    if-nez v0, :cond_2

    .line 1932
    const/4 v0, 0x0

    move v1, v0

    .line 1993
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->renderPreview(Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;Z)V

    .line 1996
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1997
    if-lez v7, :cond_22

    .line 1999
    const/4 v2, 0x0

    .line 2000
    add-int/lit8 v0, v7, -0x1

    move v6, v0

    :goto_1
    if-ltz v6, :cond_1f

    .line 2003
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    .line 2004
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    if-eqz v3, :cond_c

    .line 2006
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    iget-object v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-interface {v3, v0, v4}, Lcom/htc/camera/ao;->a(Lcom/htc/camera/Handle;Landroid/view/Surface;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2008
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrawGLSurfaceView() - Surface for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is invalid"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 2000
    :goto_2
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    move v2, v0

    goto :goto_1

    .line 1933
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsPreviewRenderingEnabled:Z

    if-eqz v0, :cond_b

    .line 1935
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/CameraPreviewAdapter;->updatePreviewFrame()V

    .line 1936
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsWaitingForFirstPreviewFrame:Z

    if-nez v0, :cond_5

    .line 1938
    const/4 v0, 0x1

    .line 1939
    iget v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFrameDropCount:I

    if-lez v1, :cond_3

    .line 1941
    iget v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFrameDropCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFrameDropCount:I

    .line 1942
    iget v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFrameDropCount:I

    if-gtz v1, :cond_4

    .line 1943
    const/16 v1, 0x2724

    const/4 v2, 0x1

    invoke-virtual {p0, p0, v1, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 1987
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewAdapter;->getLastPreviewFrameTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_LastPreviewFrameTime:J

    move v1, v0

    goto :goto_0

    .line 1945
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawGLSurfaceView() - Send MSG_FIRST_PREVIEW_FRAME_RECEIVED later : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFrameDropCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1955
    :cond_5
    iget-wide v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_LastPreviewFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 1957
    iget-wide v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_LastPreviewFrameTime:J

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {v2}, Lcom/htc/camera/CameraPreviewAdapter;->getLastPreviewFrameTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v6, 0x1

    .line 1958
    :goto_4
    if-nez v6, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsWaitingForFirstPreviewFrame:Z

    .line 1959
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsWaitingForFirstPreviewFrame:Z

    if-nez v0, :cond_27

    .line 1961
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onDrawGLSurfaceView() - First preview frame received"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFrameDropCount:I

    if-gtz v0, :cond_6

    .line 1963
    const/16 v0, 0x2724

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 1966
    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->rotation:Lcom/htc/camera/rotate/UIRotation;

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v5, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->calculatePreviewBounds(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V

    .line 1974
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_9

    .line 1975
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_AttachedSurfaceHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1974
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6

    .line 1957
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 1958
    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    move v0, v6

    .line 1974
    goto/16 :goto_3

    .line 1986
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1990
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 2017
    :cond_c
    :try_start_0
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_e

    .line 2019
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrawGLSurfaceView() - Surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid, handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2111
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    if-eqz v3, :cond_d

    .line 2112
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    iget-object v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-interface {v3, v0, v4}, Lcom/htc/camera/ao;->b(Lcom/htc/camera/Handle;Landroid/view/Surface;)V

    :cond_d
    move v0, v2

    .line 2020
    goto/16 :goto_2

    .line 2022
    :cond_e
    :try_start_1
    iget-boolean v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->hasError:Z

    if-eqz v3, :cond_10

    .line 2024
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrawGLSurfaceView() - Ignore surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because of previous error, handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2111
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    if-eqz v3, :cond_f

    .line 2112
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    iget-object v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-interface {v3, v0, v4}, Lcom/htc/camera/ao;->b(Lcom/htc/camera/Handle;Landroid/view/Surface;)V

    :cond_f
    move v0, v2

    .line 2025
    goto/16 :goto_2

    .line 2029
    :cond_10
    :try_start_2
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 2030
    if-eqz v3, :cond_11

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_26

    .line 2032
    :cond_11
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v8, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    const/4 v9, 0x0

    invoke-interface {v3, v4, v5, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    .line 2033
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v3, v4, :cond_13

    .line 2035
    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v5, "onDrawGLSurfaceView() - Create EGL surface for "

    invoke-static {v4, v5, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2036
    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v5, "onDrawGLSurfaceView() - EGL surface size : "

    iget-object v8, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    invoke-static {v4, v5, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2037
    iput-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object v5, v3

    .line 2049
    :goto_7
    sget-boolean v3, Lcom/htc/camera/viewfinder/GLViewFinder;->PROFILE_GL_OPERATION:Z

    if-eqz v3, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2050
    :goto_8
    iget-object v8, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v8, v9, v5, v5, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 2052
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrawGLSurfaceView() - Fail to switch to EGL surface for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    const-string v3, "Switch EGL surface"

    invoke-direct {p0, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkEglError(Ljava/lang/String;)V

    .line 2054
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->hasError:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2111
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    if-eqz v3, :cond_12

    .line 2112
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    iget-object v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-interface {v3, v0, v4}, Lcom/htc/camera/ao;->b(Lcom/htc/camera/Handle;Landroid/view/Surface;)V

    :cond_12
    move v0, v2

    .line 2055
    goto/16 :goto_2

    .line 2041
    :cond_13
    :try_start_3
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrawGLSurfaceView() - Fail to create EGL surface for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    const-string v3, "Create EGL surface"

    invoke-direct {p0, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkEglError(Ljava/lang/String;)V

    .line 2043
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->hasError:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2111
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    if-eqz v3, :cond_14

    .line 2112
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    iget-object v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-interface {v3, v0, v4}, Lcom/htc/camera/ao;->b(Lcom/htc/camera/Handle;Landroid/view/Surface;)V

    :cond_14
    move v0, v2

    .line 2044
    goto/16 :goto_2

    .line 2049
    :cond_15
    const-wide/16 v3, 0x0

    goto :goto_8

    .line 2057
    :cond_16
    :try_start_4
    sget-boolean v2, Lcom/htc/camera/viewfinder/GLViewFinder;->PROFILE_GL_OPERATION:Z

    if-eqz v2, :cond_17

    .line 2059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v8, v3

    .line 2060
    const-wide/16 v8, 0x14

    cmp-long v4, v2, v8

    if-lez v4, :cond_17

    .line 2061
    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDrawGLSurfaceView() - Take "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms to call eglMakeCurrent(), EGL surface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    :cond_17
    const/4 v2, 0x1

    .line 2066
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v8, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget v8, v8, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v9, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget v9, v9, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v3, v4, v8, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 2067
    const-string v3, "Setup view port"

    invoke-direct {p0, v3}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkEglError(Ljava/lang/String;)V

    .line 2070
    invoke-direct {p0, v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->renderPreview(Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;Z)V

    .line 2075
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_HighFpsEnableHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_18

    iget-wide v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->lastDrawingTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-lez v3, :cond_18

    .line 2077
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v8, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->lastDrawingTime:J

    sub-long v8, v3, v8

    .line 2078
    if-lez v7, :cond_1c

    sget-wide v3, Lcom/htc/camera/viewfinder/GLViewFinder;->RECORDING_RENDERING_INTERVAL:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2079
    :goto_9
    cmp-long v10, v8, v3

    if-gez v10, :cond_18

    .line 2083
    sub-long/2addr v3, v8

    const-wide/32 v8, 0xf4240

    :try_start_5
    div-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2094
    :cond_18
    :goto_a
    :try_start_6
    sget-boolean v3, Lcom/htc/camera/viewfinder/GLViewFinder;->PROFILE_GL_OPERATION:Z

    if-eqz v3, :cond_1e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2095
    :goto_b
    iget-object v8, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v8, v9, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 2097
    iget-object v8, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDrawGLSurfaceView() - Fail to swap buffer for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    const-string v8, "Swap buffer"

    invoke-direct {p0, v8}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkEglError(Ljava/lang/String;)V

    .line 2099
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->hasError:Z

    .line 2101
    :cond_19
    sget-boolean v8, Lcom/htc/camera/viewfinder/GLViewFinder;->PROFILE_GL_OPERATION:Z

    if-eqz v8, :cond_1a

    .line 2103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v3, v8, v3

    .line 2104
    const-wide/16 v8, 0x14

    cmp-long v8, v3, v8

    if-lez v8, :cond_1a

    .line 2105
    iget-object v8, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDrawGLSurfaceView() - Take "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms to call eglSwapBuffers(), EGL surface : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    :cond_1a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->lastDrawingTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2111
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    if-eqz v3, :cond_1b

    .line 2112
    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    iget-object v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-interface {v3, v0, v4}, Lcom/htc/camera/ao;->b(Lcom/htc/camera/Handle;Landroid/view/Surface;)V

    :cond_1b
    move v0, v2

    .line 2113
    goto/16 :goto_2

    .line 2078
    :cond_1c
    :try_start_7
    sget-wide v3, Lcom/htc/camera/viewfinder/GLViewFinder;->NORMAL_PREVIEW_RENDERING_INTERVAL:J

    goto/16 :goto_9

    .line 2085
    :catch_0
    move-exception v3

    .line 2087
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v4, "onDrawGLSurfaceView() - Sleep has been interrupted"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_a

    .line 2111
    :catchall_0
    move-exception v1

    iget-object v2, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    if-eqz v2, :cond_1d

    .line 2112
    iget-object v2, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    invoke-interface {v2, v0, v3}, Lcom/htc/camera/ao;->b(Lcom/htc/camera/Handle;Landroid/view/Surface;)V

    .line 2111
    :cond_1d
    throw v1

    .line 2094
    :cond_1e
    const-wide/16 v3, 0x0

    goto/16 :goto_b

    .line 2115
    :cond_1f
    if-eqz v2, :cond_22

    .line 2117
    sget-boolean v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROFILE_GL_OPERATION:Z

    if-eqz v0, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2118
    :goto_c
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 2120
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "onDrawGLSurfaceView() - Fail to switch to default EGL surface"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const-string v2, "Switch to default EGL surface"

    invoke-direct {p0, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkEglError(Ljava/lang/String;)V

    .line 2123
    :cond_20
    sget-boolean v2, Lcom/htc/camera/viewfinder/GLViewFinder;->PROFILE_GL_OPERATION:Z

    if-eqz v2, :cond_21

    .line 2125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 2126
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    .line 2127
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDrawGLSurfaceView() - Take "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms to call eglMakeCurrent(), EGL surface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    :cond_21
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v2, v2, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v3, v3, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 2130
    const-string v0, "Restore default view port"

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkEglError(Ljava/lang/String;)V

    .line 2137
    :cond_22
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_HighFpsEnableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-wide v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->lastDrawingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    .line 2139
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-wide v2, v2, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->lastDrawingTime:J

    sub-long v2, v0, v2

    .line 2140
    if-lez v7, :cond_25

    sget-wide v0, Lcom/htc/camera/viewfinder/GLViewFinder;->RECORDING_RENDERING_INTERVAL:J

    .line 2141
    :goto_d
    cmp-long v4, v2, v0

    if-gez v4, :cond_23

    .line 2145
    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    :try_start_8
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 2153
    :cond_23
    :goto_e
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->lastDrawingTime:J

    .line 2164
    return-void

    .line 2117
    :cond_24
    const-wide/16 v0, 0x0

    goto/16 :goto_c

    .line 2140
    :cond_25
    sget-wide v0, Lcom/htc/camera/viewfinder/GLViewFinder;->NORMAL_PREVIEW_RENDERING_INTERVAL:J

    goto :goto_d

    .line 2147
    :catch_1
    move-exception v0

    .line 2149
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onDrawGLSurfaceView() - Sleep has been interrupted"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_26
    move-object v5, v3

    goto/16 :goto_7

    :cond_27
    move v0, v6

    goto/16 :goto_3
.end method

.method private onDrawPreviewFilter(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2172
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DrawPreviewOverlayHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v8

    .line 2173
    if-lez v8, :cond_2

    .line 2175
    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    .line 2176
    new-instance v0, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    sget-object v3, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/htc/camera/imaging/Size;

    iget v4, v1, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    invoke-direct {v3, v4, v1}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    :goto_0
    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    sget-object v5, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    if-eq v1, v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;-><init>(Landroid/graphics/Canvas;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;Z)V

    move v2, v6

    .line 2184
    :goto_2
    if-ge v2, v8, :cond_2

    .line 2185
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DrawPreviewOverlayHandlers:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/base/b;

    sget-object v3, Lcom/htc/camera/viewfinder/GLViewFinder;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    invoke-interface {v1, p0, v3, v0}, Lcom/htc/camera/base/b;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 2184
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 2176
    :cond_0
    new-instance v3, Lcom/htc/camera/imaging/Size;

    iget v4, v1, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    invoke-direct {v3, v4, v1}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .line 2190
    :cond_2
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$AnimationState:[I

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    invoke-virtual {v1}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v7

    .line 2215
    :goto_3
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v1, v2, :cond_3

    .line 2216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2217
    :cond_3
    return-void

    .line 2193
    :pswitch_0
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 2196
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v0

    .line 2197
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    const-wide/16 v2, 0x190

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 2199
    const-wide v2, 0x406fe00000000000L    # 255.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    long-to-double v0, v0

    const-wide/high16 v7, 0x4079000000000000L    # 400.0

    div-double/2addr v0, v7

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2200
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invalidateOverlay()V

    goto :goto_3

    .line 2196
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_4

    .line 2204
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    if-eqz v0, :cond_6

    .line 2205
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 2206
    :cond_6
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 2207
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invalidateOverlay()V

    move-object v0, v7

    .line 2210
    goto :goto_3

    .line 2190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onFirstPreviewFrameReceived()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2279
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onFirstPreviewFrameReceived()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    .line 2285
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_1

    .line 2287
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererCount:I

    if-nez v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 2297
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->hidePreviewCoverInternal(Z)V

    .line 2298
    return-void

    .line 2292
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onGLSurfaceViewChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2224
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "onGLSurfaceViewChanged() - "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " x "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v3, v4, v5, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2227
    if-nez p3, :cond_0

    move p3, v1

    .line 2231
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->mvpMatrix:[F

    invoke-direct {p0, p2, p3, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->calculateMvpMatrix(II[F)V

    .line 2232
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iput p2, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 2233
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iput p3, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 2234
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->rotation:Lcom/htc/camera/rotate/UIRotation;

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    iget-object v5, v0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->calculatePreviewBounds(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V

    .line 2240
    invoke-static {v6, v6, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 2243
    iput-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 2244
    iput-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 2247
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2248
    if-lez v3, :cond_3

    .line 2251
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    .line 2253
    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2255
    iget v2, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    .line 2256
    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 2263
    :goto_0
    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    .line 2264
    sub-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    .line 2265
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v2, p2

    add-int v7, v0, p3

    invoke-direct {v4, v2, v0, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2266
    new-instance v2, Lcom/htc/camera/PreviewFilterEventArgs;

    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    new-instance v5, Lcom/htc/camera/imaging/Size;

    invoke-direct {v5, p2, p3}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iget-object v7, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    sget-object v8, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    if-eq v7, v8, :cond_2

    :goto_1
    invoke-direct {v2, v0, v5, v4, v1}, Lcom/htc/camera/PreviewFilterEventArgs;-><init>(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;Z)V

    .line 2269
    add-int/lit8 v0, v3, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_3

    .line 2270
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;->renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0, v2}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->notifySurfaceChanged(Lcom/htc/camera/PreviewFilterEventArgs;)V

    .line 2269
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 2260
    :cond_1
    iget v2, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 2261
    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    goto :goto_0

    :cond_2
    move v1, v6

    .line 2266
    goto :goto_1

    .line 2272
    :cond_3
    return-void
.end method

.method private onGLSurfaceViewCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2305
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onGLSurfaceViewCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->createPreviewGLResources(Z)V

    .line 2311
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 2312
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 2313
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 2314
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 2316
    return-void
.end method

.method private onPreviewGLResourcesCleared()V
    .locals 2

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewGLResourcesCleared()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2326
    return-void
.end method

.method private onPreviewGLResourcesCreated(Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 3

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewGLResourcesCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_1

    .line 2337
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2342
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2344
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onGLSurfaceViewCreated() - Activity is paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    :cond_0
    :goto_1
    return-void

    .line 2339
    :cond_1
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2349
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    .line 2352
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2354
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewGLResourcesCreated() - Try to restart preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$40;

    invoke-direct {v1, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$40;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2370
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2372
    :try_start_0
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2373
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPreviewSourceRectChanged(FFFF)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2390
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_1

    .line 2391
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2396
    :goto_0
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSrcChangingCounter:I

    if-lez v0, :cond_0

    .line 2397
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSrcChangingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSrcChangingCounter:I

    .line 2400
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->hidePreviewCoverInternal(Z)V

    .line 2401
    return-void

    .line 2393
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private onRendererThreadResumed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2408
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onRendererThreadResumed()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    iput-boolean v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsPreviewRenderingEnabled:Z

    .line 2412
    iput-boolean v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsWaitingForFirstPreviewFrame:Z

    .line 2413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_LastPreviewFrameTime:J

    .line 2416
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2417
    if-lez v0, :cond_0

    .line 2419
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;->renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->initialize()V

    .line 2419
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2422
    :cond_0
    return-void
.end method

.method private onRendererThreadSuspended(Z)V
    .locals 2

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onRendererThreadSuspended()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2433
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;->renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->deinitialize()V

    .line 2433
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2437
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->clearPreviewGLResources(Z)V

    .line 2440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsPreviewRenderingEnabled:Z

    .line 2441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsWaitingForFirstPreviewFrame:Z

    .line 2442
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_LastPreviewFrameTime:J

    .line 2443
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFrameDropCount:I

    .line 2444
    return-void
.end method

.method private onSharedEGLContextCreated(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    .prologue
    .line 2451
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsPreviewRenderingEnabled:Z

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onSharedEGLContextCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->sharedEGLContext:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2458
    :goto_0
    return-void

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "onSharedEGLContextCreated() - Preview rendering is suspended"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recreateSurfaces()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2487
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2489
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "recreateSurfaces() - Recreate GL surface view"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 2491
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 2495
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2497
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "recreateSurfaces() - Recreate direct output surface view"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2499
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2501
    :cond_1
    return-void
.end method

.method private release3DPreviewRendering(Lcom/htc/camera/Handle;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 2509
    if-nez p1, :cond_1

    .line 2511
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "release3DPreviewRendering() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    :cond_0
    :goto_0
    return-void

    .line 2516
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 2517
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2519
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "release3DPreviewRendering() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2523
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "release3DPreviewRendering() - Handle : "

    invoke-static {v2, v3, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2526
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Force3DPreviewRenderingHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2528
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "release3DPreviewRendering() - Handle count : "

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Force3DPreviewRenderingHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2529
    sget-boolean v2, Lcom/htc/camera/viewfinder/GLViewFinder;->FORCE_OPENGL_PREVIEW_RENDERING:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v3, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Force3DPreviewRenderingHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2532
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "release3DPreviewRendering() - Change to direct camera preview output"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    iput-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    .line 2534
    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    iput-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    .line 2535
    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2, v7}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2536
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->is3DPreviewRendering:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2537
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Enable3DPreviewHandle:Lcom/htc/camera/Handle;

    if-eqz v2, :cond_3

    .line 2539
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Enable3DPreviewHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v2, v3}, Lcom/htc/camera/CameraThread;->disable3DPreview(Lcom/htc/camera/Handle;)V

    .line 2540
    iput-object v7, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Enable3DPreviewHandle:Lcom/htc/camera/Handle;

    .line 2542
    :cond_3
    invoke-direct {p0, v5, v5, v6, v6}, Lcom/htc/camera/viewfinder/GLViewFinder;->onPreviewSourceRectChanged(FFFF)V

    .line 2545
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2546
    const/16 v2, 0x272e

    invoke-virtual {p0, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->removeMessages(I)V

    .line 2549
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invalidateOverlay()V

    .line 2552
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_4

    .line 2553
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$41;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder$41;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 2552
    goto :goto_1

    .line 2566
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "release3DPreviewRendering() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private removePreviewBoundsCalculator(Lcom/htc/camera/Handle;I)V
    .locals 3

    .prologue
    .line 2595
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 2598
    if-nez p1, :cond_0

    .line 2600
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewBoundsCalculator() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    :goto_0
    return-void

    .line 2605
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2607
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2609
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "removePreviewBoundsCalculator() - Invalid handle"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    monitor-exit v1

    goto :goto_0

    .line 2613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2612
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "addPreviewBoundsCalculator() - Handle : "

    invoke-static {v0, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2613
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2616
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V

    goto :goto_0
.end method

.method private removePreviewFilterRendererInternal(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewFilterRendererInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2678
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewFilterRendererInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    :goto_0
    return-void

    .line 2685
    :cond_0
    check-cast p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    iget-object v0, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;->renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->deinitialize()V

    goto :goto_0
.end method

.method private renderPreview(Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;Z)V
    .locals 12

    .prologue
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 2696
    sget-boolean v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROFILE_GL_OPERATION:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2697
    :goto_0
    invoke-static {v9}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 2698
    const/16 v2, 0x4100

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 2699
    if-eqz p2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 2700
    sget-boolean v2, Lcom/htc/camera/viewfinder/GLViewFinder;->PROFILE_GL_OPERATION:Z

    if-eqz v2, :cond_0

    .line 2702
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 2703
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2704
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renderPreview() - Take "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms to call glDepthMask() / glClear() / glClearColor()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    :cond_0
    invoke-static {}, Lcom/htc/camera/gl/DrawingTransaction;->open()Lcom/htc/camera/gl/DrawingTransaction;

    .line 2714
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    if-nez v0, :cond_1

    .line 2715
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->createPreviewGLResources(Z)V

    .line 2718
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DisablePreviewRenderingHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2720
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderPreview() - Preview rendering is disabled temporarily, handle count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DisablePreviewRenderingHandles:Lcom/htc/camera/s;

    invoke-virtual {v2}, Lcom/htc/camera/s;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v10

    .line 2725
    :cond_2
    if-eqz p2, :cond_3

    .line 2727
    iget-object v0, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->updatePreviewBounds(Landroid/graphics/Rect;Lcom/htc/camera/rotate/UIRotation;)V

    .line 2728
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->mvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V

    .line 2732
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2733
    const/4 v0, 0x0

    .line 2734
    if-lez v11, :cond_9

    .line 2736
    new-instance v0, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;

    iget-object v1, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->rotation:Lcom/htc/camera/rotate/UIRotation;

    iget-object v2, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget-object v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    sget-object v5, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    if-eq v4, v5, :cond_7

    move v4, v9

    :goto_2
    iget-object v5, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    if-ne p1, v5, :cond_8

    move v5, v9

    :goto_3
    iget-object v6, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->mvpMatrix:[F

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;-><init>(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;ZZ[F)V

    .line 2744
    add-int/lit8 v1, v11, -0x1

    move v2, v1

    :goto_4
    if-ltz v2, :cond_9

    .line 2746
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    iget-object v1, v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;->renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    .line 2747
    invoke-virtual {v1}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->isPreviewRenderer()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2748
    invoke-virtual {v1, v0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->drawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    .line 2744
    :cond_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_4

    :cond_5
    move-wide v0, v7

    .line 2696
    goto/16 :goto_0

    :cond_6
    move v2, v3

    .line 2699
    goto/16 :goto_1

    :cond_7
    move v4, v10

    .line 2736
    goto :goto_2

    :cond_8
    move v5, v10

    goto :goto_3

    .line 2753
    :cond_9
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    if-ne p1, v1, :cond_b

    .line 2756
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    if-nez v1, :cond_a

    .line 2758
    new-instance v1, Lcom/htc/camera/gl/SolidColorBrush;

    invoke-direct {v1}, Lcom/htc/camera/gl/SolidColorBrush;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverBrush:Lcom/htc/camera/gl/SolidColorBrush;

    .line 2759
    new-instance v1, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v1}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 2760
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v1, v2}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 2764
    :cond_a
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget v4, v4, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v4, v4

    iget-object v5, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget v5, v5, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/camera/gl/Quadrangle;->setBounds(FFFF)V

    .line 2765
    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$AnimationState:[I

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    invoke-virtual {v2}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2796
    :cond_b
    :goto_5
    if-lez v11, :cond_12

    .line 2798
    if-nez v0, :cond_13

    .line 2800
    new-instance v0, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;

    iget-object v1, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->rotation:Lcom/htc/camera/rotate/UIRotation;

    iget-object v2, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iget-object v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    sget-object v5, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    if-eq v4, v5, :cond_10

    move v4, v9

    :goto_6
    iget-object v5, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DefaultRenderingSurfaceHandle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    if-ne p1, v5, :cond_11

    move v5, v9

    :goto_7
    iget-object v6, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->mvpMatrix:[F

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;-><init>(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;ZZ[F)V

    move-object v1, v0

    .line 2809
    :goto_8
    add-int/lit8 v0, v11, -0x1

    move v2, v0

    :goto_9
    if-ltz v2, :cond_12

    .line 2811
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;->renderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    .line 2812
    invoke-virtual {v0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->isPreviewRenderer()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2813
    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->drawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    .line 2809
    :cond_c
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_9

    .line 2769
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v1}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v1

    .line 2770
    :goto_a
    cmp-long v3, v1, v7

    if-ltz v3, :cond_e

    const-wide/16 v3, 0x190

    cmp-long v3, v1, v3

    if-gtz v3, :cond_e

    .line 2772
    const-wide v3, 0x406fe00000000000L    # 255.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    long-to-double v1, v1

    const-wide/high16 v7, 0x4079000000000000L    # 400.0

    div-double/2addr v1, v7

    sub-double v1, v5, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 2773
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v2, v1}, Lcom/htc/camera/gl/SolidColorBrush;->setColor(I)V

    .line 2774
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v1, v2, :cond_b

    .line 2775
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v2, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->mvpMatrix:[F

    invoke-virtual {v1, v2}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 2819
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/htc/camera/gl/DrawingTransaction;->commitAndClose()V

    throw v0

    :cond_d
    move-wide v1, v7

    .line 2769
    goto :goto_a

    .line 2779
    :cond_e
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    if-eqz v1, :cond_f

    .line 2780
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v1}, Lcom/htc/camera/StopWatch;->stop()V

    .line 2781
    :cond_f
    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    goto/16 :goto_5

    .line 2787
    :pswitch_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverBrush:Lcom/htc/camera/gl/SolidColorBrush;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/htc/camera/gl/SolidColorBrush;->setColor(I)V

    .line 2788
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v1, v2, :cond_b

    .line 2789
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v2, p1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->mvpMatrix:[F

    invoke-virtual {v1, v2}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_10
    move v4, v10

    .line 2800
    goto/16 :goto_6

    :cond_11
    move v5, v10

    goto/16 :goto_7

    .line 2819
    :cond_12
    invoke-static {}, Lcom/htc/camera/gl/DrawingTransaction;->commitAndClose()V

    .line 2821
    return-void

    :cond_13
    move-object v1, v0

    goto/16 :goto_8

    .line 2765
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restorePreviewSourceRect(Lcom/htc/camera/Handle;I)V
    .locals 2

    .prologue
    .line 2888
    if-nez p1, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "restorePreviewSourceRect() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    :goto_0
    return-void

    .line 2895
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2896
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_BeginChangePreviewSrcRectRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2901
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "restorePreviewSourceRect() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2902
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_2

    .line 2904
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$44;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder$44;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;I)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2898
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_BeginChangePreviewSrcRectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2914
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "restorePreviewSourceRect() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restorePreviewSourceRectInternal(Lcom/htc/camera/Handle;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2923
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2924
    if-gez v0, :cond_1

    .line 2926
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "restorePreviewSourceRectInternal() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    :cond_0
    :goto_0
    return-void

    .line 2929
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "restorePreviewSourceRectInternal() - Handle : "

    invoke-static {v1, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2930
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2933
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2935
    if-nez v0, :cond_3

    .line 2937
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "restorePreviewSourceRectInternal() - Restore to default source rectangle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    if-eqz v0, :cond_2

    .line 2939
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    invoke-virtual {v0, v3, v6, v6, v3}, Lcom/htc/camera/gl/CameraPreviewBrush;->setSourceRect(FFFF)V

    .line 2940
    :cond_2
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$45;

    invoke-direct {v0, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$45;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2951
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    .line 2952
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "restorePreviewSourceRectInternal() - Active handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2953
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "restorePreviewSourceRectInternal() - Rect : ("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->left:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->top:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->right:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->bottom:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ")"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2954
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    if-eqz v1, :cond_4

    .line 2955
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    iget v2, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->left:F

    iget v3, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->top:F

    sub-float v3, v6, v3

    iget v4, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->right:F

    iget v5, v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->bottom:F

    sub-float v5, v6, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/camera/gl/CameraPreviewBrush;->setSourceRect(FFFF)V

    .line 2956
    :cond_4
    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$46;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder$46;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private resumeGLRendering()V
    .locals 2

    .prologue
    .line 2974
    const/16 v0, 0x2742

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->removeMessages(I)V

    .line 2977
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsGLRenderingEnabled:Z

    if-eqz v0, :cond_0

    .line 3003
    :goto_0
    return-void

    .line 2980
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "resumeGLRendering()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 2985
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$47;

    invoke-direct {v1, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$47;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2993
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2995
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsGLRenderingEnabled:Z

    goto :goto_0
.end method

.method private setPreviewSourceRectInternal(Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 3053
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "setPreviewSourceRectInternal() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3054
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setPreviewSourceRectInternal() - Rect : ("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->left:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->top:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->right:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->bottom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ")"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3057
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRectHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3060
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    if-eqz v0, :cond_0

    .line 3061
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;

    iget v1, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->left:F

    iget v2, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->top:F

    sub-float v2, v5, v2

    iget v3, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->right:F

    iget v4, p1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;->bottom:F

    sub-float v4, v5, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/gl/CameraPreviewBrush;->setSourceRect(FFFF)V

    .line 3064
    :cond_0
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$49;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$49;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 3072
    return-void
.end method

.method private setupPreviewFilter(Z)V
    .locals 3

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilter:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3141
    :cond_0
    :goto_0
    return-void

    .line 3104
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    .line 3106
    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    invoke-virtual {v0}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3113
    if-eqz p1, :cond_0

    .line 3115
    const/4 v0, 0x0

    move v1, v0

    .line 3119
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "setupPreviewFilter() - Inflate preview filter"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v2, 0x7f0e00d2

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilter:Landroid/view/View;

    .line 3123
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilter:Landroid/view/View;

    check-cast v0, Lcom/htc/camera/widget/LinearLayout;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$50;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$50;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/LinearLayout;->setOnDrawListener(Lcom/htc/camera/widget/g;)V

    .line 3133
    if-eqz v1, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilter:Landroid/view/View;

    const v1, 0x7f0e0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3136
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3137
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {v0, v1}, Lcom/htc/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_0

    .line 3110
    :pswitch_0
    const/4 v0, 0x1

    move v1, v0

    .line 3111
    goto :goto_1

    .line 3139
    :cond_2
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {v0, v1}, Lcom/htc/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    goto :goto_0

    .line 3106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showPreviewCoverInternal(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3174
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    if-ne v1, v2, :cond_2

    .line 3176
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "startRatioChangeAnimation() - Start animation"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->Waiting:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 3178
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invalidateOverlay()V

    .line 3179
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_1

    .line 3181
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$51;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$51;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 3192
    :goto_0
    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_IS_PREVIEW_COVER_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3195
    :goto_1
    return v0

    .line 3191
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "showPreviewCoverInternal() - No GLSurfaceView"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3195
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startRatioChangeAnimation(Z)V
    .locals 6

    .prologue
    .line 3203
    invoke-direct {p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->showPreviewCoverInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3204
    const/16 v2, 0x2739

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 3205
    :cond_0
    return-void
.end method

.method private suspendGLRendering(Z)V
    .locals 3

    .prologue
    .line 3213
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsGLRenderingEnabled:Z

    if-nez v0, :cond_0

    .line 3238
    :goto_0
    return-void

    .line 3216
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "suspendGLRendering()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 3221
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$52;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$52;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 3229
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 3231
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsGLRenderingEnabled:Z

    .line 3234
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->removeMessages(I)V

    .line 3237
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->sharedEGLContext:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updatePreviewBounds(Landroid/graphics/Rect;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 5

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    if-nez v0, :cond_0

    .line 3276
    :goto_0
    return-void

    .line 3250
    :cond_0
    if-eqz p1, :cond_2

    .line 3254
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 3255
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 3257
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 3258
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 3259
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 3260
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 3261
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 3262
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 3263
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3264
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3268
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    invoke-virtual {v1, v0}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 3274
    :goto_1
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    iget v1, p2, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v0, v1

    .line 3275
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/gl/Quadrangle;->setRotationZ(F)V

    goto :goto_0

    .line 3271
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "updatePreviewBounds() - No preview bounds"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 3284
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    .line 3285
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v3, Lcom/htc/camera/imaging/Size;

    iget v1, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    invoke-direct {v3, v1, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 3289
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3290
    const/4 v1, 0x1

    sget-object v4, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->calculatePreviewBounds(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;Landroid/graphics/Rect;)V

    .line 3291
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3294
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    .line 3296
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$53;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$53;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/imaging/Size;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 3315
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 3317
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_CONFIGURATION_ORIENTATION:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 3319
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3320
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 3321
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 3322
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3323
    iget v1, v5, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3324
    iget v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3325
    iget v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3326
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 3333
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilter:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3334
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3335
    :cond_2
    return-void

    .line 3285
    :cond_3
    new-instance v3, Lcom/htc/camera/imaging/Size;

    iget v1, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    invoke-direct {v3, v1, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    goto :goto_0

    .line 3329
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "updateViewfinderBounds() - Activity is not in landscape mode, ignore direct output surface layout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 490
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    if-ne p1, v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 493
    if-nez p2, :cond_0

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event handler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DrawPreviewOverlayHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 496
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invalidateOverlay()V

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/camera/IViewFinder3D;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    goto :goto_0
.end method

.method public addPreviewBoundsCalculator(Lcom/htc/camera/ui/a;I)Lcom/htc/camera/CloseableHandle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 510
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "addPreviewBoundsCalculator() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_0
    return-object v0

    .line 517
    :cond_0
    if-nez p1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "addPreviewBoundsCalculator() - No calculator"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_1
    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewBoundsCalculatorHandle;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/ui/a;)V

    .line 525
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "addPreviewBoundsCalculator() - Create handle : "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;

    monitor-enter v2

    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewBoundsCalcHandles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V

    move-object v0, v1

    .line 533
    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 543
    if-nez p1, :cond_0

    .line 545
    const-string v0, "renderer"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 551
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "addPreviewFilterRenderer() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_0
    return-object v0

    .line 558
    :cond_1
    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;

    invoke-direct {v1, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;-><init>(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)V

    .line 559
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "addPreviewFilterRenderer() - Create handle : "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_3

    .line 564
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererCount:I

    .line 565
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "addPreviewFilterRenderer() - Show GL surface view"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 569
    const/16 v0, 0x272e

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->removeMessages(I)V

    .line 570
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->resumeGLRendering()V

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$7;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder$7;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewFilterRendererHandle;)V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 580
    goto :goto_0

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "addPreviewFilterRenderer() - No GLSurfaceView"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public attachRenderingSurface(Landroid/view/Surface;IILcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/ao;)Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 612
    if-nez p1, :cond_0

    .line 614
    const-string v0, "surface"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "attachRenderingSurface() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :goto_0
    return-object v0

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v1, v2, :cond_2

    .line 625
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "attachRenderingSurface() - Current preview rendering mode is direct output"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_2
    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    invoke-direct {v1, p1, p4, p5}, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;-><init>(Landroid/view/Surface;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/ao;)V

    .line 629
    iget-object v2, v1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iput p2, v2, Lcom/htc/camera/imaging/Size;->width:I

    .line 630
    iget-object v2, v1, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    iput p3, v2, Lcom/htc/camera/imaging/Size;->height:I

    .line 631
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "attachRenderingSurface() - Create handle : "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_3

    .line 636
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$8;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder$8;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;)V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 644
    goto :goto_0

    .line 648
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "attachRenderingSurface() - No GLSurfaceView"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public convertFromRelativePreviewPosition(FFLandroid/graphics/Point;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 832
    if-nez p3, :cond_0

    .line 834
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "convertFromRelativePreviewPosition() - No object to receive result"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 852
    :goto_0
    return v0

    .line 837
    :cond_0
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    move v0, v1

    .line 838
    goto :goto_0

    .line 841
    :cond_2
    sget-object v0, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 842
    if-nez v0, :cond_3

    move v0, v1

    .line 843
    goto :goto_0

    .line 846
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    .line 847
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, p2, v2

    .line 848
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 849
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 852
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public convertToRelativePreviewPosition(FFLandroid/graphics/PointF;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 862
    if-nez p3, :cond_0

    .line 864
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "convertToRelativePreviewPosition() - No object to receive result"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 882
    :goto_0
    return v0

    .line 869
    :cond_0
    sget-object v0, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 870
    if-eqz v0, :cond_1

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 871
    goto :goto_0

    .line 874
    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p3, Landroid/graphics/PointF;->x:F

    .line 875
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 878
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/PointF;->x:F

    .line 879
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 882
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public detachRenderingSurface(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 959
    if-nez p1, :cond_0

    .line 961
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "detachRenderingSurface() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :goto_0
    return-void

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "detachRenderingSurface() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "detachRenderingSurface() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 974
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$12;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$12;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "detachRenderingSurface() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disablePreviewRendering(I)Lcom/htc/camera/CloseableHandle;
    .locals 4

    .prologue
    .line 1066
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$14;

    const-string v1, "DisablePreviewRendering"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder$14;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Ljava/lang/String;)V

    .line 1089
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePreviewRendering() - Handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1091
    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->disablePreviewRenderingInternal(Lcom/htc/camera/CloseableHandle;)V

    .line 1108
    :goto_0
    return-object v0

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$15;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder$15;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CloseableHandle;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "disablePreviewRendering() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableHighFrameRate()Lcom/htc/camera/CloseableHandle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1127
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 1128
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "enableHighFrameRate() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    :goto_0
    return-object v0

    .line 1135
    :cond_0
    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$16;

    const-string v2, "EnableHighFPS"

    invoke-direct {v1, p0, v2}, Lcom/htc/camera/viewfinder/GLViewFinder$16;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Ljava/lang/String;)V

    .line 1143
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "enableHighFrameRate() - Create handle : "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1146
    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$17;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder$17;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CloseableHandle;)V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 1156
    goto :goto_0

    .line 1160
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "enableHighFrameRate() - No GLSurfaceView"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public force3DPreviewRendering(I)Lcom/htc/camera/CloseableHandle;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1192
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 1193
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1195
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "force3DPreviewRendering() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    :cond_0
    :goto_0
    return-object v0

    .line 1198
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_2

    .line 1200
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "force3DPreviewRendering() - No GL surface view"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    :cond_2
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$18;

    const-string v1, "3DPreviewRendering"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder$18;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Ljava/lang/String;)V

    .line 1213
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Force3DPreviewRenderingHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "force3DPreviewRendering() - Handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1215
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "force3DPreviewRendering() - Handle count : "

    iget-object v3, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Force3DPreviewRenderingHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1216
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Force3DPreviewRenderingHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "force3DPreviewRendering() - Change to OpenGL preview rendering"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iput-boolean v4, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    .line 1221
    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    .line 1222
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->enable3DPreview()Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_Enable3DPreviewHandle:Lcom/htc/camera/Handle;

    .line 1225
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$19;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$19;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1232
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1233
    const/16 v1, 0x272e

    invoke-virtual {p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->removeMessages(I)V

    .line 1234
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->resumeGLRendering()V

    .line 1235
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->is3DPreviewRendering:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1238
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    .line 1239
    if-eqz v1, :cond_3

    .line 1241
    sget-object v2, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1242
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$20;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$20;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1257
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "force3DPreviewRendering() - Preview adapter is not created yet"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPreviewResourceLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewResourcesLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 1278
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapterInUIThread:Lcom/htc/camera/CameraPreviewAdapter;

    .line 1286
    :goto_0
    return-object v0

    .line 1280
    :cond_0
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_SURFACE_HOLDER:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0

    .line 1284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1286
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/camera/IViewFinder3D;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1295
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1330
    invoke-super {p0, p1}, Lcom/htc/camera/IViewFinder3D;->handleMessage(Landroid/os/Message;)V

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1298
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->checkFps()V

    goto :goto_0

    .line 1302
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->hidePreviewCoverInternal(Z)V

    goto :goto_0

    .line 1306
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->onFirstPreviewFrameReceived()V

    goto :goto_0

    .line 1310
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Hide GL surface view"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 1322
    :sswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->startRatioChangeAnimation(Z)V

    goto :goto_0

    .line 1326
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->suspendGLRendering(Z)V

    goto :goto_0

    .line 1295
    nop

    :sswitch_data_0
    .sparse-switch
        0x271a -> :sswitch_0
        0x2724 -> :sswitch_2
        0x272e -> :sswitch_3
        0x2738 -> :sswitch_4
        0x2739 -> :sswitch_1
        0x2742 -> :sswitch_5
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, -0x3

    const/4 v5, 0x1

    .line 1408
    invoke-super {p0}, Lcom/htc/camera/IViewFinder3D;->initializeOverride()V

    .line 1411
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_3

    .line 1412
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->is3DPreviewRendering:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1417
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1418
    const v0, 0x7f0e00cf

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    .line 1419
    const v0, 0x7f0e00d0

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1423
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1426
    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$22;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$22;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1444
    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1445
    sget-boolean v0, Lcom/htc/camera/viewfinder/GLViewFinder;->FORCE_OPENGL_PREVIEW_RENDERING:Z

    if-nez v0, :cond_4

    .line 1447
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v5}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 1455
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 1456
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_EGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 1457
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$23;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$23;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1477
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1478
    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$24;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$24;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1502
    sget-boolean v2, Lcom/htc/camera/viewfinder/GLViewFinder;->FORCE_OPENGL_PREVIEW_RENDERING:Z

    if-eqz v2, :cond_5

    .line 1504
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v4}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1505
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->enable3DPreview()Lcom/htc/camera/Handle;

    .line 1511
    :goto_2
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_ACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$25;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$25;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1520
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$26;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$26;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1542
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$27;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$27;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1554
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_RESUMING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$28;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$28;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1583
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_CONFIGURATION_ORIENTATION:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$29;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$29;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 1591
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$30;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$30;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1619
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$31;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$31;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1647
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$32;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$32;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1671
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$33;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/viewfinder/GLViewFinder$33;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$34;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/viewfinder/GLViewFinder$34;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$35;

    const-string v3, "Settings.PhotoSizeMode"

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/viewfinder/GLViewFinder$35;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 1701
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$36;

    invoke-direct {v2, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$36;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1723
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$37;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/viewfinder/GLViewFinder$37;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    invoke-direct {p0, v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->setupPreviewFilter(Z)V

    .line 1736
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1738
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    .line 1739
    if-nez v0, :cond_1

    .line 1741
    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_PHOTO_SIZE_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1750
    new-instance v0, Lcom/htc/camera/imaging/Size;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    sget-object v2, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v2, v2, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 1754
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 1755
    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->updateViewfinderBounds(Lcom/htc/camera/imaging/Size;)V

    .line 1757
    :cond_2
    return-void

    .line 1414
    :cond_3
    iput v6, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFrameDropCount:I

    goto/16 :goto_0

    .line 1451
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DirectOutputSurfaceView:Landroid/view/SurfaceView;

    goto/16 :goto_1

    .line 1508
    :cond_5
    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto/16 :goto_2

    .line 1744
    :pswitch_0
    new-instance v0, Lcom/htc/camera/imaging/Size;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    goto :goto_3

    .line 1747
    :pswitch_1
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0, v5, v5}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    goto :goto_3

    .line 1741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public invalidateOverlay()V
    .locals 2

    .prologue
    .line 1766
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 1769
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1771
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "invalidateOverlay() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->setupPreviewFilter(Z)V

    .line 1777
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilter:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public invalidatePreviewBounds()V
    .locals 2

    .prologue
    .line 1787
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_UpdateViewfinderBoundsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_UpdateViewfinderBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1791
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "invalidatePreviewBounds() - Fail to perform delayed operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1794
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "invalidatePreviewBounds() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queueRenderingEvent(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 2467
    if-nez p1, :cond_0

    .line 2469
    const-string v0, "r"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 2470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2474
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 2475
    if-eqz v0, :cond_1

    .line 2476
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 2479
    :goto_0
    return-void

    .line 2478
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "queueRenderingEvent() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/htc/camera/base/EventArgs;",
            ">(",
            "Lcom/htc/camera/base/EventKey",
            "<TTEventArgs;>;",
            "Lcom/htc/camera/base/b",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 2576
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    if-ne p1, v0, :cond_2

    .line 2578
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 2579
    if-nez p2, :cond_0

    .line 2580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No event handler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2581
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_DrawPreviewOverlayHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2587
    :goto_0
    return-void

    .line 2583
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->invalidateOverlay()V

    goto :goto_0

    .line 2586
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/camera/IViewFinder3D;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    goto :goto_0
.end method

.method public removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V
    .locals 6

    .prologue
    .line 2626
    if-nez p1, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewFilterRenderer() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    :goto_0
    return-void

    .line 2633
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 2634
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2636
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewFilterRenderer() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2640
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewFilterRenderer() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2643
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_3

    .line 2646
    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererCount:I

    .line 2647
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewFilterRendererCount:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_IsSwitchingPreviewSurface:Z

    if-nez v0, :cond_2

    .line 2652
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewFilterRenderer() - Hide GL surface view later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    const/16 v2, 0x272e

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 2657
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$42;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$42;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/Handle;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2667
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "removePreviewFilterRenderer() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreviewSourceRect(FFFFI)Lcom/htc/camera/CloseableHandle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3012
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    if-eq v0, v1, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSourceRect() - Current preview rendering mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewRenderingMode:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 3044
    :goto_0
    return-object v0

    .line 3019
    :cond_0
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;FFFF)V

    .line 3020
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "setPreviewSourceRect() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3023
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3024
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_BeginChangePreviewSrcRectRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3029
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_2

    .line 3031
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$48;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/viewfinder/GLViewFinder$48;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$PreviewSourceRectHandle;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3026
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_BeginChangePreviewSrcRectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 3043
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v1, "setPreviewSourceRect() - No GLSurfaceView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 3044
    goto :goto_0
.end method

.method protected setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 3080
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 3082
    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapterInUIThread:Lcom/htc/camera/CameraPreviewAdapter;

    .line 3083
    if-eq v1, p2, :cond_0

    move-object v0, p2

    .line 3085
    check-cast v0, Lcom/htc/camera/CameraPreviewAdapter;

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewAdapterInUIThread:Lcom/htc/camera/CameraPreviewAdapter;

    .line 3086
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder;->PROPERTY_PREVIEW_ADAPTER:Lcom/htc/camera/base/PropertyKey;

    check-cast p2, Lcom/htc/camera/CameraPreviewAdapter;

    invoke-virtual {p0, v0, v1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->notifyPropertyChanged(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3087
    const/4 v0, 0x1

    .line 3091
    :goto_0
    return v0

    .line 3089
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3091
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/camera/IViewFinder3D;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public showPreviewCover(I)Lcom/htc/camera/CloseableHandle;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 3150
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->threadAccessCheck()V

    .line 3151
    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3153
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "showPreviewCover() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3170
    :goto_0
    return-object v0

    .line 3158
    :cond_0
    new-instance v2, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewCoverHandle;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder;I)V

    .line 3159
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v3, "showPreviewCover() - Create handle : "

    const-string v4, ", flags : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v3, v2, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3160
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3162
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "showPreviewCover() - Preview is already started"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3163
    goto :goto_0

    .line 3165
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3168
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder;->m_PreviewCoverHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 3169
    invoke-direct {p0, v6}, Lcom/htc/camera/viewfinder/GLViewFinder;->showPreviewCoverInternal(Z)Z

    :cond_2
    move-object v0, v2

    .line 3170
    goto :goto_0
.end method
