.class Lcom/htc/camera/CameraController$12;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 3532
    iput-object p1, p0, Lcom/htc/camera/CameraController$12;->this$0:Lcom/htc/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/htc/camera/CameraController$12;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mFaceDetectionListener:Lcom/htc/camera/j;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$1200(Lcom/htc/camera/CameraController;)Lcom/htc/camera/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3537
    iget-object v0, p0, Lcom/htc/camera/CameraController$12;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mFaceDetectionListener:Lcom/htc/camera/j;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$1200(Lcom/htc/camera/CameraController;)Lcom/htc/camera/j;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$12;->this$0:Lcom/htc/camera/CameraController;

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/j;->onFaceDetection([Landroid/hardware/Camera$Face;Lcom/htc/camera/CameraController;)V

    .line 3538
    :cond_0
    return-void
.end method
