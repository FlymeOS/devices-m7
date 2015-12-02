.class Lcom/htc/camera/component/HdrController$1;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/HdrController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/camera/component/HdrController$1;->this$0:Lcom/htc/camera/component/HdrController;

    iput-object p2, p0, Lcom/htc/camera/component/HdrController$1;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iput-object p3, p0, Lcom/htc/camera/component/HdrController$1;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$1;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$000(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPEG call-back timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$1;->this$0:Lcom/htc/camera/component/HdrController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/HdrController;->access$102(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;

    .line 279
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$1;->val$cameraThread:Lcom/htc/camera/CameraThread;

    const-string v1, "HDR JPEG"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$1;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$200(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/component/HdrUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$1;->this$0:Lcom/htc/camera/component/HdrController;

    iget-object v1, p0, Lcom/htc/camera/component/HdrController$1;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;
    invoke-static {v1}, Lcom/htc/camera/component/HdrController;->access$200(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/component/HdrUI;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/HdrController$1;->val$handle:Lcom/htc/camera/CaptureHandle;

    aput-object v4, v5, v3

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/HdrController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/HdrController$1;->this$0:Lcom/htc/camera/component/HdrController;

    # getter for: Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/HdrController;->access$300(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PHOTO_PROCESSED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
