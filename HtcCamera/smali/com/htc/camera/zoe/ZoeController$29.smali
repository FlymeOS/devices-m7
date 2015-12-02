.class Lcom/htc/camera/zoe/ZoeController$29;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 3128
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$29;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController$29;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 3133
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$29;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$29;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v1}, Lcom/htc/camera/zoe/ZoeController;->access$4800(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->raiseShutterEvent(Lcom/htc/camera/CaptureHandle;)V

    .line 3134
    return-void
.end method
