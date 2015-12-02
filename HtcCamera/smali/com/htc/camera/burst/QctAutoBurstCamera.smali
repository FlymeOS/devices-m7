.class Lcom/htc/camera/burst/QctAutoBurstCamera;
.super Lcom/htc/camera/burst/AutoBurstCameraBase;
.source "QctAutoBurstCamera.java"


# instance fields
.field private PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

.field private m_IsCaptureModeChanged:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "QCT Auto Burst Camera"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/burst/AutoBurstCameraBase;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onOneShotJpegReceived(Lcom/htc/camera/Handle;[B)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onOneShotJpegReceived(Lcom/htc/camera/Handle;[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    :goto_0
    return v0

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/htc/camera/burst/QctAutoBurstCamera;->getAutoBurstState()Lcom/htc/camera/burst/AutoBurstState;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/burst/AutoBurstState;->Capturing:Lcom/htc/camera/burst/AutoBurstState;

    if-eq v2, v3, :cond_4

    .line 45
    sget-object v2, Lcom/htc/camera/burst/AutoBurstState;->Capturing:Lcom/htc/camera/burst/AutoBurstState;

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/burst/QctAutoBurstCamera;->setAutoBurstState(Lcom/htc/camera/burst/AutoBurstState;Z)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    .line 50
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/burst/QctAutoBurstCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v3

    sget-object v4, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v3, v4, :cond_1

    move v2, v0

    .line 54
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/camera/burst/QctAutoBurstCamera;->takePicture(Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 58
    :goto_2
    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "onOneShotJpegReceived() - Fail to take picture, stop capturing"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/burst/QctAutoBurstCamera;->stopBurstShots()V

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method protected onOneShotShutterReceived(Lcom/htc/camera/Handle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onOneShotShutterReceived(Lcom/htc/camera/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const/4 v0, 0x0

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/burst/QctAutoBurstCamera;->getAutoBurstState()Lcom/htc/camera/burst/AutoBurstState;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/burst/AutoBurstState;->Capturing:Lcom/htc/camera/burst/AutoBurstState;

    if-eq v1, v2, :cond_0

    .line 83
    sget-object v1, Lcom/htc/camera/burst/AutoBurstState;->Capturing:Lcom/htc/camera/burst/AutoBurstState;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/burst/QctAutoBurstCamera;->setAutoBurstState(Lcom/htc/camera/burst/AutoBurstState;Z)Z

    goto :goto_0
.end method

.method protected onResetStates()V
    .locals 3

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->m_IsCaptureModeChanged:Z

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/htc/camera/burst/QctAutoBurstCamera;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 100
    const-class v0, Lcom/htc/camera/component/PanoramaController2;

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/QctAutoBurstCamera;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2;

    iput-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    .line 101
    if-eqz v1, :cond_4

    .line 103
    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "onResetStates() - Reset capture mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "capture-mode-values"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "auto"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const-string v0, "auto"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 115
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 119
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->m_IsCaptureModeChanged:Z

    .line 123
    :cond_2
    invoke-super {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onResetStates()V

    .line 124
    return-void

    .line 111
    :cond_3
    const-string v0, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "onResetStates() - No camera controller to reset capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSetAutoBurstState(Lcom/htc/camera/CameraController;Lcom/htc/camera/burst/AutoBurstState;Z)V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/htc/camera/burst/AutoBurstState;->Capturing:Lcom/htc/camera/burst/AutoBurstState;

    if-ne p2, v0, :cond_2

    .line 134
    const-class v0, Lcom/htc/camera/component/PanoramaController2;

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/QctAutoBurstCamera;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2;

    iput-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    .line 135
    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "onSetAutoBurstState() - Set capture mode to \'contiburst-one-shot\'"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "capture-mode-values"

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string v0, "burst"

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->PanoramaController2:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const-string v0, "burst"

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 147
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/burst/QctAutoBurstCamera;->m_IsCaptureModeChanged:Z

    .line 149
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onSetAutoBurstState(Lcom/htc/camera/CameraController;Lcom/htc/camera/burst/AutoBurstState;Z)V

    .line 150
    return-void

    .line 143
    :cond_3
    const-string v0, "capture-mode"

    const-string v1, "contiburst-one-shot"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
