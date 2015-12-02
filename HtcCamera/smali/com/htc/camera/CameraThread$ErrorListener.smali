.class final Lcom/htc/camera/CameraThread$ErrorListener;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 3569
    iput-object p1, p0, Lcom/htc/camera/CameraThread$ErrorListener;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$1;)V
    .locals 0

    .prologue
    .line 3569
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread$ErrorListener;-><init>(Lcom/htc/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 6

    .prologue
    const v5, 0x7f080198

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3572
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder Error, what is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    iget-object v0, p0, Lcom/htc/camera/CameraThread$ErrorListener;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$200(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 3574
    sparse-switch p2, :sswitch_data_0

    .line 3593
    const-string v1, "CameraThread"

    const-string v2, "MediaRecorder Error - Other Errors"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3594
    iget-object v1, p0, Lcom/htc/camera/CameraThread$ErrorListener;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v2, p0, Lcom/htc/camera/CameraThread$ErrorListener;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v2}, Lcom/htc/camera/CameraThread;->access$2400(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/CaptureHandle;

    move-result-object v2

    # invokes: Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V
    invoke-static {v1, v2, v4, v3}, Lcom/htc/camera/CameraThread;->access$1100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 3595
    if-eqz v0, :cond_0

    .line 3596
    invoke-virtual {v0, v5}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 3599
    :cond_0
    :goto_0
    return-void

    .line 3577
    :sswitch_0
    const-string v1, "CameraThread"

    const-string v2, "MediaRecorder Error - MediaRecorder.MEDIA_ERROR_SERVER_DIED"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3578
    iget-object v1, p0, Lcom/htc/camera/CameraThread$ErrorListener;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v2, p0, Lcom/htc/camera/CameraThread$ErrorListener;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v2}, Lcom/htc/camera/CameraThread;->access$2400(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/CaptureHandle;

    move-result-object v2

    # invokes: Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V
    invoke-static {v1, v2, v4, v3}, Lcom/htc/camera/CameraThread;->access$1100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 3579
    if-eqz v0, :cond_0

    .line 3580
    invoke-virtual {v0, v5}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 3583
    :sswitch_1
    const-string v1, "CameraThread"

    const-string v2, "MediaRecorder Error - MediaRecorder.MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3584
    iget-object v1, p0, Lcom/htc/camera/CameraThread$ErrorListener;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v2, p0, Lcom/htc/camera/CameraThread$ErrorListener;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCurrentVideoCaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v2}, Lcom/htc/camera/CameraThread;->access$2400(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/CaptureHandle;

    move-result-object v2

    # invokes: Lcom/htc/camera/CameraThread;->stopVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;ZZ)V
    invoke-static {v1, v2, v4, v3}, Lcom/htc/camera/CameraThread;->access$1100(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;ZZ)V

    .line 3585
    if-eqz v0, :cond_0

    .line 3586
    const/16 v1, -0x3f9

    if-ne p3, v1, :cond_1

    .line 3587
    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 3589
    :cond_1
    invoke-virtual {v0, v5}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 3574
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
