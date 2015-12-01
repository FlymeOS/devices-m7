.class Lcom/htc/camera/component/SensorFocusController$12;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x2714

    const/16 v2, 0x2712

    .line 459
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 461
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$200(Lcom/htc/camera/component/SensorFocusController;)Lcom/htc/camera/AutoFocusMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$1300(Lcom/htc/camera/component/SensorFocusController;)Lcom/htc/camera/IObjectTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$1300(Lcom/htc/camera/component/SensorFocusController;)Lcom/htc/camera/IObjectTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 464
    :cond_1
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x2

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_SensorState:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$1002(Lcom/htc/camera/component/SensorFocusController;I)I

    .line 470
    :goto_0
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0, v4}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 473
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_EnableSensorFocusAfterTouchFocus:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$802(Lcom/htc/camera/component/SensorFocusController;Z)Z

    .line 474
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$1400(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_EnableSensorFocusAfterTouchFocus = false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    iget-object v1, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/camera/component/SensorFocusController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 478
    :cond_2
    return-void

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$12;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x3

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_SensorState:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$1002(Lcom/htc/camera/component/SensorFocusController;I)I

    goto :goto_0
.end method
