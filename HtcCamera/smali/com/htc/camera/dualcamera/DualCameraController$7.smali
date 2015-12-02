.class Lcom/htc/camera/dualcamera/DualCameraController$7;
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
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;)V
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$7;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$7;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->getCameraController()Lcom/htc/camera/CameraController;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$700(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_0

    .line 1184
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canEnableHumanJoint()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1185
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    .line 1191
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$7;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$800(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Human-joint mode is "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1194
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$7;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$900(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1197
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$7;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, p0}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 1199
    :cond_0
    return-void

    .line 1188
    :cond_1
    const-string v1, "human-joint-mode"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_0
.end method
