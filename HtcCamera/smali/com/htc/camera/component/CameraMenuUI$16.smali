.class Lcom/htc/camera/component/CameraMenuUI$16;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$16;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;)V
    .locals 1
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
    .line 863
    iget-boolean v0, p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->restartingPreview:Z

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$16;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3200(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 865
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 860
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraMenuUI$16;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;)V

    return-void
.end method
