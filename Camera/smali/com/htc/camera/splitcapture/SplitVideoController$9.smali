.class Lcom/htc/camera/splitcapture/SplitVideoController$9;
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
        "Lcom/htc/camera/MediaRecorderInfoEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$9;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$9;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderInfoEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaRecorderInfoEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/MediaRecorderInfoEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$9;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$1800(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording times up. Current duration limit has been set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$9;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentRecordingLimitDuration:Lcom/htc/camera/Duration;
    invoke-static {v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$1900(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$9;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$9;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_LastCaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2000(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/CameraThread;->stopVideoRecording(Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 762
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 756
    check-cast p3, Lcom/htc/camera/MediaRecorderInfoEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController$9;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderInfoEventArgs;)V

    return-void
.end method
