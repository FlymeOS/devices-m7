.class Lcom/htc/camera/splitcapture/SplitVideoController$6;
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
        "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$6;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$6;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$6;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->onPreparingParamsBeforeRecording(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$1500(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V

    .line 731
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 723
    check-cast p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController$6;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V

    return-void
.end method
