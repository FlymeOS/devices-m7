.class Lcom/htc/camera/manualcapture/ManualCaptureController$1;
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
        "Lcom/htc/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ManualCaptureController;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$1;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$1;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$1;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureController$1;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureController;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureController;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;
    invoke-static {v1}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$000(Lcom/htc/camera/manualcapture/ManualCaptureController;)Lcom/htc/camera/manualcapture/ManualCaptureUI;

    move-result-object v1

    const/16 v2, 0x3fc

    const/4 v3, 0x1

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/manualcapture/ManualCaptureController;->access$100(Lcom/htc/camera/manualcapture/ManualCaptureController;Lcom/htc/camera/component/Component;IZ)Z

    .line 432
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 426
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/manualcapture/ManualCaptureController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V

    return-void
.end method
