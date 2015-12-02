.class public final Lcom/htc/camera/component/ObjectTrackingUI;
.super Lcom/htc/camera/IObjectTracker;
.source "ObjectTrackingUI.java"


# instance fields
.field private m_BackObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

.field m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

.field private m_FocusedObjIndex:I

.field private m_HasFaces:Z

.field private m_IsStarted:Z

.field m_LastfocusFaceRect:Landroid/graphics/RectF;

.field private final m_OTDisableHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_StableFace:Lcom/htc/camera/IStableFace;

.field private m_TouchDownZoomValue:I


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 73
    const-string v1, "Object Tracking UI"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/IObjectTracker;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_OTDisableHandles:Ljava/util/ArrayList;

    .line 65
    iput v5, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_TouchDownZoomValue:I

    .line 74
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->disableMessageLogs()V

    .line 78
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->detectedObjects:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->disableFakeUIRotation()V

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/htc/camera/component/ObjectTrackingUI;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ObjectTrackingUI;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->stopFaceDetection()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ObjectTrackingUI;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->checkFaceDetection()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ObjectTrackingUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ObjectTrackingUI;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_TouchDownZoomValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/camera/component/ObjectTrackingUI;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_TouchDownZoomValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ObjectTrackingUI;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ObjectTrackingUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ObjectTrackingUI;Landroid/graphics/RectF;ZZI)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ObjectTrackingUI;->triggerFaceFocus(Landroid/graphics/RectF;ZZI)V

    return-void
.end method

.method private calculateFocusFace([Lcom/htc/camera/ObjectTrackingInfo;I)I
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v3, 0x0

    .line 437
    move v0, v3

    move v1, v3

    move v2, v3

    move v6, v5

    .line 442
    :goto_0
    if-ge v6, p2, :cond_1

    .line 443
    aget-object v7, p1, v6

    iget-object v7, v7, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    sget-object v8, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    if-ne v7, v8, :cond_0

    .line 444
    aget-object v7, p1, v6

    iget-object v7, v7, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 445
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v8, v9

    .line 446
    add-float/2addr v2, v8

    .line 447
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    mul-float/2addr v9, v8

    add-float/2addr v1, v9

    .line 448
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    mul-float/2addr v7, v8

    add-float/2addr v0, v7

    .line 442
    :cond_0
    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    goto :goto_0

    .line 451
    :cond_1
    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    .line 474
    :cond_2
    return v4

    .line 454
    :cond_3
    div-float v6, v1, v2

    .line 455
    div-float v7, v0, v2

    .line 459
    const-wide/16 v0, 0x0

    .line 460
    :goto_1
    if-ge v5, p2, :cond_2

    .line 462
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    sget-object v3, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    if-ne v2, v3, :cond_5

    .line 463
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 464
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v3, v6

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v7

    float-to-double v2, v2

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v8

    .line 467
    if-ltz v4, :cond_4

    cmpg-double v8, v2, v0

    if-gez v8, :cond_5

    :cond_4
    move-wide v0, v2

    move v2, v5

    .line 460
    :goto_2
    add-int/lit8 v3, v5, 0x1

    int-to-short v5, v3

    move v4, v2

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2
.end method

.method private checkFaceDetection()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 494
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v4

    .line 499
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_4

    move v1, v2

    .line 501
    :goto_1
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_AUTO_FOCUS_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 503
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FACE_DETECTION_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v4, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v3, v2

    .line 505
    :cond_3
    if-ne v1, v2, :cond_5

    if-ne v5, v2, :cond_5

    if-ne v3, v2, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_OTDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 512
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->startFaceDetection()V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 499
    goto :goto_1

    .line 522
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->stopFaceDetection()V

    goto :goto_0
.end method

.method private checkFaceMoving(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const v6, 0x3d03126f    # 0.032f

    .line 407
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 411
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 412
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 413
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 420
    cmpl-float v1, v1, v6

    if-gtz v1, :cond_2

    cmpl-float v1, v2, v6

    if-gtz v1, :cond_2

    cmpl-float v1, v3, v6

    if-gtz v1, :cond_2

    cmpl-float v1, v4, v6

    if-lez v1, :cond_0

    .line 424
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 300
    :cond_0
    :goto_0
    return v3

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Object Tracking Controller"

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ObjectTrackingController;

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

    .line 295
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

    const/16 v2, 0x2711

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ObjectTrackingController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 298
    goto :goto_0
.end method

.method private onFaceUpdated([Lcom/htc/camera/ObjectTrackingInfo;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 309
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 312
    :cond_0
    if-nez p1, :cond_1

    .line 313
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "No callbackTargets"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->resetFaceProperties()V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingController;->getObjectTrackingMode()Lcom/htc/camera/ObjectTrackingMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/ObjectTrackingMode;->Face:Lcom/htc/camera/ObjectTrackingMode;

    if-ne v0, v1, :cond_6

    .line 320
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/ObjectTrackingUI;->calculateFocusFace([Lcom/htc/camera/ObjectTrackingInfo;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    .line 321
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    if-gez v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "All callbackTargets out of screen"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iput-boolean v3, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 335
    :goto_1
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    move-object v1, v0

    .line 338
    :goto_2
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/ObjectTrackingUI;->checkFaceMoving(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    sget-object v4, Lcom/htc/camera/component/ObjectTrackingUI$8;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_3
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->canFaceFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 356
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v0, p1, v0

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/camera/component/ObjectTrackingUI;->triggerFaceFocus(Landroid/graphics/RectF;ZZI)V

    .line 361
    :cond_2
    :goto_4
    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    aget-object v2, p1, v0

    :cond_3
    iput-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    .line 364
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->detectedObjects:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 365
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    move v1, v3

    .line 367
    :goto_5
    array-length v4, p1

    if-ge v1, v4, :cond_9

    .line 369
    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    sget-object v5, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    if-ne v4, v5, :cond_4

    .line 371
    add-int/lit8 v3, v3, 0x1

    .line 367
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 327
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    goto/16 :goto_1

    .line 331
    :cond_6
    iput v3, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusedObjIndex:I

    .line 332
    iput-boolean v3, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    goto/16 :goto_1

    :cond_7
    move-object v1, v2

    .line 335
    goto/16 :goto_2

    .line 350
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    goto :goto_3

    .line 358
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "onFaceUpdated() - Cannot trigger face focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 373
    :cond_9
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->detectedObjects:Lcom/htc/camera/property/Property;

    iget-object v4, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    .line 378
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->focusedObject:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->numberOfDetectedFaces:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onOTModeExited()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->setSensorFocus()V

    .line 285
    return-void
.end method

.method private resetFaceProperties()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 618
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->numberOfDetectedFaces:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 619
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->detectedObjects:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 620
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    .line 621
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 623
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->detectedObjects:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 624
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 625
    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_BackObjectList:Ljava/util/List;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->focusedObject:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 629
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    if-eqz v0, :cond_1

    .line 631
    iput-boolean v4, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 632
    iput-object v5, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    .line 634
    :cond_1
    return-void
.end method

.method private setSensorFocus()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method private startFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 642
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-eqz v0, :cond_0

    .line 662
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "Send Start face detection msg"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ObjectTrackingUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 654
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->resetFaceProperties()V

    .line 660
    iput-boolean v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    .line 661
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->isObjectDetectionEnabled:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private stopFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->resetFaceProperties()V

    .line 675
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->linkToController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "stopFaceDetection() - Cannot link with controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_Controller:Lcom/htc/camera/component/ObjectTrackingController;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ObjectTrackingUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 683
    iput-boolean v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_IsStarted:Z

    .line 685
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->isObjectDetectionEnabled:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private triggerFaceFocus(Landroid/graphics/RectF;ZZI)V
    .locals 8

    .prologue
    .line 791
    if-eqz p2, :cond_0

    .line 792
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const v2, 0x3a03126f    # 5.0E-4f

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    const v3, 0x3a03126f    # 5.0E-4f

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    const v4, 0x3a03126f    # 5.0E-4f

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const v5, 0x3a03126f    # 5.0E-4f

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object p1, v0

    .line 796
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 797
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 800
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    .line 802
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 803
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v3, v5

    double-to-float v3, v3

    .line 804
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_1

    .line 806
    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 807
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    add-double/2addr v4, v6

    double-to-float v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 809
    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    .line 811
    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 812
    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 832
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 835
    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3ec00000    # 0.375f

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 844
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/camera/effect/HdrScene;

    if-eqz v2, :cond_6

    .line 847
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 848
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 866
    :goto_2
    if-eqz p3, :cond_7

    .line 867
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/AutoFocusMode;->Facetouch:Lcom/htc/camera/AutoFocusMode;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/RectF;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/camera/HTCCamera;->autoFocus(Lcom/htc/camera/AutoFocusMode;[Landroid/graphics/RectF;[Landroid/graphics/RectF;)Z

    .line 871
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 872
    return-void

    .line 815
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 817
    const-wide/high16 v2, 0x3fc0000000000000L    # 0.125

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 818
    const-wide/high16 v3, 0x3fc0000000000000L    # 0.125

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    .line 819
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    .line 821
    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float v2, v4, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 822
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fc0000000000000L    # 0.125

    add-double/2addr v4, v6

    double-to-float v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 824
    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    .line 826
    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 827
    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 840
    :cond_5
    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x3ec00000    # 0.375f

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 861
    :cond_6
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 869
    :cond_7
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/RectF;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/camera/HTCCamera;->autoFocus(Lcom/htc/camera/AutoFocusMode;[Landroid/graphics/RectF;[Landroid/graphics/RectF;)Z

    goto :goto_3
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_StableFace:Lcom/htc/camera/IStableFace;

    .line 95
    invoke-super {p0}, Lcom/htc/camera/IObjectTracker;->deinitializeOverride()V

    .line 96
    return-void
.end method

.method public disableObjectDetection()Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 553
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->threadAccessCheck()V

    .line 554
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "disableObjectDetection() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x0

    .line 573
    :cond_0
    :goto_0
    return-object v0

    .line 561
    :cond_1
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "DisableObjectDetection"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v2, "disableObjectDetection() - Handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 565
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_OTDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_OTDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 567
    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v3, "disableObjectDetection() - Handle count : "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 568
    if-ne v1, v5, :cond_0

    .line 570
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->isObjectDetectionDisabledTemporarily:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 571
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->checkFaceDetection()V

    goto :goto_0
.end method

.method public enableObjectDetection(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    .line 583
    if-nez p1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "enableObjectDetection() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->threadAccessCheck()V

    .line 591
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "enableObjectDetection() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "enableObjectDetection() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_OTDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_OTDisableHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 602
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v2, "enableObjectDetection() - Handle count : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 603
    if-nez v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->checkFaceDetection()V

    .line 606
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->isObjectDetectionDisabledTemporarily:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "enableObjectDetection() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public focusOnObject(Lcom/htc/camera/ObjectTrackingInfo;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 739
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->threadAccessCheck()V

    .line 742
    if-nez p1, :cond_1

    .line 744
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v3, "focusOnObject() - No object specified, focus on last object."

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    iget-object v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    iget v3, v3, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/htc/camera/component/ObjectTrackingUI;->triggerFaceFocus(Landroid/graphics/RectF;ZZI)V

    move v0, v1

    .line 779
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 749
    goto :goto_0

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "focusOnObject() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 756
    goto :goto_0

    .line 758
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusOnObject() - Recording state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 761
    goto :goto_0

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->detectedObjects:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->detectedObjects:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 770
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;

    const-string v1, "focusOnObject() - Unknown object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 771
    goto :goto_0

    .line 776
    :cond_5
    iget-object v0, p1, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_LastfocusFaceRect:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget v3, p1, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/htc/camera/component/ObjectTrackingUI;->triggerFaceFocus(Landroid/graphics/RectF;ZZI)V

    .line 777
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    .line 778
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->focusedObject:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v1

    .line 779
    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    invoke-super {p0, p1}, Lcom/htc/camera/IObjectTracker;->handleMessage(Landroid/os/Message;)V

    .line 119
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/htc/camera/ObjectTrackingInfo;

    check-cast v0, [Lcom/htc/camera/ObjectTrackingInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ObjectTrackingUI;->onFaceUpdated([Lcom/htc/camera/ObjectTrackingInfo;)V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->onOTModeExited()V

    goto :goto_0

    .line 113
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->setSensorFocus()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Lcom/htc/camera/IObjectTracker;->initializeOverride()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_HasFaces:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    .line 133
    const-class v0, Lcom/htc/camera/IStableFace;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ObjectTrackingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IStableFace;

    iput-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI;->m_StableFace:Lcom/htc/camera/IStableFace;

    .line 135
    invoke-virtual {p0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 140
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ObjectTrackingUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ObjectTrackingUI$1;-><init>(Lcom/htc/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 155
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/ObjectTrackingUI$2;

    const-string v3, "Settings.IsAutoFocusEnabled"

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/ObjectTrackingUI$2;-><init>(Lcom/htc/camera/component/ObjectTrackingUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 163
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ObjectTrackingUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ObjectTrackingUI$3;-><init>(Lcom/htc/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 173
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ObjectTrackingUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ObjectTrackingUI$4;-><init>(Lcom/htc/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 186
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ObjectTrackingUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ObjectTrackingUI$5;-><init>(Lcom/htc/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 200
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ObjectTrackingUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ObjectTrackingUI$6;-><init>(Lcom/htc/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 243
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->touchPreviewEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/ObjectTrackingUI$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ObjectTrackingUI$7;-><init>(Lcom/htc/camera/component/ObjectTrackingUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 261
    return-void
.end method
