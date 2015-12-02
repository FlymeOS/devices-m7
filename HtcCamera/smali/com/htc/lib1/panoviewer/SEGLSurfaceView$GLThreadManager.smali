.class Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "SEGLSurfaceView.java"


# static fields
.field private static final kGLES_20:I = 0x20000


# instance fields
.field private mEglOwner:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$1;)V
    .locals 0

    .prologue
    .line 1446
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1497
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1498
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1499
    iget v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 1500
    iput-boolean v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1502
    :cond_0
    iput-boolean v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1505
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .prologue
    .line 1486
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_1

    .line 1487
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1488
    iget v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-ge v0, v1, :cond_0

    .line 1489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1490
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1492
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    :cond_1
    monitor-exit p0

    return-void

    .line 1486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseEglSurfaceLocked(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;)V
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    .line 1482
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1483
    return-void
.end method

.method public declared-synchronized threadExiting(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;)V
    .locals 1

    .prologue
    .line 1448
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    # setter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->access$1002(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;Z)Z

    .line 1449
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    .line 1452
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    monitor-exit p0

    return-void

    .line 1448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglSurfaceLocked(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1463
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    if-nez v1, :cond_2

    .line 1464
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;

    .line 1465
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1472
    :cond_1
    :goto_0
    return v0

    .line 1468
    :cond_2
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1469
    iget-boolean v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1472
    const/4 v0, 0x0

    goto :goto_0
.end method
