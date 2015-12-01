.class Lcom/htc/camera/splitcapture/SplitVideoController$10;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/SingleHandlerEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$10;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 765
    check-cast p3, Lcom/htc/camera/event/SingleHandlerEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController$10;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/SingleHandlerEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/SingleHandlerEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/SingleHandlerEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/SingleHandlerEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$10;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$10;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2100(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestDeleteLatestMediaEvent received!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$10;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsDeleteFinal:Z
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2200(Lcom/htc/camera/splitcapture/SplitVideoController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p3}, Lcom/htc/camera/event/SingleHandlerEventArgs;->setHandled()V

    .line 775
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$10;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsDeleteFinal:Z
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2202(Lcom/htc/camera/splitcapture/SplitVideoController;Z)Z

    .line 778
    :cond_0
    return-void
.end method
