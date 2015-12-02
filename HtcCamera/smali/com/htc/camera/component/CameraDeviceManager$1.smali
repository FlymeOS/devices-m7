.class Lcom/htc/camera/component/CameraDeviceManager$1;
.super Ljava/lang/Object;
.source "CameraDeviceManager.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraDeviceManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraDeviceManager;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/camera/component/CameraDeviceManager$1;->this$0:Lcom/htc/camera/component/CameraDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/component/CameraDeviceManager$1;->this$0:Lcom/htc/camera/component/CameraDeviceManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraDeviceManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInCameraDriver:Lcom/htc/camera/CameraThreadBlockReason;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->notifyCameraThreadBlocked(Lcom/htc/camera/CameraThreadBlockReason;)V

    .line 45
    return-void
.end method
