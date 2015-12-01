.class Lcom/htc/camera/component/SensorFocusController$8;
.super Lcom/htc/camera/trigger/Trigger;
.source "SensorFocusController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$8;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$8;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$8;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$100(Lcom/htc/camera/component/SensorFocusController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$8;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$202(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/AutoFocusMode;)Lcom/htc/camera/AutoFocusMode;

    .line 395
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$8;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const-wide/16 v1, 0x190

    # invokes: Lcom/htc/camera/component/SensorFocusController;->restartSensorFocus(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/SensorFocusController;->access$000(Lcom/htc/camera/component/SensorFocusController;J)V

    .line 400
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$8;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_EnableSensorFocusAfterTouchFocus:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$802(Lcom/htc/camera/component/SensorFocusController;Z)Z

    .line 402
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$8;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$700(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isPreviewStarted - m_NeedSensorFocusAfterPreview is false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
