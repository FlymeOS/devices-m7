.class final Lcom/htc/camera/component/CameraModeScreen;
.super Lcom/htc/camera/component/cm;
.source "CameraModeScreen.java"


# instance fields
.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_InitialModeImageView:Landroid/widget/ImageView;

.field private m_IsChangingCaptureMode:Z

.field private m_ModeImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 48
    const-string v0, "Camera Mode Screen"

    const/4 v1, 0x0

    const v2, 0x7f0e00d4

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/CameraModeScreen;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_IsChangingCaptureMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/CameraModeScreen;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/camera/component/CameraModeScreen;->m_IsChangingCaptureMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/CameraModeScreen;Lcom/htc/camera/CameraMode;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraModeScreen;->showModeIcon(Lcom/htc/camera/CameraMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/CameraModeScreen;)Lcom/htc/camera/effect/IEffectManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    return-object v0
.end method

.method private showModeIcon(Lcom/htc/camera/CameraMode;)V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraModeScreen;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/component/CameraModeScreen;->showModeIcon(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/CameraMode;)V

    .line 183
    return-void
.end method

.method private showModeIcon(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/CameraMode;)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne p2, v0, :cond_1

    const v0, 0x7f0200a7

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 191
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 192
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 188
    :cond_1
    const v0, 0x7f020012

    goto :goto_1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 61
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraModeScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 62
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraModeScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 63
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraModeScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 66
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraModeScreen;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 67
    const v0, 0x7f0e00d8

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_InitialModeImageView:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0e00d4

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    .line 71
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CameraModeScreen$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraModeScreen$1;-><init>(Lcom/htc/camera/component/CameraModeScreen;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 91
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeChangingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/CameraModeScreen$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraModeScreen$2;-><init>(Lcom/htc/camera/component/CameraModeScreen;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 103
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CameraModeScreen$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraModeScreen$3;-><init>(Lcom/htc/camera/component/CameraModeScreen;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 135
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_STOPPING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/CameraModeScreen$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraModeScreen$4;-><init>(Lcom/htc/camera/component/CameraModeScreen;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 145
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 155
    :cond_0
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 165
    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 175
    :cond_0
    return-void
.end method
