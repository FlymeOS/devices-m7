.class Lcom/htc/camera/zoe/ZoeController$26;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 2858
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$26;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController$26;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$26;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-virtual {v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 2863
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController$26;->this$0:Lcom/htc/camera/zoe/ZoeController;

    new-instance v3, Lcom/htc/camera/CaptureEventArgs;

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController$26;->val$handle:Lcom/htc/camera/CaptureHandle;

    sget-object v5, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v3, v4, v5}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 2864
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$26;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 2865
    return-void
.end method
