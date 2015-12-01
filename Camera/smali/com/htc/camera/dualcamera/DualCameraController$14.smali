.class Lcom/htc/camera/dualcamera/DualCameraController$14;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$14;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$14;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$14;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$14;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 1362
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    iget v1, v1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v0, v1

    .line 1363
    if-gez v0, :cond_0

    .line 1364
    add-int/lit16 v0, v0, 0x168

    .line 1366
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$14;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1600(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set video source: 2, set orientation: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1368
    iget-object v1, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/camera/MediaRecorderParameters;->setCamera(Landroid/hardware/Camera;)V

    .line 1369
    iget-object v1, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    invoke-virtual {v1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOrientationHint(I)V

    .line 1370
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSource(I)V

    .line 1372
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$14;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1700(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1374
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$14;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1800(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set DUAL_CAPTURE=ON"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$14;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1700(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    const-string v1, "DUAL_CAPTURE=ON"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 1379
    :cond_1
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1355
    check-cast p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/dualcamera/DualCameraController$14;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V

    return-void
.end method
