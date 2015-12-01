.class Lcom/htc/camera/dualcamera/DualCameraController$4;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;I)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$4;->val$flags:I

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->exit(I)V

    .line 894
    return-void
.end method
