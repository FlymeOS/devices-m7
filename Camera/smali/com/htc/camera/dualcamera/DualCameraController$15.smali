.class Lcom/htc/camera/dualcamera/DualCameraController$15;
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
        "Lcom/htc/camera/CameraParamsSetupEventArgs;",
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
    .line 1382
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1386
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1388
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v1, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->setupHumanJointParameters(Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V
    invoke-static {v0, v1, v4, v3}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1900(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V

    .line 1389
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    const/4 v2, 0x1

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->setupHumanJointParameters(Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V
    invoke-static {v1, v0, v4, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1900(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2000(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disable video stabilization"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setVideoStabilization(Z)V

    .line 1396
    :cond_1
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 1398
    :cond_2
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1382
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/dualcamera/DualCameraController$15;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
