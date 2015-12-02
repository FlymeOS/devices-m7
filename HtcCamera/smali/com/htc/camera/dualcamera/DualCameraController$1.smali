.class Lcom/htc/camera/dualcamera/DualCameraController$1;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Lcom/htc/camera/j;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Lcom/htc/camera/CameraController;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->onSecondaryFaceDetection([Landroid/hardware/Camera$Face;)V
    invoke-static {v0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$000(Lcom/htc/camera/dualcamera/DualCameraController;[Landroid/hardware/Camera$Face;)V

    .line 208
    return-void
.end method
