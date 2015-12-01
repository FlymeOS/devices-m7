.class Lcom/htc/camera/CameraController$6;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;

.field final synthetic val$postview:Lcom/htc/camera/k;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;Lcom/htc/camera/k;)V
    .locals 0

    .prologue
    .line 3335
    iput-object p1, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    iput-object p2, p0, Lcom/htc/camera/CameraController$6;->val$postview:Lcom/htc/camera/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3339
    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->val$postview:Lcom/htc/camera/k;

    iget-object v1, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/k;->onPictureTaken([BLcom/htc/camera/CameraController;)V

    .line 3340
    const-string v0, "torch"

    iget-object v1, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$000(Lcom/htc/camera/CameraController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3341
    const-string v0, "CameraController"

    const-string v1, "onPictureTaken() - Change flash mode from torch to off."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$900(Lcom/htc/camera/CameraController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3343
    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$900(Lcom/htc/camera/CameraController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mSetFlashRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$1000(Lcom/htc/camera/CameraController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3344
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # setter for: Lcom/htc/camera/CameraController;->mIsFirstSetFlashRunPosted:Z
    invoke-static {v0, v2}, Lcom/htc/camera/CameraController;->access$302(Lcom/htc/camera/CameraController;Z)Z

    .line 3345
    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # setter for: Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z
    invoke-static {v0, v2}, Lcom/htc/camera/CameraController;->access$402(Lcom/htc/camera/CameraController;Z)Z

    .line 3346
    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$200(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3347
    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3348
    iget-object v0, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$200(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$6;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3351
    :cond_1
    return-void
.end method
