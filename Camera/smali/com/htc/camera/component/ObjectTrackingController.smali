.class public final Lcom/htc/camera/component/ObjectTrackingController;
.super Lcom/htc/camera/component/s;
.source "ObjectTrackingController.java"

# interfaces
.implements Lcom/htc/camera/j;


# static fields
.field static final RectScreenBound:Landroid/graphics/Rect;


# instance fields
.field private final isObjectMoving:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackTargets:[Landroid/hardware/Camera$Face;

.field private mMode:Lcom/htc/camera/ObjectTrackingMode;

.field private mMovingCounter:I

.field private m_IsStarted:Z

.field private m_LastFocusedFaceId:I

.field private m_LastTarget:[Lcom/htc/camera/ObjectTrackingInfo;

.field private m_LastTime:J

.field private m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

.field private m_UI:Lcom/htc/camera/component/ObjectTrackingUI;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/htc/camera/component/ObjectTrackingController;->RectScreenBound:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 74
    const-string v0, "Object Tracking Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/s;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastFocusedFaceId:I

    .line 77
    sget-object v0, Lcom/htc/camera/ObjectTrackingMode;->Face:Lcom/htc/camera/ObjectTrackingMode;

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMode:Lcom/htc/camera/ObjectTrackingMode;

    .line 80
    const-string v0, "ObjectTrackingController.IsObjectMoving"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/htc/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/htc/camera/property/Property;

    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ObjectTrackingController;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/ObjectTrackingController;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ObjectTrackingController;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingController;->startFaceDetection()V

    return-void
.end method

.method private containsObjects([Landroid/hardware/Camera$Face;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 182
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    array-length v2, p1

    if-ne v2, v1, :cond_2

    .line 186
    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 187
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 190
    goto :goto_0
.end method

.method private setFaceID(I)V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set focus face ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastFocusedFaceId:I

    if-eq v0, p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_2

    .line 209
    :try_start_0
    const-string v1, "focus-face-id"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 210
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    iput p1, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastFocusedFaceId:I

    goto :goto_0

    .line 212
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    const-string v1, "cameraController is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceID RE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startFaceDetection()V
    .locals 3

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    const-string v1, "CameraHandler Message - setFaceDetectionListener start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_1

    .line 289
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/htc/camera/CameraController;->setFaceDetectionListener(Lcom/htc/camera/j;)V

    .line 290
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastFocusedFaceId:I

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    const-string v2, "startFaceDetection() - Fail to start face detection"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection() - No camera device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 3

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    const-string v1, "CameraHandler Message - setFaceDetectionListener stop"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_1

    .line 325
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFaceDetectionListener(Lcom/htc/camera/j;)V

    .line 326
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 330
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    const-string v2, "stopFaceDetection() - Fail to stop face detection"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    const-string v1, "stopFaceDetection() - No camera device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkObjectMoving()V
    .locals 8

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    .line 356
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMode:Lcom/htc/camera/ObjectTrackingMode;

    sget-object v1, Lcom/htc/camera/ObjectTrackingMode;->Face:Lcom/htc/camera/ObjectTrackingMode;

    if-ne v0, v1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->resetMovingCounter()V

    .line 380
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/htc/camera/ObjectTrackingInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    if-nez v0, :cond_2

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->decreaseMovingCounter()V

    goto :goto_0

    .line 366
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTime:J

    sub-long/2addr v0, v2

    .line 367
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v2, v2, v6

    iget-object v2, v2, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v7

    float-to-double v2, v2

    .line 368
    iget-object v4, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v7

    float-to-double v4, v4

    .line 369
    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 371
    long-to-double v0, v0

    div-double v0, v2, v0

    .line 375
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->increaseMovingCounter()V

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->decreaseMovingCounter()V

    goto :goto_0
.end method

.method public decreaseMovingCounter()V
    .locals 2

    .prologue
    .line 397
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMovingCounter:I

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/htc/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMovingCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMovingCounter:I

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 94
    invoke-super {p0}, Lcom/htc/camera/component/s;->deinitializeOverride()V

    .line 95
    return-void
.end method

.method public getObjectTrackingMode()Lcom/htc/camera/ObjectTrackingMode;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMode:Lcom/htc/camera/ObjectTrackingMode;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/s;->handleMessage(Landroid/os/Message;)V

    .line 175
    :goto_0
    return-void

    .line 148
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingUI;

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_UI:Lcom/htc/camera/component/ObjectTrackingUI;

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingController;->startFaceDetection()V

    goto :goto_0

    .line 156
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingController;->stopFaceDetection()V

    goto :goto_0

    .line 160
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ObjectTrackingController;->setFaceID(I)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public increaseMovingCounter()V
    .locals 4

    .prologue
    .line 387
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMovingCounter:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/htc/camera/property/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMovingCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMovingCounter:I

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/htc/camera/component/s;->initializeOverride()V

    .line 107
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/htc/camera/property/Property;

    iget-object v2, v0, Lcom/htc/camera/CameraThread;->hasMovingObjects:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraThread;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 110
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ObjectTrackingController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ObjectTrackingController$1;-><init>(Lcom/htc/camera/component/ObjectTrackingController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 120
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/ObjectTrackingController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ObjectTrackingController$2;-><init>(Lcom/htc/camera/component/ObjectTrackingController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTime:J

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/htc/camera/ObjectTrackingInfo;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMovingCounter:I

    .line 137
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/htc/camera/CameraController;)V
    .locals 15

    .prologue
    .line 417
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    .line 419
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    if-eqz v1, :cond_6

    .line 420
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFaceDetection() - Num of CallbackTargets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 429
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    invoke-direct {p0, v1}, Lcom/htc/camera/component/ObjectTrackingController;->containsObjects([Landroid/hardware/Camera$Face;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 436
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    new-array v1, v1, [Lcom/htc/camera/ObjectTrackingInfo;

    iput-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    .line 437
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 441
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    new-instance v5, Lcom/htc/camera/ObjectTrackingInfo;

    invoke-direct {v5}, Lcom/htc/camera/ObjectTrackingInfo;-><init>()V

    aput-object v5, v2, v1

    .line 443
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v1

    iget-object v5, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 445
    sget-object v2, Lcom/htc/camera/component/ObjectTrackingController;->RectScreenBound:Landroid/graphics/Rect;

    invoke-static {v2, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    .line 446
    if-eqz v2, :cond_4

    sget-object v6, Lcom/htc/camera/component/ObjectTrackingController;->RectScreenBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 448
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v6, v7

    .line 449
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 450
    iget v8, v5, Landroid/graphics/Rect;->top:I

    .line 451
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 452
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 454
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    const/16 v12, 0x3e8

    if-le v11, v12, :cond_0

    .line 455
    const/16 v11, 0x3e8

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 456
    :cond_0
    iget v11, v5, Landroid/graphics/Rect;->right:I

    const/16 v12, 0x3e8

    if-le v11, v12, :cond_1

    .line 457
    const/16 v11, 0x3e8

    iput v11, v5, Landroid/graphics/Rect;->right:I

    .line 458
    :cond_1
    iget v11, v5, Landroid/graphics/Rect;->top:I

    const/16 v12, -0x3e8

    if-ge v11, v12, :cond_2

    .line 459
    const/16 v11, -0x3e8

    iput v11, v5, Landroid/graphics/Rect;->top:I

    .line 460
    :cond_2
    iget v11, v5, Landroid/graphics/Rect;->left:I

    const/16 v12, -0x3e8

    if-ge v11, v12, :cond_3

    .line 461
    const/16 v11, -0x3e8

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 463
    :cond_3
    int-to-double v11, v6

    const-wide v13, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v11, v13

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    mul-int/2addr v6, v13

    int-to-double v13, v6

    cmpl-double v6, v11, v13

    if-lez v6, :cond_4

    .line 465
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of preview, oldRect(left, top ,right,bottom) = ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v2, 0x0

    .line 469
    :cond_4
    iget-object v6, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v6, v6, v1

    invoke-static {v5}, Lcom/htc/camera/imaging/ImageUtility;->mapFromCameraArea(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v5

    iput-object v5, v6, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 471
    if-nez v2, :cond_7

    .line 472
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v2, v2, v1

    sget-object v5, Lcom/htc/camera/ObjectTrackingInfoType;->FaceOutSideScreen:Lcom/htc/camera/ObjectTrackingInfoType;

    iput-object v5, v2, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    .line 476
    :goto_2
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v2, v2, v1

    iget-object v5, p0, Lcom/htc/camera/component/ObjectTrackingController;->mCallbackTargets:[Landroid/hardware/Camera$Face;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/hardware/Camera$Face;->id:I

    iput v5, v2, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    .line 479
    aget-object v2, p1, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->CastHtcFace(Landroid/hardware/Camera$Face;)Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;

    move-result-object v2

    .line 480
    if-eqz v2, :cond_5

    .line 481
    iget-object v5, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htcFace smile_degree = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->smile_degree:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", smile_score:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->smile_score:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v5, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v5, v5, v1

    iget v6, v2, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->smile_degree:I

    iput v6, v5, Lcom/htc/camera/ObjectTrackingInfo;->smileDegree:I

    .line 483
    iget-object v5, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v5, v5, v1

    iget v2, v2, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->smile_score:I

    iput v2, v5, Lcom/htc/camera/ObjectTrackingInfo;->smileScore:I

    .line 437
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 422
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->TAG:Ljava/lang/String;

    const-string v2, "onFaceDetection() - mCallbackTargets == null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    :cond_7
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v2, v2, v1

    sget-object v5, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    iput-object v5, v2, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    goto :goto_2

    .line 496
    :cond_8
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingController;->checkObjectMoving()V

    .line 498
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    iput-object v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTarget:[Lcom/htc/camera/ObjectTrackingInfo;

    .line 499
    iput-wide v3, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_LastTime:J

    .line 502
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_UI:Lcom/htc/camera/component/ObjectTrackingUI;

    const/16 v3, 0x2711

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/camera/component/ObjectTrackingController;->m_Targets:[Lcom/htc/camera/ObjectTrackingInfo;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/component/ObjectTrackingController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 503
    return-void
.end method

.method public resetMovingCounter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    iput v1, p0, Lcom/htc/camera/component/ObjectTrackingController;->mMovingCounter:I

    .line 408
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController;->isObjectMoving:Lcom/htc/camera/property/Property;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    return-void
.end method
