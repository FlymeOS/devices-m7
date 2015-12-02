.class Lcom/htc/camera/CameraThread$4;
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
    .line 390
    iput-object p1, p0, Lcom/htc/camera/CameraThread$4;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/camera/CameraThread$4;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mProcessingDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$100(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "CameraThread"

    const-string v1, "handleCommonJpegCallback() - hide WDR processing UI."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/htc/camera/CameraThread$4;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$200(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ab;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 397
    if-eqz v0, :cond_1

    .line 398
    iget-object v1, p0, Lcom/htc/camera/CameraThread$4;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mProcessingDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/CameraThread;->access$100(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread$4;->this$0:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/CameraThread;->mProcessingDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$102(Lcom/htc/camera/CameraThread;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 403
    :cond_0
    return-void

    .line 400
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "handleCommonJpegCallback() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
