.class Lcom/htc/camera/CameraThread$7;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/htc/camera/CameraThread$7;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/camera/CameraThread$7;->this$0:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/CameraThread;->handleCommonPostviewCallback([BLcom/htc/camera/CameraController;)V

    .line 539
    return-void
.end method
