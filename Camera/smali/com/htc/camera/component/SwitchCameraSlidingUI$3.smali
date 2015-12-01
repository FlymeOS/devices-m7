.class Lcom/htc/camera/component/SwitchCameraSlidingUI$3;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$3;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;)V
    .locals 2
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
    .line 478
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$3;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iget-object v1, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->oldCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->saveCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1100(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/capturemode/CaptureMode;)V

    .line 479
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 474
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/SwitchCameraSlidingUI$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;)V

    return-void
.end method
