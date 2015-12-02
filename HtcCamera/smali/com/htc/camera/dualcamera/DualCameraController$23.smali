.class Lcom/htc/camera/dualcamera/DualCameraController$23;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Lcom/htc/camera/m;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 3376
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$23;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$23;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$23;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$23;->val$handle:Lcom/htc/camera/CaptureHandle;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->onPrimaryShutterReceived(Lcom/htc/camera/CaptureHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$3600(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V

    .line 3381
    return-void
.end method
