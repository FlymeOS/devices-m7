.class Lcom/htc/camera/CameraController$11;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 3477
    iput-object p1, p0, Lcom/htc/camera/CameraController$11;->this$0:Lcom/htc/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/htc/camera/CameraController$11;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$1100(Lcom/htc/camera/CameraController;)Lcom/htc/camera/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3483
    iget-object v0, p0, Lcom/htc/camera/CameraController$11;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$1100(Lcom/htc/camera/CameraController;)Lcom/htc/camera/g;

    move-result-object v0

    .line 3484
    iget-object v1, p0, Lcom/htc/camera/CameraController$11;->this$0:Lcom/htc/camera/CameraController;

    const/4 v2, 0x0

    # setter for: Lcom/htc/camera/CameraController;->mAutoFocusCallback:Lcom/htc/camera/g;
    invoke-static {v1, v2}, Lcom/htc/camera/CameraController;->access$1102(Lcom/htc/camera/CameraController;Lcom/htc/camera/g;)Lcom/htc/camera/g;

    .line 3485
    iget-object v1, p0, Lcom/htc/camera/CameraController$11;->this$0:Lcom/htc/camera/CameraController;

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/g;->onAutoFocus(ZLcom/htc/camera/CameraController;)V

    .line 3487
    :cond_0
    return-void
.end method
