.class Lcom/htc/camera/CameraController$3;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 2953
    iput-object p1, p0, Lcom/htc/camera/CameraController$3;->this$0:Lcom/htc/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2957
    check-cast p7, Lcom/htc/camera/HTCCamera;

    sget-object v0, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInCameraDriver:Lcom/htc/camera/CameraThreadBlockReason;

    invoke-virtual {p7, v0}, Lcom/htc/camera/HTCCamera;->notifyCameraThreadBlocked(Lcom/htc/camera/CameraThreadBlockReason;)V

    .line 2958
    return-void
.end method
