.class Lcom/htc/camera/CameraThread$6;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$300(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 512
    const-string v0, "CameraThread"

    const-string v1, "onPictureTaken() - CaptureHandle is null, skip handle JPEG call-back."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$400(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/debug/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mTimeoutController:Lcom/htc/camera/debug/a;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$400(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/debug/a;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/CameraThread;->access$500(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 520
    iget-object v0, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/CameraThread;->mJpegCallbackTimerHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$502(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mIsShutterCallbackReceived:Z
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$600(Lcom/htc/camera/CameraThread;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    const-string v1, "Shutter"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/CameraThread$6;->this$0:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/camera/CameraThread;->handleCommonJpegCallback([BLcom/htc/camera/CameraController;Z)V

    goto :goto_0
.end method
