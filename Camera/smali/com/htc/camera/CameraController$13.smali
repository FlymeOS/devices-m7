.class Lcom/htc/camera/CameraController$13;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 3589
    iput-object p1, p0, Lcom/htc/camera/CameraController$13;->this$0:Lcom/htc/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/htc/camera/CameraController$13;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mErrorCallback:Lcom/htc/camera/i;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$1300(Lcom/htc/camera/CameraController;)Lcom/htc/camera/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3594
    iget-object v0, p0, Lcom/htc/camera/CameraController$13;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mErrorCallback:Lcom/htc/camera/i;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$1300(Lcom/htc/camera/CameraController;)Lcom/htc/camera/i;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$13;->this$0:Lcom/htc/camera/CameraController;

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/i;->onError(ILcom/htc/camera/CameraController;)V

    .line 3595
    :cond_0
    return-void
.end method
