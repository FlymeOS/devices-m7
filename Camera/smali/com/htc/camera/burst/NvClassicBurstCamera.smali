.class final Lcom/htc/camera/burst/NvClassicBurstCamera;
.super Lcom/htc/camera/burst/ClassicBurstCameraBase;
.source "NvClassicBurstCamera.java"


# instance fields
.field private PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

.field private m_IsCaptureModeChanged:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "NV Classic Burst Camera"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/burst/ClassicBurstCameraBase;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V

    .line 25
    return-void
.end method

.method private resetCaptureMode()V
    .locals 3

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->m_IsCaptureModeChanged:Z

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 92
    const-class v0, Lcom/htc/camera/component/PanoramaController2;

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2;

    iput-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    .line 93
    if-eqz v1, :cond_4

    .line 95
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "resetCaptureMode() - Reset capture mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "capture-mode-values"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "auto"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const-string v0, "auto"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 111
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->m_IsCaptureModeChanged:Z

    .line 113
    :cond_2
    return-void

    .line 103
    :cond_3
    const-string v0, "capture-mode"

    const-string v2, "zsl"

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureMode() - No camera controller to reset capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCaptureMode()V
    .locals 3

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->m_IsCaptureModeChanged:Z

    if-nez v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 123
    const-class v0, Lcom/htc/camera/component/PanoramaController2;

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2;

    iput-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    .line 124
    if-eqz v1, :cond_4

    .line 126
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set capture mode to \'contiburst\'"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "capture-mode-values"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "burst"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const-string v0, "burst"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->m_IsCaptureModeChanged:Z

    .line 144
    :cond_2
    :goto_1
    return-void

    .line 134
    :cond_3
    const-string v0, "capture-mode"

    const-string v2, "contiburst"

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No camera controller to set capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onOneShotShutterReceived(Lcom/htc/camera/Handle;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/htc/camera/burst/ClassicBurstCameraBase;->onOneShotShutterReceived(Lcom/htc/camera/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 68
    :goto_0
    return v0

    .line 38
    :cond_0
    sget-object v3, Lcom/htc/camera/burst/NvClassicBurstCamera$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/burst/NvClassicBurstCamera;->isCurrentSession(Lcom/htc/camera/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-direct {p0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->setCaptureMode()V

    .line 57
    invoke-virtual {p0, v2}, Lcom/htc/camera/burst/NvClassicBurstCamera;->takePicture(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "onOneShotShutterReceived() - Fail to take next picture, stop capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "onOneShotShutterReceived() - Complete burst-shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->onResetStates()V

    move v0, v2

    .line 68
    goto :goto_0

    .line 38
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
    .line 78
    invoke-direct {p0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->resetCaptureMode()V

    .line 81
    invoke-super {p0}, Lcom/htc/camera/burst/ClassicBurstCameraBase;->onResetStates()V

    .line 82
    return-void
.end method

.method public startBurstShots()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v3, "startBurstShots()"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->threadAccessCheck()V

    .line 158
    invoke-virtual {p0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "startBurstShots() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 189
    :goto_0
    return v0

    .line 165
    :cond_0
    sget-object v3, Lcom/htc/camera/burst/NvClassicBurstCamera$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBurstShots() - Current burst camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 182
    goto :goto_0

    .line 169
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/burst/NvClassicBurstCamera;->setCaptureMode()V

    .line 170
    invoke-virtual {p0, v2}, Lcom/htc/camera/burst/NvClassicBurstCamera;->takePicture(Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 171
    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Taking one-shot, start burst-shots later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v2

    .line 189
    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/burst/NvClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Burst-shots is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 179
    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
