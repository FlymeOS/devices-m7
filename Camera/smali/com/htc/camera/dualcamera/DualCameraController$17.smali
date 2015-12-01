.class Lcom/htc/camera/dualcamera/DualCameraController$17;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$ui:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$17;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$17;->val$ui:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$17;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$17;->val$ui:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->link(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    .line 1490
    return-void
.end method
