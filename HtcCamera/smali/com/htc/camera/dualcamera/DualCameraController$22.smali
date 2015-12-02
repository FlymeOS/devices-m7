.class Lcom/htc/camera/dualcamera/DualCameraController$22;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 3258
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$22;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$22;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$22;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$22;->val$handle:Lcom/htc/camera/CaptureHandle;

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraThread;->notifyTakingPictureFailed(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    .line 3263
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$22;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$22;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 3264
    return-void
.end method
