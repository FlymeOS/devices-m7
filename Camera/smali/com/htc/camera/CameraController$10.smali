.class Lcom/htc/camera/CameraController$10;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;

.field final synthetic val$jpeg:Lcom/htc/camera/k;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;Lcom/htc/camera/k;)V
    .locals 0

    .prologue
    .line 3402
    iput-object p1, p0, Lcom/htc/camera/CameraController$10;->this$0:Lcom/htc/camera/CameraController;

    iput-object p2, p0, Lcom/htc/camera/CameraController$10;->val$jpeg:Lcom/htc/camera/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/htc/camera/CameraController$10;->val$jpeg:Lcom/htc/camera/k;

    iget-object v1, p0, Lcom/htc/camera/CameraController$10;->this$0:Lcom/htc/camera/CameraController;

    invoke-interface {v0, p1, v1}, Lcom/htc/camera/k;->onPictureTaken([BLcom/htc/camera/CameraController;)V

    .line 3407
    return-void
.end method
