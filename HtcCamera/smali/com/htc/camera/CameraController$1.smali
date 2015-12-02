.class Lcom/htc/camera/CameraController$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFlashRunnable mFlashMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/CameraController;->access$000(Lcom/htc/camera/CameraController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "torch"

    iget-object v1, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$000(Lcom/htc/camera/CameraController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$200(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    # setter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0, v1}, Lcom/htc/camera/CameraController;->access$102(Lcom/htc/camera/CameraController;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$100(Lcom/htc/camera/CameraController;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mFlashMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/CameraController;->access$000(Lcom/htc/camera/CameraController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/CameraController;->mIsFirstSetFlashRunPosted:Z
    invoke-static {v0, v1}, Lcom/htc/camera/CameraController;->access$302(Lcom/htc/camera/CameraController;Z)Z

    .line 145
    iget-object v0, p0, Lcom/htc/camera/CameraController$1;->this$0:Lcom/htc/camera/CameraController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/CameraController;->mIsSetFlashRunPosted:Z
    invoke-static {v0, v1}, Lcom/htc/camera/CameraController;->access$402(Lcom/htc/camera/CameraController;Z)Z

    .line 147
    return-void
.end method
