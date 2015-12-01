.class public final Lcom/htc/camera/component/ContinuousBurstUI;
.super Lcom/htc/camera/component/cm;
.source "ContinuousBurstUI.java"


# instance fields
.field private final isEntered:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_AutoSceneController:Lcom/htc/camera/IAutoSceneController;

.field private m_BurstMode:I

.field private volatile m_CanCapture:Z

.field private m_CaptureBar:Lcom/htc/camera/ICaptureBar;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

.field private m_ExpectedPhotoCount:I

.field private m_IsShutterReceived:Z

.field private m_LongPressTimeout:I

.field private m_PhotoSavingStartedTime:J

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_SDCardUI:Lcom/htc/camera/io/e;

.field private m_State:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    const-string v0, "Continuous Burst UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 73
    iput v2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_BurstMode:I

    .line 80
    iput v2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I

    .line 105
    const-string v0, "ContinuousBurstUI.IsEntered"

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->isEntered:Lcom/htc/camera/property/Property;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/ContinuousBurstUI;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/ContinuousBurstUI;)Lcom/htc/camera/component/ContinuousBurstController;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/ContinuousBurstUI;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_BurstMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/ContinuousBurstUI;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->startLongPressTimer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/ContinuousBurstUI;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ContinuousBurstUI;->updateBurstMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ContinuousBurstUI;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/camera/component/ContinuousBurstUI;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    return p1
.end method

.method static synthetic access$202(Lcom/htc/camera/component/ContinuousBurstUI;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/component/ContinuousBurstUI;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->canUseContinuousBurst()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/camera/component/ContinuousBurstUI;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_IsShutterReceived:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/camera/component/ContinuousBurstUI;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->isEntered:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/camera/component/ContinuousBurstUI;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ContinuousBurstUI;->startAlbum(Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ContinuousBurstUI;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/camera/component/ContinuousBurstUI;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private canUseContinuousBurst()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 138
    :goto_0
    return v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 125
    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v2, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_4

    move v0, v1

    .line 131
    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 133
    if-eqz v0, :cond_5

    instance-of v2, v0, Lcom/htc/camera/effect/AutoScene;

    if-nez v2, :cond_5

    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-nez v0, :cond_5

    move v0, v1

    .line 134
    goto :goto_0

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 136
    :goto_1
    if-eqz v0, :cond_7

    instance-of v0, v0, Lcom/htc/camera/dualcamera/DualCaptureMode;

    if-eqz v0, :cond_7

    move v0, v1

    .line 137
    goto :goto_0

    .line 135
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 138
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 525
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_0

    .line 533
    :goto_0
    return v6

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v1, "Continuous Burst Controller"

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ContinuousBurstController;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    .line 530
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_1

    .line 531
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    const/16 v2, 0x2715

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_CONTINUOUS_BURST_LIMITED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0x14

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_2

    move v4, v6

    :cond_2
    move v6, v4

    goto :goto_0

    .line 531
    :cond_3
    sget v3, Lcom/htc/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1
.end method

.method private onCaptureButtonLongPressed()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 542
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->isEntered:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonLongPressed() - Not entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_0
    return-void

    .line 547
    :cond_0
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I

    if-eq v0, v2, :cond_1

    .line 549
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureButtonLongPressed() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureButtonLongPressed() - currentScene == SmartSceneDetectorScene"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 580
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureButtonLongPressed() - Set burst mode to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->updateBurstMode(I)V

    goto :goto_0

    .line 564
    :cond_2
    sget-object v3, Lcom/htc/camera/component/ContinuousBurstUI$8;->$SwitchMap$com$htc$camera$AutoDetectedScene:[I

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0}, Lcom/htc/camera/AutoDetectedScene;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 576
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureButtonLongPressed() - Unsupported scene : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    move v0, v2

    .line 568
    goto :goto_1

    .line 570
    :pswitch_1
    const/4 v0, 0x2

    .line 571
    goto :goto_1

    :pswitch_2
    move v0, v1

    .line 574
    goto :goto_1

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureButtonLongPressed() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPhotoSaveStarted(Lcom/htc/camera/CaptureHandle;I)V
    .locals 6

    .prologue
    .line 593
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 596
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I

    .line 599
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableActionScreen()V

    .line 602
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 603
    if-eqz v0, :cond_0

    .line 604
    const v1, 0x7f080173

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 607
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 629
    :goto_1
    iput p2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    .line 630
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_PhotoSavingStartedTime:J

    .line 632
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStarted() - Photo count:"

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", timestamp:"

    iget-wide v4, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_PhotoSavingStartedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 633
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStarted() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I

    .line 615
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStarted() - hide WDR processing UI."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 619
    if-eqz v0, :cond_3

    .line 620
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 623
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 627
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_1

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStarted() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onPhotoSaveStopped(Lcom/htc/camera/CaptureHandle;ILjava/lang/String;Lcom/htc/camera/io/Path;I)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 641
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    if-eq v0, p2, :cond_0

    .line 642
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPhotoSaveStopped() - Expected photo count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual photo count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 647
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 648
    if-eqz v0, :cond_7

    .line 649
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 652
    :goto_0
    iput-object v9, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 657
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_PhotoSavingStartedTime:J

    sub-long/2addr v2, v4

    .line 658
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v4, "onPhotoSaveStopped() - File saving time:"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 661
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I

    if-le v0, v8, :cond_6

    .line 663
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    .line 666
    iput v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I

    .line 669
    const-class v0, Lcom/htc/camera/media/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    .line 670
    if-eqz v0, :cond_2

    instance-of v0, p4, Lcom/htc/camera/io/DCFPath;

    if-eqz v0, :cond_2

    .line 672
    new-instance v0, Lcom/htc/camera/io/Path;

    iget-object v5, p4, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMAG"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p4, Lcom/htc/camera/io/DCFPath;

    iget-object v7, p4, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    iget v7, v7, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    add-int/lit16 v7, v7, 0x2710

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_BURST002_COVER.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p4, v0

    .line 677
    :cond_2
    new-instance v5, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;

    invoke-direct {v5, p0, v9}, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/component/ContinuousBurstUI$1;)V

    .line 678
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iput-object v0, v5, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 679
    iput-object p4, v5, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 680
    iput p5, v5, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->orientation:I

    .line 681
    iput p2, v5, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->photoCount:I

    .line 682
    iput-object p3, v5, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->bucketID:Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_3

    .line 686
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 690
    if-eqz v0, :cond_4

    .line 692
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 693
    new-instance v6, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-direct {v6, v7, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v6, v5, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    .line 700
    :cond_4
    :goto_1
    const-wide v6, 0x2540be400L

    cmp-long v0, v2, v6

    if-ltz v0, :cond_a

    .line 702
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_SDCardUI:Lcom/htc/camera/io/e;

    if-nez v0, :cond_5

    .line 703
    const-class v0, Lcom/htc/camera/io/e;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/e;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_SDCardUI:Lcom/htc/camera/io/e;

    .line 704
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_SDCardUI:Lcom/htc/camera/io/e;

    if-eqz v0, :cond_9

    .line 706
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStopped() - Notify SD card performance low: Burst"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_SDCardUI:Lcom/htc/camera/io/e;

    new-instance v1, Lcom/htc/camera/component/ContinuousBurstUI$7;

    invoke-direct {v1, p0, v5, v4, p1}, Lcom/htc/camera/component/ContinuousBurstUI$7;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/io/e;->notifySDCardPerformanceLow(Landroid/content/DialogInterface$OnDismissListener;)Z

    move-result v0

    .line 727
    :goto_2
    if-nez v0, :cond_6

    .line 730
    invoke-direct {p0, v5}, Lcom/htc/camera/component/ContinuousBurstUI;->startAlbum(Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;)V

    .line 733
    invoke-virtual {v4, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 736
    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    .line 739
    :cond_6
    return-void

    .line 651
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoSaveStopped() - No IProcessingDialogManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    :cond_8
    new-instance v6, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    invoke-direct {v6, v7, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v6, v5, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    goto :goto_1

    .line 724
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v2, "onPhotoSaveStopped() - Cannot find ISDCardUI"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method private showWdrProcessingDialog()Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "showWdrProcessingDialog()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_AutoSceneController:Lcom/htc/camera/IAutoSceneController;

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_AutoSceneController:Lcom/htc/camera/IAutoSceneController;

    iget-object v0, v0, Lcom/htc/camera/IAutoSceneController;->isWdrScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v2, "showWdrProcessingDialog() - isWdrScene is true, show processing UI."

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 756
    if-eqz v0, :cond_1

    .line 757
    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 765
    :cond_0
    :goto_1
    return-object v1

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v2, "showWdrProcessingDialog() - No IProcessingDialogManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v2, "showWdrProcessingDialog() - Cannot find IAutoSceneController interface."

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startAlbum(Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;)V
    .locals 4

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 789
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isContinuousBurstAutoReview:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->photoCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 795
    iget-object v0, p1, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_1

    .line 797
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    const-string v2, "key_bucket_id"

    iget-object v3, p1, Lcom/htc/camera/component/ContinuousBurstUI$BurstMediaInfo;->bucketID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    invoke-virtual {v1, v0, p1}, Lcom/htc/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/htc/camera/media/MediaInfo;)Z

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStopped() - No file path to start auto-review"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startLongPressTimer()V
    .locals 9

    .prologue
    .line 773
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-nez v0, :cond_0

    .line 774
    const-class v0, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    sget-object v1, Lcom/htc/camera/ICaptureBar;->PROPERTY_IS_HW_CAMERA_BUTTON_PRESSED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ICaptureBar;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x44c

    :goto_0
    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    .line 779
    :cond_1
    const/16 v2, 0x2712

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    int-to-long v6, v0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 780
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    const/16 v2, 0x271d

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    add-int/lit8 v3, v0, -0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "startLongPressTimer() m_LongPressTimeout:"

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    return-void

    .line 777
    :cond_3
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method private updateBurstMode(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 811
    iput p1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_BurstMode:I

    .line 814
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_IsShutterReceived:Z

    if-eqz v0, :cond_0

    .line 816
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_BurstMode:I

    if-ne v0, v6, :cond_0

    .line 818
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 819
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->showWdrProcessingDialog()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 826
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 827
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    const/16 v2, 0x2714

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 830
    :goto_1
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "updateBurstMode() - WDR processing is already shown."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "updateBurstMode() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public canCapture()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    .line 151
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 154
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 155
    return-void
.end method

.method public enter()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "Enter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->isEntered:Lcom/htc/camera/property/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableSelfTimer()V

    .line 173
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "Exit"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->isEntered:Lcom/htc/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 189
    :cond_0
    iput-boolean v2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CanCapture:Z

    .line 192
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    .line 196
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "No controller to notify"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 249
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->onCaptureButtonLongPressed()V

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->onPhotoSaveStarted(Lcom/htc/camera/CaptureHandle;I)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 224
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    check-cast v4, Lcom/htc/camera/io/Path;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstUI;->onPhotoSaveStopped(Lcom/htc/camera/CaptureHandle;ILjava/lang/String;Lcom/htc/camera/io/Path;I)V

    goto :goto_0

    .line 230
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "MSG_ON_SHUTTER_CALLBACK - Receive shutter callback but not taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_1
    iput-boolean v3, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_IsShutterReceived:Z

    .line 239
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_BurstMode:I

    if-ne v0, v3, :cond_0

    .line 241
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->showWdrProcessingDialog()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "MSG_ON_SHUTTER_CALLBACK - WDR processing is already shown."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/16 v2, 0x1f4

    const/4 v5, 0x1

    .line 261
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 264
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_continuous_burst_long_press_timeout"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    .line 265
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    if-gez v0, :cond_0

    .line 266
    iput v2, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 270
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->externalCommendReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/ContinuousBurstUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ContinuousBurstUI$1;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 345
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ContinuousBurstUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ContinuousBurstUI$2;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 387
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/ContinuousBurstUI$3;

    const-string v3, "Settings.IsContinuousBurstLimited"

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/ContinuousBurstUI$3;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 396
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ContinuousBurstUI$4;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/ContinuousBurstUI$4;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ContinuousBurstUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ContinuousBurstUI$5;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 501
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ContinuousBurstUI$6;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/ContinuousBurstUI$6;-><init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    const-class v0, Lcom/htc/camera/IAutoSceneController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoSceneController;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_AutoSceneController:Lcom/htc/camera/IAutoSceneController;

    .line 515
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 516
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot find ICaptureModeManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_1
    return-void
.end method
