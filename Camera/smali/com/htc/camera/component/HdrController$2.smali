.class Lcom/htc/camera/component/HdrController$2;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Lcom/htc/camera/m;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/HdrController;

.field final synthetic val$audioManager:Lcom/htc/camera/IAudioManager;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraThread;Lcom/htc/camera/IAudioManager;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    iput-object p2, p0, Lcom/htc/camera/component/HdrController$2;->val$handle:Lcom/htc/camera/CaptureHandle;

    iput-object p3, p0, Lcom/htc/camera/component/HdrController$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iput-object p4, p0, Lcom/htc/camera/component/HdrController$2;->val$audioManager:Lcom/htc/camera/IAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$100(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$2;->val$handle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$400(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid capture handle, ignore shutter call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v0, "HDR"

    invoke-static {v0}, Lcom/htc/camera/LOG;->printPerformanceStartLog(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    invoke-virtual {v0}, Lcom/htc/camera/component/HdrController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 313
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->val$audioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$500(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->canDisableSystemShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    :cond_2
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->val$audioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/HdrController;->access$500(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v3, v2}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 326
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$200(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/component/HdrUI;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 327
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;
    invoke-static {v1}, Lcom/htc/camera/component/HdrController;->access$200(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/component/HdrUI;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/HdrController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->val$audioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/HdrController;->access$500(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    goto :goto_1

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$2;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$600(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PROCESSING_PHOTO"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
