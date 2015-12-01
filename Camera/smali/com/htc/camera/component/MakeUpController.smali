.class final Lcom/htc/camera/component/MakeUpController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "MakeUpController.java"


# instance fields
.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_FrontCamMakeUpDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_MainCamMakeUpDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_MakeUpEnableDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_NeedToSetParams:Z

.field private m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

.field m_effectManager:Lcom/htc/camera/effect/IEffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 6

    .prologue
    .line 56
    const-string v1, "Make-Up Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 59
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->initialize()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/MakeUpController;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/camera/component/MakeUpController;->m_NeedToSetParams:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/MakeUpController;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/camera/component/MakeUpController;->m_NeedToSetParams:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/MakeUpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/MakeUpController;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/camera/component/MakeUpController;->intialDynamicListner()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/MakeUpController;)Lcom/htc/camera/dualcamera/IDualCameraController;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/MakeUpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/MakeUpController;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/component/MakeUpController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private applyMakeUpLevel(Z)V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 95
    :goto_0
    invoke-static {v0}, Lcom/htc/camera/component/MakeUpController;->mapFromNormalized(F)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(IZ)V

    .line 96
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method private intialDynamicListner()V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    new-instance v0, Lcom/htc/camera/component/MakeUpController$6;

    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const-string v2, "Settings.FrontFaceBeautifierLevel"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/component/MakeUpController$6;-><init>(Lcom/htc/camera/component/MakeUpController;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_FrontCamMakeUpDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 224
    new-instance v0, Lcom/htc/camera/component/MakeUpController$7;

    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const-string v2, "Settings.MainFaceBeautifierLevel"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/component/MakeUpController$7;-><init>(Lcom/htc/camera/component/MakeUpController;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_MainCamMakeUpDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 233
    new-instance v0, Lcom/htc/camera/component/MakeUpController$8;

    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const-string v2, "Settings.IsLiveBeautyEnabled"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/component/MakeUpController$8;-><init>(Lcom/htc/camera/component/MakeUpController;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_MakeUpEnableDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    .line 245
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/MakeUpController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 246
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/MakeUpController$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/MakeUpController$9;-><init>(Lcom/htc/camera/component/MakeUpController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 257
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/MakeUpController$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/MakeUpController$10;-><init>(Lcom/htc/camera/component/MakeUpController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/MakeUpController;->updateMakeUpBySceneEffect(Z)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    const-string v1, "add DynamicListner - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/MakeUpController$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/MakeUpController$11;-><init>(Lcom/htc/camera/component/MakeUpController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static mapFromNormalized(F)I
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 292
    return v0
.end method

.method private setMakeUp(IZ)V
    .locals 5

    .prologue
    const/16 v0, 0x64

    .line 358
    iget-object v1, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    const-string v2, "setMakeUpInternal("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    if-lez p1, :cond_3

    if-ge p1, v0, :cond_2

    .line 364
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_1

    .line 369
    :try_start_0
    const-string v1, "beauty-face-value"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 370
    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 379
    if-eqz v0, :cond_4

    .line 381
    const-string v1, "beauty-face-value"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 382
    if-eqz p2, :cond_1

    .line 383
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 397
    :cond_1
    :goto_1
    return-void

    :cond_2
    move p1, v0

    .line 361
    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    const-string v1, "setMakeUpInternal() - Secondary camera controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 392
    :catch_0
    move-exception v0

    .line 394
    iget-object v1, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    const-string v2, "setMakeUpInternal() - Cannot set brightness"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 390
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    const-string v1, "setMakeUpInternal() - Dual camera controller is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public applyMakeUpLevel(IZ)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/htc/camera/component/MakeUpController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/MakeUpController$1;-><init>(Lcom/htc/camera/component/MakeUpController;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/MakeUpController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyMakeUpLevel() - makeUpLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/MakeUpController;->setMakeUp(IZ)V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->initializeOverride()V

    .line 159
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 160
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/MakeUpController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/MakeUpController$2;-><init>(Lcom/htc/camera/component/MakeUpController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 168
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/MakeUpController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/MakeUpController$3;-><init>(Lcom/htc/camera/component/MakeUpController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 184
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/MakeUpController$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/MakeUpController$4;-><init>(Lcom/htc/camera/component/MakeUpController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 192
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/MakeUpController$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/MakeUpController$5;-><init>(Lcom/htc/camera/component/MakeUpController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 204
    invoke-direct {p0}, Lcom/htc/camera/component/MakeUpController;->intialDynamicListner()V

    .line 207
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/component/MakeUpController;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 208
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/component/MakeUpController;->startMonitoringComponent(Ljava/lang/Class;I)V

    .line 209
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 303
    invoke-super {p0, p1}, Lcom/htc/camera/component/ServiceCameraComponent;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 306
    instance-of v0, p1, Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_0

    move-object v0, p1

    .line 309
    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/MakeUpController$12;

    iget-object v2, p0, Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v2, v2, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/component/MakeUpController$12;-><init>(Lcom/htc/camera/component/MakeUpController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/MakeUpController$13;

    iget-object v2, p0, Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v2, v2, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/component/MakeUpController$13;-><init>(Lcom/htc/camera/component/MakeUpController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_1
    instance-of v0, p1, Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_2

    .line 339
    check-cast p1, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 340
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/MakeUpController$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/MakeUpController$14;-><init>(Lcom/htc/camera/component/MakeUpController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 348
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0, v4}, Lcom/htc/camera/component/MakeUpController;->updateMakeUpBySceneEffect(Z)V

    .line 351
    :cond_2
    return-void
.end method

.method public updateMakeUpBySceneEffect(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentEffect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v3, v3, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentScene:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v3, v3, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_LIVE_BEAUTY_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->isLiveFaceBeautySupported()Z

    move-result v0

    if-nez v0, :cond_8

    .line 111
    :cond_2
    sget-object v0, Lcom/htc/camera/component/MakeUpController$15;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMakeUpBySceneEffect() - Unknown camera mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v4, p1}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(IZ)V

    goto/16 :goto_0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/AutoScene;

    if-eqz v0, :cond_3

    .line 117
    invoke-direct {p0, p1}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(Z)V

    goto/16 :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/ap;

    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/component/MakeUpController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    const/16 v0, 0x50

    invoke-virtual {p0, v0, v5}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(IZ)V

    goto/16 :goto_0

    .line 124
    :cond_4
    const/16 v0, 0x32

    invoke-virtual {p0, v0, v5}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(IZ)V

    goto/16 :goto_0

    .line 127
    :cond_5
    invoke-virtual {p0, v4, p1}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(IZ)V

    goto/16 :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/an;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 134
    :cond_6
    invoke-direct {p0, p1}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(Z)V

    goto/16 :goto_0

    .line 137
    :cond_7
    invoke-virtual {p0, v4, p1}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(IZ)V

    goto/16 :goto_0

    .line 146
    :cond_8
    invoke-virtual {p0, v4, p1}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(IZ)V

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
