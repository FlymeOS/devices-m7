.class final Lcom/htc/camera/component/ShutterAnimator;
.super Lcom/htc/camera/ah;
.source "ShutterAnimator.java"


# instance fields
.field private m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;

.field private m_FlashQuadrangle:Lcom/htc/camera/gl/Quadrangle;

.field private volatile m_FlashStartTime:J

.field private m_HighFpsHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private volatile m_IsRunningFlashAnimation:Z

.field private final m_PreviewFilterRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

.field private m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;

.field private m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

.field private m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 84
    const-string v0, "Shutter Animation Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/ah;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 46
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_HighFpsHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 49
    new-instance v0, Lcom/htc/camera/component/ShutterAnimator$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ShutterAnimator$1;-><init>(Lcom/htc/camera/component/ShutterAnimator;)V

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/gl/SolidColorBrush;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/gl/SolidColorBrush;)Lcom/htc/camera/gl/SolidColorBrush;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/gl/Quadrangle;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ShutterAnimator;->drawAnimations(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ShutterAnimator;->setupAnimationResources(Lcom/htc/camera/PreviewFilterEventArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/zoe/IZoeController;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ShutterAnimator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/ShutterAnimator;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_IsRunningFlashAnimation:Z

    return v0
.end method

.method private declared-synchronized drawAnimations(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 10

    .prologue
    const-wide v8, 0x4064a00000000000L    # 165.0

    const-wide/32 v6, 0x5f5e100

    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_IsRunningFlashAnimation:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->previewBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashStartTime:J

    sub-long/2addr v0, v2

    .line 110
    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    .line 112
    long-to-double v0, v0

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    div-double/2addr v0, v2

    mul-double/2addr v0, v8

    double-to-int v0, v0

    .line 113
    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/gl/SolidColorBrush;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    sub-long v2, v0, v6

    const-wide/32 v4, 0x9d5b340

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 118
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-long/2addr v0, v6

    long-to-double v0, v0

    const-wide v4, 0x41a3ab6680000000L    # 1.65E8

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/gl/SolidColorBrush;->setColor(I)V

    .line 120
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p1, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->draw([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_IsRunningFlashAnimation:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setupAnimationResources(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/htc/camera/gl/SolidColorBrush;

    invoke-direct {v0}, Lcom/htc/camera/gl/SolidColorBrush;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;

    .line 334
    new-instance v0, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v0}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    .line 335
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashQuadrangle:Lcom/htc/camera/gl/Quadrangle;

    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashBrush:Lcom/htc/camera/gl/SolidColorBrush;

    invoke-virtual {v0, v1}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 336
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Lcom/htc/camera/ah;->handleMessage(Landroid/os/Message;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_IsRunningFlashAnimation:Z

    .line 147
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_HighFpsHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_HighFpsHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 148
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Lcom/htc/camera/ah;->initializeOverride()V

    .line 171
    const-class v0, Lcom/htc/camera/IViewFinder3D;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ShutterAnimator;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    .line 172
    const-class v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ShutterAnimator;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    .line 173
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ShutterAnimator;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 180
    invoke-virtual {p0}, Lcom/htc/camera/component/ShutterAnimator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 181
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->shutterEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ShutterAnimator$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ShutterAnimator$2;-><init>(Lcom/htc/camera/component/ShutterAnimator;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 209
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ShutterAnimator$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ShutterAnimator$3;-><init>(Lcom/htc/camera/component/ShutterAnimator;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 235
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ShutterAnimator$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ShutterAnimator$4;-><init>(Lcom/htc/camera/component/ShutterAnimator;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 268
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ShutterAnimator$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ShutterAnimator$5;-><init>(Lcom/htc/camera/component/ShutterAnimator;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find ZoeController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playShutterAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/htc/camera/component/ShutterAnimator;->threadAccessCheck()V

    .line 306
    invoke-virtual {p0}, Lcom/htc/camera/component/ShutterAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->TAG:Ljava/lang/String;

    const-string v1, "playShutterAnimation() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_HighFpsHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->enableHighFrameRate()Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_HighFpsHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 317
    :cond_1
    monitor-enter p0

    .line 319
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_IsRunningFlashAnimation:Z

    .line 320
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/ShutterAnimator;->m_FlashStartTime:J

    .line 321
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    const/16 v2, 0x2711

    const-wide/16 v3, 0x1d1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ShutterAnimator;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
