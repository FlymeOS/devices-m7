.class Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;
.super Ljava/lang/Object;
.source "LaunchModeFromGridViewStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

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
    .line 82
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->Customization:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/c;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->Photo:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/e;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->Video:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/zoe/ZoeCaptureMode;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->ZoeCamera:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/b;

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->Selfie:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    goto :goto_0

    .line 97
    :cond_5
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/dualcamera/DualCaptureMode;

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->DualCapture:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    goto :goto_0

    .line 100
    :cond_6
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/panorama/PanoramaCaptureMode;

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->Panorama360:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    goto :goto_0

    .line 103
    :cond_7
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    if-eqz v0, :cond_8

    .line 105
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->CropMeIn:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    goto :goto_0

    .line 106
    :cond_8
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->this$0:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;

    sget-object v1, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;->SplitCapture:Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;

    # invokes: Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->updateHistory(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V
    invoke-static {v0, v1}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;->access$000(Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController;Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$CaptureMode;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 79
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/bi/LaunchModeFromGridViewStatisticController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;)V

    return-void
.end method
