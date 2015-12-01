.class Lcom/htc/camera/CameraThread$8;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/m;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/htc/camera/CameraThread$8;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/camera/CameraThread$8;->this$0:Lcom/htc/camera/CameraThread;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/CameraThread;->mIsShutterCallbackReceived:Z
    invoke-static {v0, v1}, Lcom/htc/camera/CameraThread;->access$602(Lcom/htc/camera/CameraThread;Z)Z

    .line 546
    iget-object v0, p0, Lcom/htc/camera/CameraThread$8;->this$0:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->handleCommonShutterCallback()V

    .line 547
    return-void
.end method
