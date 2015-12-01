.class Lcom/htc/camera/component/HdrController$3;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/HdrController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    iput-object p2, p0, Lcom/htc/camera/component/HdrController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    iput-object p3, p0, Lcom/htc/camera/component/HdrController$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$100(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$700(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid capture handle, ignore JPEG call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # setter for: Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0, v4}, Lcom/htc/camera/component/HdrController;->access$102(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;

    .line 355
    const-string v0, "HDR"

    invoke-static {v0}, Lcom/htc/camera/LOG;->printPerformanceFinishLog(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$800(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_TimeoutController:Lcom/htc/camera/debug/a;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$900(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/debug/a;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/HdrController;->access$800(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 361
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # setter for: Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v4}, Lcom/htc/camera/component/HdrController;->access$802(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$200(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/component/HdrUI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;
    invoke-static {v1}, Lcom/htc/camera/component/HdrController;->access$200(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/component/HdrUI;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/HdrController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    aput-object v4, v5, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v6

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/HdrController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 371
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 374
    new-instance v0, Lcom/htc/camera/io/SaveImageTask;

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {v0, v1, p1}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;[B)V

    .line 375
    iget-object v1, p0, Lcom/htc/camera/component/HdrController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    iput-object v1, v0, Lcom/htc/camera/io/SaveImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 376
    iget-object v1, p0, Lcom/htc/camera/component/HdrController$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$3;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$1000(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PHOTO_PROCESSED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
