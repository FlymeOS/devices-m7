.class Lcom/htc/camera/dualcamera/DualCameraController$24;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 3385
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$24;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$24;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 2

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$24;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$24;->val$handle:Lcom/htc/camera/CaptureHandle;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->onPrimaryJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V
    invoke-static {v0, v1, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$3700(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;[B)V

    .line 3392
    return-void
.end method
