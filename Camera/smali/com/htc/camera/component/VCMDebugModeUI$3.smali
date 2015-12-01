.class Lcom/htc/camera/component/VCMDebugModeUI$3;
.super Ljava/lang/Object;
.source "VCMDebugModeUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/VCMDebugModeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/VCMDebugModeUI;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/camera/component/VCMDebugModeUI$3;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V
    .locals 1
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
    .line 136
    iget-object v0, p0, Lcom/htc/camera/component/VCMDebugModeUI$3;->this$0:Lcom/htc/camera/component/VCMDebugModeUI;

    # invokes: Lcom/htc/camera/component/VCMDebugModeUI;->updateMonitorFlag()V
    invoke-static {v0}, Lcom/htc/camera/component/VCMDebugModeUI;->access$600(Lcom/htc/camera/component/VCMDebugModeUI;)V

    .line 137
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 132
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/VCMDebugModeUI$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V

    return-void
.end method
