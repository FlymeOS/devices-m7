.class Lcom/htc/camera/CameraThread$15;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/htc/camera/CameraThread$15;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p2, p0, Lcom/htc/camera/CameraThread$15;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/htc/camera/CameraThread$15;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$15;->val$handle:Lcom/htc/camera/CaptureHandle;

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/CameraThread;->startVideoRecordingInternal(Lcom/htc/camera/CaptureHandle;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraThread;->access$1000(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Z)V

    .line 2140
    return-void
.end method
