.class Lcom/htc/camera/manualcapture/ManualCaptureController$2;
.super Ljava/lang/Object;
.source "ManualCaptureController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/AutoFocusEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ManualCaptureController;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/AutoFocusMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$200(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/manualcapture/MModeData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_LastShutterData:Lcom/htc/camera/manualcapture/MModeData;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$200(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/manualcapture/MModeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_ShutterThreshold:D
    invoke-static {v2}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$300(Lcom/htc/camera/manualcapture/ManualCaptureController;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureController;->getCameraController()Lcom/htc/camera/CameraController;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$400(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getManualFocusCurrentStep()I

    move-result v1

    .line 451
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$500(Lcom/htc/camera/manualcapture/ManualCaptureController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Focus step: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusRange:Lcom/htc/camera/Range;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$600(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    if-gez v1, :cond_3

    .line 456
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusRange:Lcom/htc/camera/Range;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$600(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 462
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$700(Lcom/htc/camera/manualcapture/ManualCaptureController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/htc/camera/manualcapture/MModeData;

    .line 464
    invoke-virtual {v3}, Lcom/htc/camera/manualcapture/MModeData;->toInteger()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureController;->updateFocusValue(Lcom/htc/camera/manualcapture/MModeData;)V
    invoke-static {v0, v3}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$800(Lcom/htc/camera/manualcapture/ManualCaptureController;Lcom/htc/camera/manualcapture/MModeData;)V

    .line 467
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;
    invoke-static {v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$000(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/manualcapture/ManualCaptureUI;

    move-result-object v1

    const/16 v2, 0x3f3

    iget-object v4, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusDatas:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$700(Lcom/htc/camera/manualcapture/ManualCaptureController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    invoke-static/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$900(Lcom/htc/camera/manualcapture/ManualCaptureController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 474
    :cond_2
    return-void

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusRange:Lcom/htc/camera/Range;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$600(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusRange:Lcom/htc/camera/Range;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$600(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 459
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusRange:Lcom/htc/camera/Range;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$600(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_FocusRange:Lcom/htc/camera/Range;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$600(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 439
    check-cast p3, Lcom/htc/camera/AutoFocusEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/manualcapture/ManualCaptureController$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method
