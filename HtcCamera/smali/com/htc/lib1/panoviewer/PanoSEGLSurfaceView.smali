.class public Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;
.super Lcom/htc/lib1/panoviewer/SEGLSurfaceView;
.source "PanoSEGLSurfaceView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final CODE_FAIL:I = -0x1

.field public static final CODE_SUCCESS:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "PanoSEGLSurfaceView"

.field private static final MAGNITUDE_CHECK:F = 0.0019f


# instance fields
.field private final DETECT_TIMEOUT:I

.field private final SHOWHIDE_BOUNDARY:I

.field private accTimestamp_:J

.field private button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

.field private detectClickID_:I

.field private detectClickPeriod_:J

.field private detectClickX_:F

.field private detectClickY_:F

.field private drawableResourceContext_:Landroid/content/Context;

.field private fd_:Landroid/os/ParcelFileDescriptor;

.field private gyroTimestamp_:J

.field private loadImageLock_:Ljava/util/concurrent/locks/ReentrantLock;

.field loadPanorama_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;

.field private nativeEngine_:J

.field private pictureDevelopId_:I

.field private pictureHeight_:I

.field private pictureTakenId_:I

.field private pictureWidth_:I

.field private volatile request_1st_render:Z

.field sensorMode_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

.field private sensorThread_:Landroid/os/HandlerThread;

.field private showHideBarSwitch_:Z

.field timer_:Ljava/util/Timer;

.field private viewerCallback_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "panoglviewer_hdk_v14"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->viewerCallback_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;

    .line 75
    iput-wide v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    .line 78
    iput-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->drawableResourceContext_:Landroid/content/Context;

    .line 157
    new-instance v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    invoke-direct {v0, p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    .line 160
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadImageLock_:Ljava/util/concurrent/locks/ReentrantLock;

    .line 161
    iput-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->fd_:Landroid/os/ParcelFileDescriptor;

    .line 163
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;->INVALID:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadPanorama_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;

    .line 166
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureWidth_:I

    .line 167
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureHeight_:I

    .line 168
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureTakenId_:I

    .line 169
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->request_1st_render:Z

    .line 176
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->UNDEFINED:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorMode_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    .line 177
    iput-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->timer_:Ljava/util/Timer;

    .line 180
    iput-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    .line 537
    iput-boolean v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->showHideBarSwitch_:Z

    .line 538
    const/16 v0, 0x2d

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->SHOWHIDE_BOUNDARY:I

    .line 539
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickID_:I

    .line 540
    iput-wide v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickPeriod_:J

    .line 541
    iput v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickX_:F

    .line 542
    iput v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickY_:F

    .line 543
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->DETECT_TIMEOUT:I

    .line 672
    iput-wide v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->gyroTimestamp_:J

    .line 673
    iput-wide v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->accTimestamp_:J

    .line 185
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 186
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, v1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Z)V

    invoke-super {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->setEGLConfigChooser(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;)V

    .line 187
    new-instance v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;

    invoke-direct {v0, p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$PanoGLSurfaceRenderer;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V

    invoke-super {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->setRenderer(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;)V

    .line 188
    invoke-super {p0, v1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->setRenderMode(I)V

    .line 190
    invoke-static {}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->createNativeEngine()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->request_1st_render:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->request_1st_render:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;J)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onGLDestroySurface(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadImageLock_:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->fd_:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->fd_:Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JLjava/io/FileDescriptor;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onLoadPanoramaFD(JLjava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->viewerCallback_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;I)I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->issuePictureTaking(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JLandroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->getCaptureFrame(JLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JI)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onGLDrawFrame(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JIFF)V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onTouchBegan(JIFF)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JIFF)V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onTouchEnded(JIFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;J)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onGLSurfaceCreated(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JIFF)V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onTouchMoved(JIFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->drawableResourceContext_:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JILandroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onLoadButtonImage(JILandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureWidth_:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureWidth_:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureHeight_:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureHeight_:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JII)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onGLSurfaceChanged(JII)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;J)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onTouchCancelled(J)V

    return-void
.end method

.method private static native closeNativeEngine(J)V
.end method

.method private static native createNativeEngine()J
.end method

.method private native enableGyro(JZ)V
.end method

.method private native enableTouch(JZ)V
.end method

.method private native getCaptureFrame(JLandroid/graphics/Bitmap;)Z
.end method

.method private declared-synchronized issuePictureTaking(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 280
    monitor-enter p0

    if-ne v1, p1, :cond_1

    .line 282
    :try_start_0
    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    iget v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureTakenId_:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 283
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    .line 284
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    div-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 288
    :cond_1
    if-nez p1, :cond_2

    .line 290
    :try_start_1
    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    iget v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureTakenId_:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 291
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    .line 292
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureDevelopId_:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 298
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureTakenId_:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureTakenId_:I

    .line 299
    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->requestRender()V

    .line 300
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureTakenId_:I

    div-int/lit8 v0, v0, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 303
    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native onGLDestroySurface(J)V
.end method

.method private native onGLDrawFrame(JI)Z
.end method

.method private native onGLSurfaceChanged(JII)V
.end method

.method private native onGLSurfaceCreated(J)V
.end method

.method private native onLoadButtonImage(JILandroid/graphics/Bitmap;)Z
.end method

.method private native onLoadPanoramaFD(JLjava/io/FileDescriptor;)Z
.end method

.method private native onSensorChanged(JIFFFF)V
.end method

.method private native onTouchBegan(JIFF)V
.end method

.method private native onTouchCancelled(J)V
.end method

.method private native onTouchEnded(JIFF)V
.end method

.method private native onTouchMoved(JIFF)V
.end method

.method private native onViewPause(J)V
.end method

.method private native onViewResume(J)V
.end method

.method private static native setButtonMargin(JIIIII)V
.end method

.method private static native setButtonOverlayColor(JIII)V
.end method


# virtual methods
.method public asyncCaptureFrame()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->issuePictureTaking(I)I

    move-result v0

    return v0
.end method

.method public enableTouch(Z)V
    .locals 2

    .prologue
    .line 533
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->enableTouch(JZ)V

    .line 534
    return-void
.end method

.method public finalize()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 196
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 197
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    invoke-static {v0, v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->closeNativeEngine(J)V

    .line 198
    iput-wide v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    .line 200
    :cond_0
    return-void
.end method

.method public loadFromFileDescriptor(Landroid/os/ParcelFileDescriptor;)I
    .locals 1

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;->FROM_FD:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadPanorama_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$LOAD_PANORAMA;

    .line 264
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->fd_:Landroid/os/ParcelFileDescriptor;

    .line 265
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public loadFromFilePath(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadFromFileDescriptor(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadFromUri(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 252
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->loadFromFileDescriptor(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onViewPause(J)V

    .line 385
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->NONE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorMode_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    if-eq v0, v1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 391
    iput-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->timer_:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->timer_:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 396
    iput-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->timer_:Ljava/util/Timer;

    .line 399
    :cond_2
    invoke-super {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->onPause()V

    .line 400
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x32

    const/4 v6, 0x1

    .line 317
    invoke-super {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->onResume()V

    .line 320
    iput-boolean v6, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->request_1st_render:Z

    .line 326
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->NONE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorMode_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    .line 328
    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 329
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_0

    .line 332
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->gyroTimestamp_:J

    iput-wide v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->accTimestamp_:J

    .line 335
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "SensorThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    .line 336
    iget-object v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 337
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    invoke-virtual {v0, p0, v1, v6, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v6, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->GYROSCOPE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorMode_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    .line 353
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->GYROSCOPE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorMode_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    if-ne v0, v1, :cond_2

    .line 354
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    invoke-direct {p0, v0, v1, v6}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->enableGyro(JZ)V

    .line 375
    :goto_1
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onViewResume(J)V

    .line 376
    return-void

    .line 346
    :cond_1
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 347
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->sensorThread_:Landroid/os/HandlerThread;

    goto :goto_0

    .line 357
    :cond_2
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->enableGyro(JZ)V

    .line 360
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->timer_:Ljava/util/Timer;

    .line 361
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->timer_:Ljava/util/Timer;

    new-instance v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$1;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const-wide v9, 0x3e112e0be826d695L    # 1.0E-9

    const/4 v3, 0x1

    .line 680
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 715
    :goto_0
    :pswitch_0
    return-void

    .line 684
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v0, v1

    .line 685
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v0, v3

    .line 686
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v0, v2

    .line 687
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v7, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->accTimestamp_:J

    sub-long/2addr v0, v7

    long-to-double v0, v0

    mul-double/2addr v0, v9

    double-to-float v7, v0

    .line 688
    iget-wide v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onSensorChanged(JIFFFF)V

    .line 689
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->accTimestamp_:J

    goto :goto_0

    .line 694
    :pswitch_2
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->request_1st_render:Z

    if-nez v0, :cond_1

    .line 695
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v0, v1

    .line 696
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v0, v3

    .line 697
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v0, v2

    .line 698
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->gyroTimestamp_:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    mul-double/2addr v0, v9

    double-to-float v7, v0

    .line 699
    iget-wide v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    const/4 v3, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onSensorChanged(JIFFFF)V

    .line 700
    const v0, 0x3af9096c    # 0.0019f

    mul-float v1, v4, v4

    mul-float v2, v5, v5

    add-float/2addr v1, v2

    mul-float v2, v6, v6

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->requestRender()V

    .line 709
    :cond_0
    :goto_1
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->gyroTimestamp_:J

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->requestRender()V

    goto :goto_1

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/high16 v5, 0x42340000    # 45.0f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 546
    const/16 v2, 0x1002

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 549
    and-int/lit16 v4, v2, 0xff

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 668
    :cond_0
    :goto_0
    return v0

    .line 552
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 555
    iget v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickID_:I

    if-nez v4, :cond_1

    .line 556
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickID_:I

    .line 557
    iput v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickX_:F

    .line 558
    iput v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickY_:F

    .line 560
    :cond_1
    cmpg-float v4, v2, v5

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureWidth_:I

    add-int/lit8 v4, v4, -0x2d

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-gtz v4, :cond_2

    cmpg-float v4, v3, v5

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->pictureHeight_:I

    add-int/lit8 v4, v4, -0x2d

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 562
    :cond_2
    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->showHideBarSwitch_:Z

    .line 564
    :cond_3
    iget-boolean v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->showHideBarSwitch_:Z

    if-nez v4, :cond_0

    .line 565
    new-instance v4, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$2;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$2;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;IFF)V

    invoke-virtual {p0, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 576
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 580
    iget-object v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->isTouching(II)Z

    move-result v5

    .line 582
    iget v6, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickID_:I

    if-ne v2, v6, :cond_4

    if-nez v5, :cond_4

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickPeriod_:J

    .line 584
    iget v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickX_:F

    sub-float/2addr v5, v3

    iput v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickX_:F

    .line 585
    iget v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickY_:F

    sub-float/2addr v5, v4

    iput v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickY_:F

    .line 586
    iget-wide v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickPeriod_:J

    iget v7, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->DETECT_TIMEOUT:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    iget v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickX_:F

    iget v6, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickX_:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickY_:F

    iget v7, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickY_:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x43480000    # 200.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 588
    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->performClick()Z

    .line 591
    :cond_4
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickID_:I

    .line 592
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickPeriod_:J

    .line 593
    iput v9, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickX_:F

    .line 594
    iput v9, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->detectClickY_:F

    .line 595
    iget-boolean v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->showHideBarSwitch_:Z

    if-nez v5, :cond_5

    .line 596
    new-instance v5, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$3;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$3;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;IFF)V

    invoke-virtual {p0, v5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 603
    :cond_5
    iput-boolean v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->showHideBarSwitch_:Z

    goto/16 :goto_0

    .line 608
    :pswitch_3
    shr-int/lit8 v1, v2, 0x8

    .line 609
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 610
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 611
    iget-boolean v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->showHideBarSwitch_:Z

    if-nez v4, :cond_0

    .line 612
    new-instance v4, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;IFF)V

    invoke-virtual {p0, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 623
    :pswitch_4
    shr-int/lit8 v1, v2, 0x8

    .line 624
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 625
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 626
    iget-boolean v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->showHideBarSwitch_:Z

    if-nez v4, :cond_0

    .line 627
    new-instance v4, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$5;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$5;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;IFF)V

    invoke-virtual {p0, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 638
    :goto_1
    :pswitch_5
    if-ge v1, v3, :cond_0

    .line 639
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 640
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 641
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 642
    iget-boolean v6, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->showHideBarSwitch_:Z

    if-nez v6, :cond_6

    .line 643
    new-instance v6, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$6;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$6;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;IFF)V

    invoke-virtual {p0, v6}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 638
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 657
    :pswitch_6
    new-instance v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$7;

    invoke-direct {v1, p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$7;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 668
    :cond_7
    invoke-super {p0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public release()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public setAssets(Landroid/content/Context;[I)V
    .locals 3

    .prologue
    .line 209
    array-length v0, p2

    sget-object v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;->ICON_SIZE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;

    invoke-virtual {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 210
    const-string v0, "PanoSEGLSurfaceView"

    const-string v1, "setAssets -- drawable number are larger than expected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    array-length v1, p2

    iput v1, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->size:I

    .line 215
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    iget-object v1, v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->drawableId:[I

    aget v2, p2, v0

    aput v2, v1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_1
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->drawableResourceContext_:Landroid/content/Context;

    goto :goto_0
.end method

.method public setAssetsMargin(IIIII)V
    .locals 7

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    iget v0, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->size:I

    if-lt p1, v0, :cond_0

    .line 224
    const-string v0, "PanoSEGLSurfaceView"

    const-string v1, "setAssetsMargin -- button index out of defined."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->setButtonMargin(JIIIII)V

    .line 229
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->button_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;

    iget-object v0, v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->set(IIII)V

    goto :goto_0
.end method

.method public setAssetsOverlayColor(III)V
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->setButtonOverlayColor(JIII)V

    .line 235
    return-void
.end method

.method public setListener(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->viewerCallback_:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerCallbackListener;

    .line 205
    return-void
.end method
