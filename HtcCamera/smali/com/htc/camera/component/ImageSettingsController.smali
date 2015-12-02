.class final Lcom/htc/camera/component/ImageSettingsController;
.super Lcom/htc/camera/IImageSettingsController;
.source "ImageSettingsController.java"


# instance fields
.field private final m_AecLockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_AwbLockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

.field private m_NeedToSetParams:Z

.field private m_SupportFrontCameraISO:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 6

    .prologue
    .line 61
    const-string v1, "Image Settings Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/IImageSettingsController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->initialize()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ImageSettingsController;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_NeedToSetParams:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/ImageSettingsController;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/camera/component/ImageSettingsController;->m_NeedToSetParams:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ImageSettingsController;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->unlockAutoExposure(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ImageSettingsController;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->unlockAutoWhiteBalance(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ImageSettingsController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ImageSettingsController;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->applyImageSettings(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ImageSettingsController;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ImageSettingsController;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_SupportFrontCameraISO:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ImageSettingsController;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/ImageSettingsController;->setIso(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->lockAutoExposure(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->lockAutoWhiteBalance(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method private applyImageSettings(Z)V
    .locals 2

    .prologue
    .line 186
    new-instance v1, Lcom/htc/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 187
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->brightness:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 188
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->contrast:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 189
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->iso:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->saturation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 196
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->sharpness:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 197
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->whiteBalance:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->whiteBalance:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 201
    invoke-virtual {p0, v1, p1}, Lcom/htc/camera/component/ImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 202
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->iso:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    goto :goto_0
.end method

.method private ensureNormalizedValue(F)F
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 296
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    .line 300
    :cond_0
    :goto_0
    return p1

    .line 298
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    .line 299
    goto :goto_0
.end method

.method private lockAutoExposure(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 515
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoExposure() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoExposure() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoExposure() - Manual capture is enabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoExposure() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 543
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private lockAutoWhiteBalance(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 584
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoWhiteBalance() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoWhiteBalance() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoWhiteBalance() - Manual capture is enabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoWhiteBalance() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 607
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 608
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 609
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 612
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 623
    if-nez p2, :cond_0

    .line 625
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "mapToActualImageSettingValue() - No value range, use default value"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_0
    return p3

    .line 628
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v1

    .line 631
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 632
    iget-object v0, p2, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p2, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int p3, v2, v0

    goto :goto_0

    .line 633
    :cond_1
    iget-object v0, p2, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr p3, v0

    goto :goto_0
.end method

.method private setBrightness(FZ)V
    .locals 4

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setBrightness("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v1

    .line 670
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 672
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getBrightnessRange()Lcom/htc/camera/Range;

    move-result-object v2

    .line 676
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getDefaultBrightness()I

    move-result v3

    .line 677
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I

    move-result v2

    .line 680
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->setExposureCompensation(I)V

    .line 681
    if-eqz p2, :cond_0

    .line 682
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 690
    if-eqz v0, :cond_2

    .line 692
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getBrightnessRange()Lcom/htc/camera/Range;

    move-result-object v2

    .line 693
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getDefaultBrightness()I

    move-result v3

    .line 694
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I

    move-result v2

    .line 695
    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->setExposureCompensation(I)V

    .line 696
    if-eqz p2, :cond_1

    .line 697
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->brightness:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 717
    return-void

    .line 700
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setBrightness() - Secondary camera controller is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 708
    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v3, "setBrightness() - Cannot set brightness"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 704
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setBrightness() - Dual camera controller is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setBrightness() - AEC is locked"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setContrast(FZ)V
    .locals 4

    .prologue
    .line 724
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setContrast("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 727
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v1

    .line 730
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getContrastRange()Lcom/htc/camera/Range;

    move-result-object v2

    .line 734
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getDefaultContrast()I

    move-result v3

    .line 735
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I

    move-result v2

    .line 738
    :try_start_0
    const-string v3, "contrast"

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 739
    if-eqz p2, :cond_0

    .line 740
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 748
    if-eqz v0, :cond_2

    .line 750
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getContrastRange()Lcom/htc/camera/Range;

    move-result-object v2

    .line 751
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getDefaultContrast()I

    move-result v3

    .line 752
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I

    move-result v2

    .line 753
    const-string v3, "contrast"

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 754
    if-eqz p2, :cond_1

    .line 755
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->contrast:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 773
    return-void

    .line 758
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setContrast() - Secondary camera controller is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 767
    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v3, "setContrast() - Cannot set contrast"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 762
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setContrast() - Dual camera controller is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private setIso(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setIsoInternal("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    if-eqz p1, :cond_1

    .line 786
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 787
    if-eqz v0, :cond_0

    .line 791
    :try_start_0
    const-string v1, "iso"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-eqz p2, :cond_0

    .line 793
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->iso:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 804
    return-void

    .line 783
    :cond_1
    const-string p1, "auto"

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 798
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setIsoInternal() - Cannot set brightness"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setSaturation(FZ)V
    .locals 6

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setSaturation("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 814
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v1

    .line 817
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    .line 818
    if-eqz v2, :cond_2

    .line 820
    invoke-virtual {v2}, Lcom/htc/camera/CameraController;->getSaturationRange()Lcom/htc/camera/Range;

    move-result-object v3

    .line 822
    iget-object v0, v3, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isSaturationSupported:Lcom/htc/camera/property/Property;

    iget-object v4, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 825
    :cond_0
    invoke-virtual {v2}, Lcom/htc/camera/CameraController;->getDefaultSaturation()I

    move-result v0

    .line 826
    invoke-direct {p0, v1, v3, v0}, Lcom/htc/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I

    move-result v0

    .line 829
    :try_start_0
    const-string v3, "saturation"

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 830
    if-eqz p2, :cond_1

    .line 831
    invoke-virtual {v2}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_4

    .line 836
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 839
    if-eqz v0, :cond_3

    .line 841
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getSaturationRange()Lcom/htc/camera/Range;

    move-result-object v2

    .line 842
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getDefaultSaturation()I

    move-result v3

    .line 843
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I

    move-result v2

    .line 844
    const-string v3, "saturation"

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 845
    if-eqz p2, :cond_2

    .line 846
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->saturation:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 864
    return-void

    .line 849
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setSaturation() - Secondary camera controller is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 858
    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v3, "setSaturation() - Cannot set saturation"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 853
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setSaturation() - Dual camera controller is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private setSharpness(FZ)V
    .locals 4

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setSharpness("

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 874
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ImageSettingsController;->ensureNormalizedValue(F)F

    move-result v1

    .line 877
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_1

    .line 880
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getSharpnessRange()Lcom/htc/camera/Range;

    move-result-object v2

    .line 881
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getDefaultSharpness()I

    move-result v3

    .line 882
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I

    move-result v2

    .line 885
    :try_start_0
    const-string v3, "sharpness"

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 886
    if-eqz p2, :cond_0

    .line 887
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    .line 892
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 895
    if-eqz v0, :cond_2

    .line 897
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getSharpnessRange()Lcom/htc/camera/Range;

    move-result-object v2

    .line 898
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getDefaultSharpness()I

    move-result v3

    .line 899
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/camera/component/ImageSettingsController;->mapToActualImageSettingValue(FLcom/htc/camera/Range;I)I

    move-result v2

    .line 900
    const-string v3, "sharpness"

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 901
    if-eqz p2, :cond_1

    .line 902
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->sharpness:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 920
    return-void

    .line 905
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setSharpness() - Secondary camera controller is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 914
    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v3, "setSharpness() - Cannot set saturation"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 909
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setSharpness() - Dual camera controller is null"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private setWhiteBalance(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 927
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setWhiteBalanceInternal("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 930
    if-eqz p1, :cond_2

    .line 933
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 935
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_1

    .line 940
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 941
    if-eqz p2, :cond_0

    .line 942
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_4

    .line 947
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 950
    if-eqz v0, :cond_3

    .line 952
    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 953
    if-eqz p2, :cond_1

    .line 954
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->whiteBalance:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 974
    return-void

    .line 930
    :cond_2
    const-string p1, "auto"

    goto :goto_0

    .line 957
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setWhiteBalanceInternal() - Secondary camera controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 963
    :catch_0
    move-exception v0

    .line 965
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "setWhiteBalanceInternal() - Cannot set brightness"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 961
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setWhiteBalanceInternal() - Dual camera controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 970
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "setWhiteBalanceInternal() - AWB is locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unlockAutoExposure(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1033
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1037
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1040
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->brightness:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/htc/camera/component/ImageSettingsController;->setBrightness(FZ)V

    .line 1043
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1051
    :cond_0
    return-void
.end method

.method private unlockAutoWhiteBalance(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1110
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1114
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1117
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->whiteBalance:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/htc/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    .line 1120
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1121
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1128
    :cond_0
    return-void
.end method


# virtual methods
.method public applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "applyImageSettings() - No image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "applyImageSettings() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/htc/camera/ImageSettings;

    invoke-direct {v0, p1}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/ImageSettings;)V

    .line 88
    new-instance v1, Lcom/htc/camera/component/ImageSettingsController$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/htc/camera/component/ImageSettingsController$1;-><init>(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/ImageSettings;Z)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "applyImageSettings() - Manual capture is enabled, ignore image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setBrightness(FZ)V

    .line 119
    :cond_4
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setContrast(FZ)V

    .line 124
    :cond_5
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 125
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoMain:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setIso(Ljava/lang/String;Z)V

    .line 135
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 136
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setSaturation(FZ)V

    .line 139
    :cond_7
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 140
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setSharpness(FZ)V

    .line 143
    :cond_8
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    .line 149
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_a

    .line 152
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 157
    :cond_a
    if-eqz p2, :cond_0

    .line 159
    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 166
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "applyImageSettings() - Cannot apply image settings"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 126
    :cond_b
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    iget-boolean v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_SupportFrontCameraISO:Z

    if-eqz v0, :cond_c

    .line 128
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->isoFront:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setIso(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 130
    :cond_c
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_iso_2nd"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setIso(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 145
    :cond_d
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p1, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 285
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 288
    invoke-super {p0}, Lcom/htc/camera/IImageSettingsController;->deinitializeOverride()V

    .line 289
    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-super {p0}, Lcom/htc/camera/IImageSettingsController;->initializeOverride()V

    .line 313
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    iput-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    .line 314
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-nez v0, :cond_0

    .line 315
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 319
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-static {v0}, Lcom/htc/camera/CameraConfigFileReader;->getSupportedIsoValues(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_SupportFrontCameraISO:Z

    .line 323
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 324
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ImageSettingsController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ImageSettingsController$2;-><init>(Lcom/htc/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 334
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ImageSettingsController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ImageSettingsController$3;-><init>(Lcom/htc/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 357
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/component/ImageSettingsController$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ImageSettingsController$4;-><init>(Lcom/htc/camera/component/ImageSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 389
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ImageSettingsController$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ImageSettingsController$5;-><init>(Lcom/htc/camera/component/ImageSettingsController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 443
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 444
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_1

    .line 445
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 446
    :cond_1
    return-void

    .line 320
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockAutoExposure(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 486
    if-nez p1, :cond_0

    .line 488
    const-string v0, "name"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    .line 493
    :cond_0
    new-instance v0, Lcom/htc/camera/SessionHandle;

    invoke-direct {v0, p1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - Called from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    new-instance v1, Lcom/htc/camera/component/ImageSettingsController$6;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/component/ImageSettingsController$6;-><init>(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/SessionHandle;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 510
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->lockAutoExposure(Lcom/htc/camera/Handle;)V

    goto :goto_0
.end method

.method public lockAutoWhiteBalance(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 557
    const-string v0, "name"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x0

    .line 580
    :goto_0
    return-object v0

    .line 562
    :cond_0
    new-instance v0, Lcom/htc/camera/SessionHandle;

    invoke-direct {v0, p1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - Called from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v1, Lcom/htc/camera/component/ImageSettingsController$7;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/component/ImageSettingsController$7;-><init>(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/SessionHandle;)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 579
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->lockAutoWhiteBalance(Lcom/htc/camera/Handle;)V

    goto :goto_0
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 1

    .prologue
    .line 643
    invoke-super {p0, p1}, Lcom/htc/camera/IImageSettingsController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 646
    instance-of v0, p1, Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_0

    .line 649
    check-cast p1, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 650
    :cond_0
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 657
    :cond_1
    :goto_0
    return-void

    .line 652
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_1

    .line 654
    check-cast p1, Lcom/htc/camera/manualcapture/IManualCaptureController;

    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    .line 655
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public unlockAutoExposure(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 983
    if-nez p1, :cond_1

    .line 985
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 992
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    new-instance v0, Lcom/htc/camera/component/ImageSettingsController$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/ImageSettingsController$8;-><init>(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1007
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1016
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1022
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AecLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1025
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_5

    .line 1027
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 1028
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->brightness:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/ImageSettingsController;->setBrightness(FZ)V

    goto :goto_0
.end method

.method public unlockAutoWhiteBalance(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1060
    if-nez p1, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoWhiteBalance() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoWhiteBalance() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1069
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1071
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoWhiteBalance() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    new-instance v0, Lcom/htc/camera/component/ImageSettingsController$9;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/ImageSettingsController$9;-><init>(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/Handle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsController;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1084
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1086
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoWhiteBalance() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1093
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoWhiteBalance() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoWhiteBalance() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1099
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->m_AwbLockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1102
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_5

    .line 1104
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 1105
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController;->whiteBalance:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/ImageSettingsController;->setWhiteBalance(Ljava/lang/String;Z)V

    goto :goto_0
.end method
