.class Lcom/htc/camera/component/SensorFocusController$1;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$1;->this$0:Lcom/htc/camera/component/SensorFocusController;

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
    .line 260
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$1;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$1;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$1;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const-wide/16 v1, 0x190

    # invokes: Lcom/htc/camera/component/SensorFocusController;->restartSensorFocus(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/SensorFocusController;->access$000(Lcom/htc/camera/component/SensorFocusController;J)V

    goto :goto_0
.end method
