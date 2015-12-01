.class Lcom/htc/camera/dualcamera/DualCameraController$13;
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
    .line 1335
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
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
    .line 1339
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$400(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1344
    :sswitch_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1347
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->stopSecondaryPreview()Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1500(Lcom/htc/camera/dualcamera/DualCameraController;)Z

    .line 1348
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1341
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method
