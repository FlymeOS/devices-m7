.class Lcom/htc/camera/panorama/PanoramaPlusController$3;
.super Ljava/lang/Object;
.source "PanoramaPlusController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/AutoFocusEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$3;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$3;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$600(Lcom/htc/camera/panorama/PanoramaPlusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAutoFocusFinished(): Handle="

    iget-object v2, p3, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    iget-object v2, v2, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, ", FocusMode="

    iget-object v4, p3, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    iget-object v0, p3, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$3;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreAFLockHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$200(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/Handle;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$3;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreAFLockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$202(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 189
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$3;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$3;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;
    invoke-static {v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$400(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/IAutoFocusController;

    move-result-object v1

    const-string v2, "Panorama+"

    invoke-virtual {v1, v2}, Lcom/htc/camera/IAutoFocusController;->lockAutoFocus(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/panorama/PanoramaPlusController;->m_AFLockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$302(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p3, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->LockFocus:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$3;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->on3ALocked()V
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$700(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 179
    check-cast p3, Lcom/htc/camera/AutoFocusEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusController$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method
