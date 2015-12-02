.class Lcom/htc/camera/dualcamera/DualCameraUI$16;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->onPreviewAdapterDestroyed()V
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4400(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    .line 1612
    return-void
.end method
