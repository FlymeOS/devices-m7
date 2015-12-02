.class Lcom/htc/camera/manualcapture/ManualCaptureUI$6;
.super Ljava/lang/Object;
.source "ManualCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 679
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Shutter:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProgressFromSettings(Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I
    invoke-static {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$300(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;)I

    move-result v0

    .line 685
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;
    invoke-static {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$400(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ShutterToggleButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setProgress(I)V

    .line 688
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->updateShutterValue(I)V
    invoke-static {v1, v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$500(Lcom/htc/camera/manualcapture/ManualCaptureUI;I)V

    .line 691
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;
    invoke-static {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$600(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ManualCaptureController;

    move-result-object v1

    const/16 v2, 0x3f4

    iget-object v4, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$6;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;
    invoke-static {v4}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$700(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/MModeData;

    move-result-object v5

    const/4 v6, 0x1

    move v4, v3

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    invoke-static/range {v0 .. v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$800(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 693
    :cond_0
    return-void
.end method
