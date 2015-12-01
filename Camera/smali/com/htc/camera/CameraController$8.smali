.class Lcom/htc/camera/CameraController$8;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;

.field final synthetic val$shutter:Lcom/htc/camera/m;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;Lcom/htc/camera/m;)V
    .locals 0

    .prologue
    .line 3385
    iput-object p1, p0, Lcom/htc/camera/CameraController$8;->this$0:Lcom/htc/camera/CameraController;

    iput-object p2, p0, Lcom/htc/camera/CameraController$8;->val$shutter:Lcom/htc/camera/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/htc/camera/CameraController$8;->val$shutter:Lcom/htc/camera/m;

    invoke-interface {v0}, Lcom/htc/camera/m;->onShutter()V

    .line 3390
    return-void
.end method
