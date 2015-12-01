.class Lcom/htc/camera/dualcamera/DualCameraController$8;
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
        "Lcom/htc/camera/CameraDeviceEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraDeviceEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraDeviceEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CameraDeviceEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$400(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1211
    :sswitch_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1000(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - Open front camera first for human joint capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->selectSecondaryCamera()Lcom/htc/camera/CameraType;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1100(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/CameraType;

    move-result-object v1

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->openSecondaryCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraOpenFailedReason;
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1200(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraOpenFailedReason;

    goto :goto_0

    .line 1219
    :sswitch_1
    iget-object v0, p3, Lcom/htc/camera/CameraDeviceEventArgs;->cameraType:Lcom/htc/camera/CameraType;

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_1

    .line 1220
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontOpening:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainOpening:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1208
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1202
    check-cast p3, Lcom/htc/camera/CameraDeviceEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/dualcamera/DualCameraController$8;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraDeviceEventArgs;)V

    return-void
.end method
