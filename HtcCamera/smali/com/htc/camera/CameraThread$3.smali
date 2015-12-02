.class Lcom/htc/camera/CameraThread$3;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/htc/camera/CameraThread$3;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 371
    const-string v0, "CameraThread"

    const-string v1, "StartPreview Callback Timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/htc/camera/CameraThread$3;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->firstPreviewFrameReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CameraPreviewEventArgs;

    check-cast p7, Lcom/htc/camera/Handle;

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-direct {v1, p7, v2}, Lcom/htc/camera/CameraPreviewEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 373
    iget-object v0, p0, Lcom/htc/camera/CameraThread$3;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$000(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/camera/CameraThread$3;->this$0:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/CameraThread;->mPreviewCallbackTimerHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$002(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 375
    :cond_0
    return-void
.end method
