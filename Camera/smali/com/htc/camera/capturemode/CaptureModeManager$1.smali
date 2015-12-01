.class Lcom/htc/camera/capturemode/CaptureModeManager$1;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

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
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureModeManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$1;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V
    .locals 3
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
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$1;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    iget-object v2, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    # invokes: Lcom/htc/camera/capturemode/CaptureModeManager;->onCaptureModeStateChanged(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode$State;)V
    invoke-static {v1, v2, v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$000(Lcom/htc/camera/capturemode/CaptureModeManager;Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode$State;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 75
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/capturemode/CaptureModeManager$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V

    return-void
.end method
