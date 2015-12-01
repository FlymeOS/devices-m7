.class Lcom/htc/camera/dualcamera/DualCameraUI$6;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/OneValueEventArgs",
        "<",
        "Lcom/htc/camera/CameraType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$6;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1259
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$6;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$6;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->linkToController()Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2500(Lcom/htc/camera/dualcamera/DualCameraUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$6;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$6;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$100(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/dualcamera/DualCameraController;

    move-result-object v1

    const/16 v2, 0x2716

    iget-object v5, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    move v4, v3

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2600(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$6;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2700(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Cannot link to controller"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1255
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/dualcamera/DualCameraUI$6;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
