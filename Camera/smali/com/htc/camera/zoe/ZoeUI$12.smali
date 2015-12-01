.class Lcom/htc/camera/zoe/ZoeUI$12;
.super Ljava/lang/Object;
.source "ZoeUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$12;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1028
    check-cast p3, Lcom/htc/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/zoe/ZoeUI$12;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1032
    iget v0, p3, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$12;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$12;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2900(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$12;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$3000(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$12;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsStoppingCapturing:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$3100(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$12;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->stopCapture()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$3200(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1035
    invoke-virtual {p3}, Lcom/htc/camera/input/KeyEventArgs;->setHandled()V

    .line 1037
    :cond_0
    return-void
.end method
