.class Lcom/htc/camera/CameraController$7;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 3359
    iput-object p1, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3363
    const-string v0, "torch"

    iget-object v1, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$000(Lcom/htc/camera/CameraController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3364
    const-string v0, "CameraController"

    const-string v1, "onPictureTaken() - Change flash mode from torch to off"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    iget-object v0, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$900(Lcom/htc/camera/CameraController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3366
    iget-object v0, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$900(Lcom/htc/camera/CameraController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mSetFlashRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$1000(Lcom/htc/camera/CameraController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3367
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # setter for: Lcom/htc/camera/CameraController;->mIsFirstSetFlashRunPosted:Z
    invoke-static {v0, v2}, Lcom/htc/camera/CameraController;->access$302(Lcom/htc/camera/CameraController;Z)Z

    .line 3368
    iget-object v0, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # setter for: Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z
    invoke-static {v0, v2}, Lcom/htc/camera/CameraController;->access$402(Lcom/htc/camera/CameraController;Z)Z

    .line 3369
    iget-object v0, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$200(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3370
    iget-object v0, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3371
    iget-object v0, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$200(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$7;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3374
    :cond_1
    return-void
.end method
