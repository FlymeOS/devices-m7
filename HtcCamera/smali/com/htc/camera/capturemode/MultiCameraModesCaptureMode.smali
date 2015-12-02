.class public abstract Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "MultiCameraModesCaptureMode.java"


# instance fields
.field private m_CameraType:Lcom/htc/camera/CameraType;

.field private final m_UpdateCameraModeRunnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode$1;-><init>(Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->m_UpdateCameraModeRunnable:Ljava/lang/Runnable;

    .line 45
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    iget-object v0, p1, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->defaultCameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p5}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode$1;-><init>(Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->m_UpdateCameraModeRunnable:Ljava/lang/Runnable;

    .line 69
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->updateCameraMode()V

    return-void
.end method

.method private initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    .line 76
    iget-boolean v1, v0, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne p3, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Photo mode is not supported in this Camera instance, start mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object p3, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    .line 85
    :cond_0
    iget-boolean v1, v0, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne p3, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video mode is not supported in this Camera instance, start mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object p3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-boolean v0, v0, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->defaultCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    iput-object p2, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    .line 101
    if-nez p2, :cond_2

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    return-void
.end method

.method private updateCameraMode()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method


# virtual methods
.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    .line 160
    iget-boolean v1, v0, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnter() - Photo mode is not supported in this Camera instance, start mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    move-object v1, v0

    .line 169
    :goto_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->m_CameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v2, v3, v1, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    move-result v0

    return v0

    .line 166
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move-object v1, v0

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->m_UpdateCameraModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onExit() - No main thread handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultCameraMode(Lcom/htc/camera/CameraMode;)Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->defaultCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    const/4 v0, 0x1

    return v0
.end method
