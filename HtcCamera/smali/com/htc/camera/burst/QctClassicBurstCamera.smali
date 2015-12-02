.class Lcom/htc/camera/burst/QctClassicBurstCamera;
.super Lcom/htc/camera/burst/ClassicBurstCamera;
.source "QctClassicBurstCamera.java"


# instance fields
.field private PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

.field private m_IsCaptureModeChanged:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 23
    const-string v0, "QCT Classic Burst Camera"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/burst/ClassicBurstCamera;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V

    .line 24
    return-void
.end method

.method private resetCaptureMode()V
    .locals 3

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->m_IsCaptureModeChanged:Z

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 96
    const-class v0, Lcom/htc/camera/component/PanoramaController2;

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2;

    iput-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    .line 97
    if-eqz v1, :cond_4

    .line 99
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "resetCaptureMode() - Reset capture mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "capture-mode-values"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string v0, "auto"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const-string v0, "auto"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 111
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 115
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->m_IsCaptureModeChanged:Z

    .line 117
    :cond_2
    return-void

    .line 107
    :cond_3
    const-string v0, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureMode() - No camera controller to reset capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCaptureMode()V
    .locals 3

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->m_IsCaptureModeChanged:Z

    if-nez v0, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 34
    const-class v0, Lcom/htc/camera/component/PanoramaController2;

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2;

    iput-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    .line 35
    if-eqz v1, :cond_4

    .line 37
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set capture mode to \'contiburst\'"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "capture-mode-values"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "burst"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const-string v0, "burst"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 49
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->m_IsCaptureModeChanged:Z

    .line 55
    :cond_2
    :goto_1
    return-void

    .line 45
    :cond_3
    const-string v0, "capture-mode"

    const-string v2, "contiburst"

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No camera controller to set capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onOneShotShutterReceived(Lcom/htc/camera/Handle;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/htc/camera/burst/ClassicBurstCamera;->onOneShotShutterReceived(Lcom/htc/camera/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 85
    :goto_0
    return v0

    .line 68
    :cond_0
    sget-object v2, Lcom/htc/camera/burst/QctClassicBurstCamera$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/burst/QctClassicBurstCamera;->isCurrentSession(Lcom/htc/camera/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->m_IsCaptureModeChanged:Z

    if-nez v0, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->setCaptureMode()V

    .line 85
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResetStates()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->resetCaptureMode()V

    .line 129
    invoke-super {p0}, Lcom/htc/camera/burst/ClassicBurstCamera;->onResetStates()V

    .line 130
    return-void
.end method

.method public startBurstShots()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->threadAccessCheck()V

    .line 140
    invoke-virtual {p0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "startBurstShots() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 170
    :goto_0
    return v0

    .line 147
    :cond_0
    sget-object v3, Lcom/htc/camera/burst/QctClassicBurstCamera$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBurstShots() - Current burst camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 163
    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/htc/camera/burst/QctClassicBurstCamera;->takePicture(Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 151
    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Taking one-shot, start burst-shots later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    iget-object v1, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/b;->equals(Lcom/htc/camera/property/Property;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->m_IsCaptureModeChanged:Z

    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/htc/camera/burst/QctClassicBurstCamera;->setCaptureMode()V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v2

    .line 170
    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/burst/QctClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Taking burst-shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 160
    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
