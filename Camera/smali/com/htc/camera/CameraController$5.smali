.class Lcom/htc/camera/CameraController$5;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 3300
    iput-object p1, p0, Lcom/htc/camera/CameraController$5;->this$0:Lcom/htc/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/htc/camera/CameraController$5;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mCallbackBuffers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$700(Lcom/htc/camera/CameraController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3305
    iget-object v0, p0, Lcom/htc/camera/CameraController$5;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$800(Lcom/htc/camera/CameraController;)Lcom/htc/camera/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3306
    iget-object v0, p0, Lcom/htc/camera/CameraController$5;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mPreviewCallback:Lcom/htc/camera/l;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$800(Lcom/htc/camera/CameraController;)Lcom/htc/camera/l;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$5;->this$0:Lcom/htc/camera/CameraController;

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/l;->onPreviewFrame([BLcom/htc/camera/CameraController;)V

    .line 3307
    :cond_0
    return-void
.end method
