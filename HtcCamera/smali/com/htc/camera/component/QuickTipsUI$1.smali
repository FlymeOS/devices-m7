.class Lcom/htc/camera/component/QuickTipsUI$1;
.super Ljava/lang/Object;
.source "QuickTipsUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$1;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$1;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->oldCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$1;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showOneCamQuickTips(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/htc/camera/component/QuickTipsUI;->access$100(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 215
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/QuickTipsUI$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;)V

    return-void
.end method
