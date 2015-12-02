.class Lcom/htc/camera/component/DualLensCalibrateController$3;
.super Ljava/lang/Object;
.source "DualLensCalibrateController.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/DualLensCalibrateController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/DualLensCalibrateController;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    iput-object p2, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    iput-object p3, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 241
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # setter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_IsUiNeeded:Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/DualLensCalibrateController;->access$302(Lcom/htc/camera/component/DualLensCalibrateController;Z)Z

    .line 242
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$400(Lcom/htc/camera/component/DualLensCalibrateController;)Lcom/htc/camera/component/DualLensCalibrateUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;
    invoke-static {v1}, Lcom/htc/camera/component/DualLensCalibrateController;->access$400(Lcom/htc/camera/component/DualLensCalibrateController;)Lcom/htc/camera/component/DualLensCalibrateUI;

    move-result-object v1

    const/16 v2, 0x2712

    iget-object v3, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I
    invoke-static {v3}, Lcom/htc/camera/component/DualLensCalibrateController;->access$600(Lcom/htc/camera/component/DualLensCalibrateController;)I

    move-result v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    aput-object v6, v5, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/DualLensCalibrateController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I
    invoke-static {v1}, Lcom/htc/camera/component/DualLensCalibrateController;->access$600(Lcom/htc/camera/component/DualLensCalibrateController;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/DualLensCalibrateController;->access$602(Lcom/htc/camera/component/DualLensCalibrateController;I)I

    .line 249
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_FocusRange:Lcom/htc/camera/Range;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$800(Lcom/htc/camera/component/DualLensCalibrateController;)Lcom/htc/camera/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I
    invoke-static {v1}, Lcom/htc/camera/component/DualLensCalibrateController;->access$600(Lcom/htc/camera/component/DualLensCalibrateController;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/htc/camera/CameraController;->setManualFocus(I)V

    .line 252
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # setter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_IsTakingPicture:Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/DualLensCalibrateController;->access$102(Lcom/htc/camera/component/DualLensCalibrateController;Z)Z

    .line 255
    if-eqz p2, :cond_3

    .line 258
    const-string v0, "capture-mode-values"

    invoke-virtual {p2, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$900(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPictureTaken() - Set capture mode to normal"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    const-string v0, "capture-mode"

    const-string v1, "zsl"

    invoke-virtual {p2, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 273
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 276
    new-instance v0, Lcom/htc/camera/io/SaveImageTask;

    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {v0, v1, p1}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;[B)V

    .line 277
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->val$handle:Lcom/htc/camera/CaptureHandle;

    iput-object v1, v0, Lcom/htc/camera/io/SaveImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 278
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 279
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$700(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PHOTO_PROCESSED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_2
    const-string v0, "capture-mode"

    const-string v1, "normal"

    invoke-virtual {p2, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$3;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$1000(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot set capture mode to normal because there is no camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
