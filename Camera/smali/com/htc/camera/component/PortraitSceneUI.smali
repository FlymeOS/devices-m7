.class public Lcom/htc/camera/component/PortraitSceneUI;
.super Lcom/htc/camera/component/SeekBarUI;
.source "PortraitSceneUI.java"


# instance fields
.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

.field private m_CurrentScene:Lcom/htc/camera/effect/EffectBase;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field protected m_InitValues:Z

.field private m_effectManager:Lcom/htc/camera/effect/IEffectManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    const-string v0, "PortraitSceneUI"

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/SeekBarUI;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 30
    iput-boolean v1, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_InitValues:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/PortraitSceneUI;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/camera/component/PortraitSceneUI;->updateSeekBarUI()V

    return-void
.end method

.method private canShowSeekBar()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 126
    const/4 v2, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_LIVE_BEAUTY_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/htc/camera/component/PortraitSceneUI;->isSkinBeautySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/AutoScene;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    .line 138
    :cond_3
    if-eqz v2, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/component/PortraitSceneUI;->setSeekBarVisibility(II)V

    .line 140
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "canShowSeekBar() - isVisible:"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    return v2

    .line 138
    :cond_4
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getInitialprogress()F
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 79
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    sget-object v2, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 85
    :cond_0
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method private isSkinBeautySupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    .line 111
    if-nez v2, :cond_1

    .line 113
    iget-object v1, p0, Lcom/htc/camera/component/PortraitSceneUI;->TAG:Ljava/lang/String;

    const-string v2, "isSkinBeautySupported() - No camera controller"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canHTCSkinBeautifer()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/htc/camera/CameraController;->isLiveFaceBeautySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private normalizeProgress(I)F
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PortraitSceneUI;->getSeekBarMax(I)I

    move-result v0

    .line 282
    int-to-float v1, p1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method private updateSeekBarUI()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/htc/camera/component/PortraitSceneUI;->canShowSeekBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->showControls()V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->hideControls()V

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Lcom/htc/camera/component/SeekBarUI;->initializeOverride()V

    .line 157
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 158
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PortraitSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 159
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PortraitSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 160
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - No IDualCameraController interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PortraitSceneUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PortraitSceneUI$1;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PortraitSceneUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PortraitSceneUI$2;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 184
    :cond_1
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PortraitSceneUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PortraitSceneUI$3;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 195
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PortraitSceneUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PortraitSceneUI$4;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 206
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PortraitSceneUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PortraitSceneUI$5;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 215
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PortraitSceneUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PortraitSceneUI$6;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 228
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PortraitSceneUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PortraitSceneUI$7;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 242
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/PortraitSceneUI$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/PortraitSceneUI$8;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 251
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PortraitSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 252
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/PortraitSceneUI$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/PortraitSceneUI$9;-><init>(Lcom/htc/camera/component/PortraitSceneUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 272
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/PortraitSceneUI;->setIsShortSeekBar(IZ)V

    .line 277
    :cond_2
    :goto_0
    return-void

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "ICaptureModeManager = null!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onEffectApplied(Lcom/htc/camera/effect/EffectBase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectApplied - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lcom/htc/camera/effect/z;

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    if-eq v0, p1, :cond_1

    .line 47
    iput-object p1, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    .line 48
    invoke-direct {p0}, Lcom/htc/camera/component/PortraitSceneUI;->updateSeekBarUI()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput-boolean v3, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_InitValues:Z

    goto :goto_0

    .line 55
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/effect/ab;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_CurrentScene:Lcom/htc/camera/effect/EffectBase;

    if-eq v0, p1, :cond_3

    .line 59
    iput-object p1, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_CurrentScene:Lcom/htc/camera/effect/EffectBase;

    .line 60
    invoke-direct {p0}, Lcom/htc/camera/component/PortraitSceneUI;->updateSeekBarUI()V

    goto :goto_0

    .line 64
    :cond_3
    iput-boolean v3, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_InitValues:Z

    goto :goto_0
.end method

.method protected onSeekBarProgressChanged(II)V
    .locals 3

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 291
    iget-boolean v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_InitValues:Z

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 294
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-direct {p0, p2}, Lcom/htc/camera/component/PortraitSceneUI;->normalizeProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-direct {p0, p2}, Lcom/htc/camera/component/PortraitSceneUI;->normalizeProgress(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected showControls()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "showControls()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_InitValues:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/htc/camera/component/PortraitSceneUI;->getInitialprogress()F

    move-result v0

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/PortraitSceneUI;->getSeekBarMax(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/camera/component/PortraitSceneUI;->setSeekBarProgress(II)V

    .line 96
    iput-boolean v2, p0, Lcom/htc/camera/component/PortraitSceneUI;->m_InitValues:Z

    .line 101
    :goto_0
    invoke-super {p0}, Lcom/htc/camera/component/SeekBarUI;->showControls()V

    .line 102
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/camera/component/PortraitSceneUI;->getSeekBarProgress(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/camera/component/PortraitSceneUI;->setSeekBarProgress(II)V

    goto :goto_0
.end method
