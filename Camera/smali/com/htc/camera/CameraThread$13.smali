.class Lcom/htc/camera/CameraThread$13;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;

.field final synthetic val$localSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$playShutterSound:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Ljava/util/concurrent/Semaphore;Lcom/htc/camera/CaptureHandle;Z)V
    .locals 0

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/htc/camera/CameraThread$13;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$13;->val$localSemaphore:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/htc/camera/CameraThread$13;->val$handle:Lcom/htc/camera/CaptureHandle;

    iput-boolean p4, p0, Lcom/htc/camera/CameraThread$13;->val$playShutterSound:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/htc/camera/CameraThread$13;->val$localSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1717
    iget-object v0, p0, Lcom/htc/camera/CameraThread$13;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$13;->val$handle:Lcom/htc/camera/CaptureHandle;

    iget-boolean v2, p0, Lcom/htc/camera/CameraThread$13;->val$playShutterSound:Z

    const/4 v3, 0x0

    # invokes: Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/CameraThread;->access$1100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 1718
    return-void
.end method
