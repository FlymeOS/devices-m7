.class Lcom/htc/camera/dualcamera/DualCameraController$21;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$style:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)V
    .locals 0

    .prologue
    .line 2821
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$21;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$21;->val$style:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$21;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$21;->val$style:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z

    .line 2826
    return-void
.end method
