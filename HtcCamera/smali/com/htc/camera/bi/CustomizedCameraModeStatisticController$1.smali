.class Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$1;
.super Ljava/lang/Object;
.source "CustomizedCameraModeStatisticController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$1;->this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$1;->this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;

    iget v1, v0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mCustomizedCameraModeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mCustomizedCameraModeCount:I

    .line 82
    iget-object v0, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$1;->this$0:Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mHasChanged:Z
    invoke-static {v0, v1}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->access$002(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;Z)Z

    .line 84
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 75
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V

    return-void
.end method
