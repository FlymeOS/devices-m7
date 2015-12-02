.class Lcom/htc/camera/splitcapture/SplitVideoController$8;
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
        "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$8;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 745
    check-cast p3, Lcom/htc/camera/imaging/ThumbnailEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController$8;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$8;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$8;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$8;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->onVideoThumbnailCreated(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$1700(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V

    .line 753
    :cond_0
    return-void
.end method
