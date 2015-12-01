.class Lcom/htc/camera/dualcamera/DualCameraController$18;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Lcom/htc/camera/m;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;)V
    .locals 0

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$18;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$18;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$18;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    .line 1955
    :cond_0
    return-void
.end method
