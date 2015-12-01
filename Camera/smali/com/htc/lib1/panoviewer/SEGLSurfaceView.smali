.class public Lcom/htc/lib1/panoviewer/SEGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SEGLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1515
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$1;)V

    sput-object v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mSizeChanged:Z

    .line 193
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->init()V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mSizeChanged:Z

    .line 202
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->init()V

    .line 203
    return-void
.end method

.method static synthetic access$200(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLConfigChooser:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLWrapper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Z)Z
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1442
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 209
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 212
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 525
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->requestExitAndWait()V

    .line 526
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->onPause()V

    .line 481
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->onResume()V

    .line 492
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 514
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->onWindowFocusChanged(Z)V

    .line 515
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->requestRender()V

    .line 446
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mDebugFlags:I

    .line 242
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8

    .prologue
    .line 371
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->setEGLConfigChooser(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;)V

    .line 373
    return-void
.end method

.method public setEGLConfigChooser(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->checkRenderThreadState()V

    .line 335
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLConfigChooser:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;

    .line 336
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->setEGLConfigChooser(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;)V

    .line 354
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->checkRenderThreadState()V

    .line 403
    iput p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextClientVersion:I

    .line 404
    return-void
.end method

.method public setEGLContextFactory(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->checkRenderThreadState()V

    .line 305
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;

    .line 306
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->checkRenderThreadState()V

    .line 319
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;

    .line 320
    return-void
.end method

.method public setGLWrapper(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLWrapper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;

    .line 229
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->setRenderMode(I)V

    .line 424
    return-void
.end method

.method public setRenderer(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->checkRenderThreadState()V

    .line 280
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLConfigChooser:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLConfigChooser:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Lcom/htc/lib1/panoviewer/SEGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 287
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;

    .line 289
    :cond_2
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    .line 290
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->start()V

    .line 291
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->setSafeMode(Z)V

    .line 496
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->onWindowResize(II)V

    .line 471
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->surfaceCreated()V

    .line 454
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLThread:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 463
    return-void
.end method
