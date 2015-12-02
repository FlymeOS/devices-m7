.class Lcom/htc/camera/dualcamera/DualCameraController$2;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$100(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    const-string v1, "Dual JPEG"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$100(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v6

    .line 235
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # setter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0, v7}, Lcom/htc/camera/dualcamera/DualCameraController;->access$102(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;

    .line 238
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$200(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/dualcamera/DualCameraUI;

    move-result-object v1

    const/16 v2, 0x271b

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v6, v5, v3

    const/4 v4, 0x1

    aput-object v7, v5, v4

    move v4, v3

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraController;->access$300(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 243
    :cond_0
    return-void
.end method
