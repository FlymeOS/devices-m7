.class Lcom/htc/camera/component/DualLensCalibrateController$2;
.super Ljava/lang/Object;
.source "DualLensCalibrateController.java"

# interfaces
.implements Lcom/htc/camera/m;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/DualLensCalibrateController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/DualLensCalibrateController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    iput-object p2, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_IsUiNeeded:Z
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$300(Lcom/htc/camera/component/DualLensCalibrateController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$400(Lcom/htc/camera/component/DualLensCalibrateController;)Lcom/htc/camera/component/DualLensCalibrateUI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;
    invoke-static {v1}, Lcom/htc/camera/component/DualLensCalibrateController;->access$400(Lcom/htc/camera/component/DualLensCalibrateController;)Lcom/htc/camera/component/DualLensCalibrateUI;

    move-result-object v1

    const/16 v2, 0x2711

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/DualLensCalibrateController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$500(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PROCESSING_PHOTO"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
