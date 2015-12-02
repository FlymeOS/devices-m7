.class Lcom/htc/camera/dualcamera/DualCameraController$25;
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
    .line 3424
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$25;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$25;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$3800(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Secondary shutter received"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    return-void
.end method
