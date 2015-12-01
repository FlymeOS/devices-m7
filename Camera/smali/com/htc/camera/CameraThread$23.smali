.class Lcom/htc/camera/CameraThread$23;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/l;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 4765
    iput-object p1, p0, Lcom/htc/camera/CameraThread$23;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/htc/camera/CameraController;)V
    .locals 1

    .prologue
    .line 4768
    if-nez p1, :cond_0

    .line 4771
    :goto_0
    return-void

    .line 4770
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread$23;->this$0:Lcom/htc/camera/CameraThread;

    # invokes: Lcom/htc/camera/CameraThread;->onOneShotPreviewFrameReceived([B)V
    invoke-static {v0, p1}, Lcom/htc/camera/CameraThread;->access$3000(Lcom/htc/camera/CameraThread;[B)V

    goto :goto_0
.end method
