.class final Lcom/htc/camera/component/SmileCaptureUI;
.super Lcom/htc/camera/component/cm;
.source "SmileCaptureUI.java"


# instance fields
.field private m_BubbleToastContent:Landroid/view/View;

.field private m_BubbleToastHandle:Lcom/htc/camera/Handle;

.field private m_BubbleToastManager:Lcom/htc/camera/u;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_Controller:Lcom/htc/camera/component/SmileCaptureController;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_IsPending:Z

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

.field private m_objectTracker:Lcom/htc/camera/IObjectTracker;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 68
    const-string v0, "Smile-Capture UI"

    const/4 v1, 0x1

    const v2, 0x7f0e0119

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_IsPending:Z

    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureUI;->disableAutoInflateView()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SmileCaptureUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/component/SmileCaptureUI;->updateSmileCaptureState()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/camera/component/SmileCaptureUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/component/SmileCaptureUI;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/SmileCaptureUI;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SmileCaptureUI;->showToast(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/SmileCaptureUI;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SmileCaptureUI;->checkSmileFace(Ljava/util/List;)V

    return-void
.end method

.method private checkSmileFace(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 275
    iget-object v2, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSmileFace() - faceIdx:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", smile_degree:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileDegree:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", smile_score"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileScore:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileDegree:I

    const/16 v2, 0x32

    if-le v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileScore:I

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    .line 278
    const/16 v0, 0x2711

    const/4 v2, 0x1

    invoke-virtual {p0, p0, v0, v2}, Lcom/htc/camera/component/SmileCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 273
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 281
    :cond_1
    return-void
.end method

.method private isSmileCaptureEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v2

    .line 297
    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FACE_DETECTION_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_SMILE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_AUTO_FOCUS_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 335
    :goto_0
    return v0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "isSmileCaptureEnabled() -false Cannot take picture due to self-timer"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 311
    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "isSmileCaptureEnabled() -false isPhotoModeSupported fasle"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 317
    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 322
    goto :goto_0

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmileCaptureEnabled() -false isDualCameraEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v3, v3, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 328
    goto/16 :goto_0

    .line 331
    :cond_5
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 332
    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 333
    :goto_1
    instance-of v0, v0, Lcom/htc/camera/effect/PanoramaScene;

    if-eqz v0, :cond_7

    move v0, v1

    .line 334
    goto/16 :goto_0

    .line 332
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 335
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 343
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_Controller:Lcom/htc/camera/component/SmileCaptureController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 351
    :cond_0
    :goto_0
    return v3

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Smile-Capture Controller"

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SmileCaptureController;

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_Controller:Lcom/htc/camera/component/SmileCaptureController;

    .line 346
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_Controller:Lcom/htc/camera/component/SmileCaptureController;

    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_Controller:Lcom/htc/camera/component/SmileCaptureController;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/SmileCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 349
    goto :goto_0
.end method

.method private showToast(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastContent:Landroid/view/View;

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_4

    .line 370
    if-eqz p1, :cond_3

    .line 372
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->showBubbleToast(Landroid/view/View;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 374
    :cond_2
    const/16 v2, 0x2713

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/SmileCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 379
    iput-object v5, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 383
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "showToast() - No IBubbleToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private smileCapture()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 391
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "smileCapture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/htc/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "smileCapture() - Smile-capture is not enabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_IsPending:Z

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "smileCapture() - pending ignore this time."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 405
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "smileCapture() - Activity is paused or idle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_3
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smileCapture() - Current camera mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_4
    const-string v0, "Smile Capture"

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 418
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "smileCapture() - Cannot take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_5
    iput-boolean v8, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_IsPending:Z

    .line 421
    const/16 v2, 0x2712

    const/4 v5, 0x0

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/SmileCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0
.end method

.method private updateSmileCaptureState()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 431
    invoke-direct {p0}, Lcom/htc/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z

    move-result v7

    .line 434
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->isSelfieMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/htc/camera/component/SmileCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_Controller:Lcom/htc/camera/component/SmileCaptureController;

    const/16 v2, 0x2712

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/SmileCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 443
    :goto_0
    invoke-direct {p0, v7}, Lcom/htc/camera/component/SmileCaptureUI;->showToast(Z)V

    .line 444
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "updateSmileCaptureState() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "updateSmileCaptureState() - isSelfieMode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_Controller:Lcom/htc/camera/component/SmileCaptureController;

    .line 80
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->removeMessages(I)V

    .line 82
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 83
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 106
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/SmileCaptureUI;->smileCapture()V

    goto :goto_0

    .line 97
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_IsPending:Z

    goto :goto_0

    .line 100
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/htc/camera/component/SmileCaptureUI;->showToast(Z)V

    goto :goto_0

    .line 91
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
    .line 115
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 121
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    .line 122
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 123
    const-class v0, Lcom/htc/camera/IObjectTracker;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IObjectTracker;

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_objectTracker:Lcom/htc/camera/IObjectTracker;

    .line 124
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 125
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 127
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 137
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SmileCaptureUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SmileCaptureUI$1;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 147
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SmileCaptureUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SmileCaptureUI$2;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 158
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SmileCaptureUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SmileCaptureUI$3;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 171
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SmileCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 172
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/SmileCaptureUI$4;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/SmileCaptureUI$4;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 180
    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    new-instance v3, Lcom/htc/camera/component/SmileCaptureUI$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/SmileCaptureUI$5;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 188
    if-eqz v0, :cond_0

    .line 190
    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SmileCaptureUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SmileCaptureUI$6;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_objectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_objectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->detectedObjects:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SmileCaptureUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SmileCaptureUI$7;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/SmileCaptureUI$8;

    const-string v3, "Settings.IsSmileCaptureEnabled"

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/component/SmileCaptureUI$8;-><init>(Lcom/htc/camera/component/SmileCaptureUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 228
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/SmileCaptureUI$9;

    const-string v3, "Settings.IsFaceDetectionEnabled"

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/component/SmileCaptureUI$9;-><init>(Lcom/htc/camera/component/SmileCaptureUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 236
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/SmileCaptureUI$10;

    const-string v3, "Settings.IsAutoFocusEnabled"

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/component/SmileCaptureUI$10;-><init>(Lcom/htc/camera/component/SmileCaptureUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 244
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/SmileCaptureUI$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SmileCaptureUI$11;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 252
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/SmileCaptureUI$12;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SmileCaptureUI$12;-><init>(Lcom/htc/camera/component/SmileCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 263
    :cond_2
    return-void
.end method

.method public isSelfieMode(Lcom/htc/camera/capturemode/CaptureMode;)Z
    .locals 1

    .prologue
    .line 284
    instance-of v0, p1, Lcom/htc/camera/capturemode/b;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/htc/camera/capturemode/UserCaptureMode;

    invoke-virtual {p1}, Lcom/htc/camera/capturemode/UserCaptureMode;->getDefaultCaptureMode()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/capturemode/b;

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
