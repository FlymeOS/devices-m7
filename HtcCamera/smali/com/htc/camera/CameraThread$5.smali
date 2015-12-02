.class Lcom/htc/camera/CameraThread$5;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/htc/camera/CameraThread$5;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 487
    const-string v0, "CameraThread"

    const-string v1, "handleCommonShutterCallback() - isWdrScene is true, show processing UI."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/htc/camera/CameraThread$5;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$200(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ab;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 489
    if-eqz v0, :cond_0

    .line 490
    iget-object v1, p0, Lcom/htc/camera/CameraThread$5;->this$0:Lcom/htc/camera/CameraThread;

    const v2, 0x7f080172

    invoke-virtual {v0, v2}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    # setter for: Lcom/htc/camera/CameraThread;->mProcessingDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1, v0}, Lcom/htc/camera/CameraThread;->access$102(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "handleCommonShutterCallback() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
