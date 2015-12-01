.class Lcom/htc/camera/component/SensorFocusController$4;
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
        "Lcom/htc/camera/input/MotionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$4;->this$0:Lcom/htc/camera/component/SensorFocusController;

    iput-object p2, p0, Lcom/htc/camera/component/SensorFocusController$4;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 297
    check-cast p3, Lcom/htc/camera/input/MotionEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/SensorFocusController$4;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/MotionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/MotionEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/MotionEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/input/MotionEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 301
    iget v0, p3, Lcom/htc/camera/input/MotionEventArgs;->action:I

    if-nez v0, :cond_1

    .line 302
    iget-object v1, p0, Lcom/htc/camera/component/SensorFocusController$4;->this$0:Lcom/htc/camera/component/SensorFocusController;

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$4;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_TouchDownZoomValue:I
    invoke-static {v1, v0}, Lcom/htc/camera/component/SensorFocusController;->access$302(Lcom/htc/camera/component/SensorFocusController;I)I

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget v0, p3, Lcom/htc/camera/input/MotionEventArgs;->action:I

    if-ne v0, v2, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$4;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->m_TouchDownZoomValue:I
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$300(Lcom/htc/camera/component/SensorFocusController;)I

    move-result v1

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$4;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$4;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$4;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$400(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restartSensorFocus after zoom change"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$4;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->handleSensorFocus(Z)Z

    goto :goto_0
.end method
