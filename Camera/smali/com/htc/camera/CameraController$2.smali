.class Lcom/htc/camera/CameraController$2;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/htc/camera/CameraController$2;->this$0:Lcom/htc/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/htc/camera/CameraController$2;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mAutoFocusMoveCallback:Lcom/htc/camera/h;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$500(Lcom/htc/camera/CameraController;)Lcom/htc/camera/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/htc/camera/CameraController$2;->this$0:Lcom/htc/camera/CameraController;

    # getter for: Lcom/htc/camera/CameraController;->mAutoFocusMoveCallback:Lcom/htc/camera/h;
    invoke-static {v0}, Lcom/htc/camera/CameraController;->access$500(Lcom/htc/camera/CameraController;)Lcom/htc/camera/h;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/CameraController$2;->this$0:Lcom/htc/camera/CameraController;

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/h;->onAutoFocusMoving(ZLcom/htc/camera/CameraController;)V

    .line 1610
    :cond_0
    return-void
.end method
